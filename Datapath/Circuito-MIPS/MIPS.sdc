# Clock constraints
create_clock -name clock -period 9.61 [get_ports clock]

# Definir atrasos de entrada (input delay) para sinais chegando ao FPGA
set_input_delay -clock clock 2.5 [get_ports reset]

# Definir atrasos de saída (output delay) para sinais saindo do FPGA
set_output_delay -clock clock 3.0 [get_ports {R0_out R1_out}]

# Derivar clocks gerados automaticamente a partir do clock base (se houver PLLs)
derive_pll_clocks -create_base_clocks

# Derivar incerteza de clock devido a jitter e outros efeitos
derive_clock_uncertainty

# (Opcional) Constrain paths relacionados ao reset ativo em 1
set_false_path -from [get_ports reset]
