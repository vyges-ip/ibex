// dv_fcov_macros.svh — Stub for Ibex DV functional coverage macros
// OpenTitan's DV harness provides the real versions; this stub makes ibex_core.sv
// compile without the full DV infrastructure.
// Reference: https://github.com/lowRISC/opentitan/blob/master/hw/dv/sv/dv_utils/dv_fcov_macros.svh

`ifndef DV_FCOV_MACROS_SVH
`define DV_FCOV_MACROS_SVH

// DV_FCOV_SIGNAL(type, name, expr)
// In synthesis/non-DV sim, expand to nothing — avoids duplicate declarations
// when the signal already exists in the surrounding scope.
`define DV_FCOV_SIGNAL(type, name, expr)

// DV_FCOV_SIGNAL_GEN_IF(type, name, path, guard) — expand to nothing.
`define DV_FCOV_SIGNAL_GEN_IF(type, name, path, guard)

`endif // DV_FCOV_MACROS_SVH
