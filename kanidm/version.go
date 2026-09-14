package kanidm

// SchemaVersion records the OpenAPI schema version this client was generated
// from. The CI workflow updates this constant automatically via sed whenever
// the schema is regenerated; do not edit it by hand.
//
// At startup, callers may optionally verify this matches the live server:
//
//	if err := client.CheckSchemaVersion(ctx); err != nil {
//	    log.Warn("schema drift detected", "err", err)
//	}
const SchemaVersion = "1.11.2"
