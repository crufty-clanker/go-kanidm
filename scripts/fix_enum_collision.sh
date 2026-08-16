#!/usr/bin/env bash
# fix_enum_collision.sh — Resolve enum constant name collisions in generated Go code.
#
# The OpenAPI generator names enum constants from raw values
# ("readonly" → READONLY).  When two models share enum values the
# constant names collide at the package level.
#
# This script:
#   1. Scans every model_*.go file in $1 for enum constant blocks.
#   2. Collects all constant names across files.
#   3. For any name that appears in more than one file, prefixes the
#      constant with the first 3 chars of the struct's PascalCase name
#      (one letter per word), uppercased, followed by "_".
#
# Example:
#   ApiTokenPurpose  → words [Api, Token, Purpose] → prefix "ATP"
#   UatPurposeStatus → words [Uat, Purpose, Status] → prefix "UPS"
#
# Usage: fix_enum_collision.sh <generated_dir>

set -euo pipefail

DIR="${1:?Usage: fix_enum_collision.sh <generated_dir>}"

if [[ ! -d "$DIR" ]]; then
  echo "ERROR: directory not found: $DIR" >&2
  exit 1
fi

# ── Step 1: collect constant names per file ────────────────────────────
# For each model_*.go file we extract:
#   - the struct type name (e.g. ApiTokenPurpose)
#   - the list of constant names defined in its const block

declare -A NAME_TO_FILES  # constant_name → space-separated list of files
declare -A FILE_TO_TYPE   # file → struct type name
declare -A FILE_TO_CONSTS # file → space-separated list of constant names

for f in "$DIR"/model_*.go; do
  [[ -f "$f" ]] || continue

  # Extract struct type name: first "type X string" line
  type_name=$(grep -m1 '^type [A-Z]' "$f" | awk '{print $2}')
  [[ -n "$type_name" ]] || continue

  # Extract constant names from the const ( ... ) block
  consts=()
  in_const=0
  while IFS= read -r line; do
    if [[ "$line" =~ ^const[[:space:]]*\([[:space:]]*$ ]]; then
      in_const=1
      continue
    fi
    if [[ $in_const -eq 1 && "$line" =~ ^\) ]]; then
      break
    fi
    if [[ $in_const -eq 1 && "$line" =~ ^[[:space:]]+[A-Z][A-Z0-9_]*[[:space:]] ]]; then
      name=$(echo "$line" | awk '{print $1}')
      consts+=("$name")
    fi
  done < "$f"

  [[ ${#consts[@]} -gt 0 ]] || continue

  FILE_TO_TYPE["$f"]="$type_name"
  FILE_TO_CONSTS["$f"]="${consts[*]}"

  for name in "${consts[@]}"; do
    if [[ -v NAME_TO_FILES["$name"] ]]; then
      NAME_TO_FILES["$name"]="${NAME_TO_FILES[$name]} $f"
    else
      NAME_TO_FILES["$name"]="$f"
    fi
  done
done

# ── Step 2: identify colliding names ───────────────────────────────────
declare -A COLLIDING  # constant_name → 1 if it collides
collision_count=0

for name in "${!NAME_TO_FILES[@]}"; do
  files="${NAME_TO_FILES[$name]}"
  # Count unique files
  unique_files=$(echo "$files" | tr ' ' '\n' | sort -u | wc -l)
  if [[ $unique_files -gt 1 ]]; then
    COLLIDING["$name"]=1
    collision_count=$((collision_count + 1))
  fi
done

if [[ $collision_count -eq 0 ]]; then
  echo "No enum constant collisions found."
  exit 0
fi

echo "Found ${collision_count} colliding constant name(s):"
for name in "${!COLLIDING[@]}"; do
  echo "  - $name (in: ${NAME_TO_FILES[$name]})"
done
echo ""

# ── Step 3: compute prefix for a type name ─────────────────────────────
# Splits PascalCase into words and takes the first letter of each.
#   ApiTokenPurpose  → A T P → "ATP"
#   UatPurposeStatus → U P S → "UPS"
#   HTTPResponse     → H T R → "HTR"
compute_prefix() {
  local type_name="$1"
  local prefix=""
  # Insert a space before each uppercase letter that follows a lowercase letter
  # (e.g. "ApiTokenPurpose" → "Api Token Purpose")
  local spaced
  spaced=$(echo "$type_name" | sed 's/\([a-z]\)\([A-Z]\)/\1 \2/g')
  # Take first letter of each word
  for word in $spaced; do
    prefix+="${word:0:1}"
  done
  echo "${prefix^^}"  # uppercase
}

# ── Step 4: rename colliding constants in each file ────────────────────
# We process each file that contains a colliding constant. For each
# colliding name in that file we prepend the type-prefix.

# Build a set of files that need changes
declare -A FILES_TO_FIX

for name in "${!COLLIDING[@]}"; do
  for f in ${NAME_TO_FILES[$name]}; do
    FILES_TO_FIX["$f"]=1
  done
done

for f in "${!FILES_TO_FIX[@]}"; do
  type_name="${FILE_TO_TYPE[$f]}"
  prefix=$(compute_prefix "$type_name")

  # Collect the colliding constant names that appear in this file
  colliding_in_file=()
  for name in "${!COLLIDING[@]}"; do
    if [[ " ${FILE_TO_CONSTS[$f]} " == *" $name "* ]]; then
      colliding_in_file+=("$name")
    fi
  done

  [[ ${#colliding_in_file[@]} -gt 0 ]] || continue

  echo "Fixing $f: prefix constants with '$prefix'"

  # Build a sed script to rename constants
  # We must be careful to only rename the constant declarations, not
  # string values or type references.
  sed_script=""
  for name in "${colliding_in_file[@]}"; do
    new_name="${prefix}_${name}"
    # Match the constant declaration line: leading whitespace, constant name,
    # followed by whitespace and the type name.
    # We use a capture group for the type to preserve it.
    sed_script+="s/^\\([[:space:]]\\+\\)${name}\\([[:space:]]\\+\\([A-Za-z][A-Za-z0-9]*\\)\\)/\\1${new_name}\\2/; "
  done

  # Apply the sed in-place
  sed -i.bak "${sed_script}" "$f"
  rm -f "${f}.bak"
done

echo ""
echo "Done. Enum constant collisions resolved."
