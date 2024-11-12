library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; -- Uso do numeric_std para compatibilidade adequada

entity tb_processador is
end entity;

architecture sim of tb_processador is
    -- Sinais para o testbench
    signal clock    : std_logic := '0';
    signal reset    : std_logic := '0';
    signal R0_out   : std_logic_vector(7 downto 0);
    signal R1_out   : std_logic_vector(7 downto 0);

    -- Instância do processador
    component processador
        port(
            clock   : in std_logic;
            reset   : in std_logic;
            R0_out  : out std_logic_vector(7 downto 0);
            R1_out  : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    -- Instanciação do processador
    uut: processador
        port map (
            clock   => clock,
            reset   => reset,
            R0_out  => R0_out,
            R1_out  => R1_out
        );

    -- Geração do clock: alterna a cada 10 ns
    clock_process : process
    begin
        while true loop
            clock <= '0';
            wait for 10 ns;
            clock <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Processo de teste
    stimulus: process
    begin
        -- Aplica reset
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        -- Testa algumas instruções de exemplo, esperando alguns ciclos de clock entre elas
        wait for 40 ns;  -- Deixe o processador executar as instruções iniciais

        -- Exibe o valor dos registradores de saída após a execução de instruções
        wait for 80 ns; -- Tempo extra para verificar operações

        -- Teste de carregamento de dados e operações aritméticas
        wait for 100 ns;  -- Aguarda para observar as operações LOAD e ADD
        report "R0_out: " & integer'image(to_integer(unsigned(R0_out))) & 
               ", R1_out: " & integer'image(to_integer(unsigned(R1_out)));

        -- Fim da simulação
        wait;
    end process;
end architecture;
