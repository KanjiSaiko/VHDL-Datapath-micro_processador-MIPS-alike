-- Libraries definitions
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_processador_MIPS is
end entity;

architecture behaviour of tb_processador_MIPS is

    -- Componente a ser validado
    component processador_MIPS is
        port(
            clock       : in std_logic;
            reset       : in std_logic;
            R0_out      : out std_logic_vector(7 downto 0);
            R1_out      : out std_logic_vector(7 downto 0);
            Regs_out    : out std_logic_vector(7 downto 0)
        );
    end component;

    -- Sinais para o testbench
    signal reset_sg       : std_logic := '1';  -- Sinal de reset
    signal clock_sg       : std_logic := '0';  -- Sinal de clock
    signal R0_out_sg      : std_logic_vector(7 downto 0); -- Saída R0
    signal R1_out_sg      : std_logic_vector(7 downto 0); -- Saída R1
    signal Regs_out_sg    : std_logic_vector(7 downto 0); -- Saída R1

begin
    -- Instanciação do componente processador_MIPS
    inst_processador_MIPS : processador_MIPS
        port map (
            clock     => clock_sg,
            reset     => reset_sg,
            R0_out    => R0_out_sg,
            R1_out    => R1_out_sg,
            Regs_out  => Regs_out_sg
        );

    -- Geração do clock
    clock_sg <= not clock_sg after 5 ns;

    -- Processo para simulação
    process
    begin
        -- Inicializa reset
        wait for 2 ns;
        reset_sg <= '0';  -- Desativa o reset

        -- Teste 1: Carrega instruções e verifica saídas
        wait for 8 ns;
        -- Nesse instante, verificações podem ser realizadas nos valores de R0_out e R1_out
        -- Para observar os valores esperados conforme a lógica da ULA e as operações carregadas na memória de instruções.

        -- Teste 2: Altera o estado das memórias de entrada e verifica comportamento do pipeline
        wait for 10 ns;

        -- Teste 3: Teste adicional para operações aritméticas
        wait for 10 ns;

        -- Fim do teste
        wait;
    end process;

end behaviour;
