# Vyges overlays — ibex

Same-name overrides that mask an upstream file at vendor time.
Declared in `vyges-metadata.json → vyges_overlays[]` with a
`replaces:` path and `reason:` string.

Upstream-sync policy: pulls proceed normally; any upstream change
to a path listed under `vyges_overlays[].replaces` is flagged for
human review (upstream may have fixed the original issue, making
the overlay obsolete).

## Files

| File | Replaces | Reason |
|---|---|---|
| `dv_fcov_macros.svh` | `rtl/dv_fcov_macros.svh` | Upstream ibex `ibex_core.sv` includes `dv_fcov_macros.svh` which is part of the OpenTitan DV harness, not shipped with bare ibex. This stub expands the two DV macros (`DV_FCOV_SIGNAL`, `DV_FCOV_SIGNAL_GEN_IF`) to empty so synthesis and non-DV simulation compile cleanly. |
