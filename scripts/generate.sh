#!/usr/bin/env bash
# generate.sh — regenerates gen/kanidm/ from the OpenAPI schema.
#
# Usage:
#   bash scripts/generate.sh                      # uses committed schema
#   bash scripts/generate.sh path/to/schema.json  # uses a specific file
#
# After generation, the script removes the generated go.mod/go.sum so that
# the entire repository is managed as a single Go module.
set -euo pipefail

SCHEMA="${1:-schemas/kanidm-openapi.json}"
OUT_DIR="internal/api"

if [[ ! -f "${SCHEMA}" ]]; then
  echo "ERROR: schema file not found: ${SCHEMA}" >&2
  echo "Run: make schema KANIDM_URL=https://your-instance" >&2
  exit 1
fi

echo "==> Validating schema: ${SCHEMA}"
openapi-generator-cli validate -i "${SCHEMA}"

echo "==> Generating Go client into ${OUT_DIR}"
openapi-generator-cli generate \
  -i "${SCHEMA}" \
  -g go \
  -o "${OUT_DIR}" \
  -c .openapi-generator-config.yaml \
  --git-repo-id go-kanidm/internal --git-user-id slop-incubator \

# Remove generated module files — the root go.mod owns all dependencies.
rm -f "${OUT_DIR}/go.mod" "${OUT_DIR}/go.sum"

# ── Fix enum constant name collisions ──────────────────────────────────
# The Go OpenAPI generator names enum constants from the raw values
# (e.g. "readonly" → READONLY). When two models share values the
# constant names collide.  Detect collisions and prefix the constants
# with the first 3 chars of the struct name (PascalCase).
#
# Example:  ApiTokenPurpose  → prefix "ATP"  (Api Token Purpose)
#           UatPurposeStatus → prefix "UPS" (Uat Purpose Status)
#
# Only constants whose names already exist in another model file are
# renamed; unique constants are left untouched.

bash scripts/fix_enum_collision.sh "${OUT_DIR}"

echo "==> Generation complete."
echo "    Run: go build ./... to verify."
