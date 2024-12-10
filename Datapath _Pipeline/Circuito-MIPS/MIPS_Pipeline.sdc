#************************************************************
# THIS IS A WIZARD-GENERATED FILE.
#
# Version 13.0.0 Build 156 04/24/2013 SJ Web Edition
#
#************************************************************

# Clock constraints

create_clock -name "clock" -period 6.100ns [get_ports {clock}]

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty due to jitter and other effects.
derive_clock_uncertainty

# tsu/th constraints (setup and hold)
set_input_delay -clock [get_clocks {clock}] -max 3.0 [get_ports {reset}]
set_input_delay -clock [get_clocks {clock}] -min 1.0 [get_ports {reset}]

# tco constraints (output delay)
set_output_delay -clock [get_clocks {clock}] -max 2.0 [get_ports {R0_out}]
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {R0_out}]
set_output_delay -clock [get_clocks {clock}] -max 2.0 [get_ports {R1_out}]
set_output_delay -clock [get_clocks {clock}] -min 0.5 [get_ports {R1_out}]

# tpd constraints (internal path delay)
set_max_delay -from [get_ports {reset}] -to [get_ports {R0_out}] 8.0
set_max_delay -from [get_ports {reset}] -to [get_ports {R1_out}] 8.0

# Specify the I/O standard if needed (for FPGA-specific constraints)
# set_io_standard -standard "3.3-V LVTTL" [get_ports {clock reset R0_out R1_out}]

