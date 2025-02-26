###################################################################

## timing contstraints
# 1000 MHz -> 1ns

create_clock [get_ports clk]  -period 1  
#ICC: lower uncertainty
set_clock_uncertainty 0.05  [get_clocks clk]

#ICC: propogated clock
set_propagated_clock [get_clocks clk]

set_clock_transition -rise 0.02 [get_clocks clk]
set_clock_transition -fall 0.02 [get_clocks clk]

set_input_delay -clock clk  0.4  [get_ports r]


set_output_delay -clock clk  0.4  [get_ports {out[7]}]
set_output_delay -clock clk  0.4  [get_ports {out[6]}]
set_output_delay -clock clk  0.4  [get_ports {out[5]}]
set_output_delay -clock clk  0.4  [get_ports {out[4]}]
set_output_delay -clock clk  0.4  [get_ports {out[3]}]
set_output_delay -clock clk  0.4  [get_ports {out[2]}]
set_output_delay -clock clk  0.4  [get_ports {out[1]}]
set_output_delay -clock clk  0.4  [get_ports {out[0]}]

set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X [get_ports clk]
set_driving_cell -lib_cell SAEDRVT14_FDPRBQ_V2_0P5 -pin Q [get_ports r]

set_load -pin_load 0.0004 [get_ports {out[7]}]
set_load -pin_load 0.0004 [get_ports {out[6]}]
set_load -pin_load 0.0004 [get_ports {out[5]}]
set_load -pin_load 0.0004 [get_ports {out[4]}]
set_load -pin_load 0.0004 [get_ports {out[3]}]
set_load -pin_load 0.0004 [get_ports {out[2]}]
set_load -pin_load 0.0004 [get_ports {out[1]}]
set_load -pin_load 0.0004 [get_ports {out[0]}]
