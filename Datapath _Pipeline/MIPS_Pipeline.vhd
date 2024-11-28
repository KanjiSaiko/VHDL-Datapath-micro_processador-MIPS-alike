library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MIPS_Pipeline is
	port (
		clock	    : in std_logic;
		reset	    : in std_logic;
        R0_out      : out std_logic_vector(7 downto 0);
        R1_out      : out std_logic_vector(7 downto 0)
		);
end MIPS_Pipeline;

architecture behavior of MIPS_Pipeline is

    signal PC	: std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    type mem_dados is array (integer range 0 to 255) of std_logic_vector(7 downto 0);
    type mem_instruc is array (integer range 0 to 255) of std_logic_vector(15 downto 0);
    type banco_regs is array (integer range 0 to 15) of std_logic_vector(7 downto 0);

    signal mem_i    	        : mem_instruc:= ( --Memória de Instruções, com 256 posições de 16 bits cada.
        0 => "0110000000010111", -- BNE R0 != R1 
        1 => "0000000000000001", -- LDA endereço 1 para R0 (Valor 1)
        2 => "0000000100000010", -- LDA endereço 2 para R1 (Valor 3)
        3 => "0001001000000001", -- ADD R0 + R1 -> R2 => (Valor 4)
        4 => "0111001000000001", -- STA R2 no endereço 1 (Valor 4)
        --5 => "0011001100100001", -- MUL R1 * R2 no R3 (Valor 12)
        5 => "1000001100100011", -- MUI R1 * R2 no R3 (Valor 12)
        6 => "0110001000010010", -- BEQ R2 - R0 -> R2 (ENDEREÇO 8)
        7 => "0111001100000010", -- STA R3 no endereço 2 (Valor 12)
        --8 => "0010001000100000", -- SUB R2 - R0 -> R2 (Valor 3)
        8 => "1011001000100001", -- SUI R2 - R0 -> R2 (Valor 3)
        9 => "0111001000000011", -- STA R2 no endereço 3 (Valor 3)
       10 => "1001010000101111", -- ADDI R2 + IMM -> R4 (Valor 18)
        others => (others => '1') -- Demais posiçõe zeradas
    );

    signal mem_d	            : mem_dados := ( --Memória de Dados, com 256 posições de 8 bits cada.
        0 => "00000000",
        1 => "00000001", --1
        2 => "00000011", --3
        others => (others => '0') -- Demais posições zeradas
    ); 

    signal regs                 : banco_regs := (others => (others => '0')); --Banco com 16 Registradores
    signal desvio	            : std_logic; --Controle para indicar se deve ocorrer um salto (branch).
    signal CalcdesvioID_EX      : std_logic_vector(7 downto 0); --Saída da ULA que executa operações aritméticas.
    signal ulaEX_MEM, ulaMEM_WB : std_logic_vector(15 downto 0); --Saída da ULA que executa operações aritméticas.
    signal equal	            : std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
    signal enable_reg_out	    : std_logic; --Habilita a gravação de valores em registradores.
    signal R0ID_EX, R0EX_MEM    : std_logic_vector(7 downto 0);
    signal R1ID_EX, R1EX_MEM    : std_logic_vector(7 downto 0);
    signal PCIF_ID, PCID_EX     : std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    signal InIF_ID, InIF_EX, InEX_MEM, InMEM_WB : : std_logic_vector(15 downto 0); --Instrução Atual





begin 
    
    R0 <= regs(conv_integer(mem_i(conv_integer(PC))(7 downto 4)));

    R1 <= regs(conv_integer(mem_i(conv_integer(PC))(3 downto 0)));
    R1i <= (("0000") & mem_i(conv_integer(PC))(3 downto 0));

            --Verifica se R0 e R1 têm valores iguais.
            equal <= '1' when (R0 = R1) else
                '0';

            --Indica se um salto deve ocorrer. Fazer Bolhas
            desvio <= '1' when (mem_i(conv_integer(PC))(15 downto 12) = "0100" and equal = '0') or (mem_i(conv_integer(PC))(15 downto 12) = "0101" and equal = '1') or (mem_i(conv_integer(PC))(15 downto 12) = "0110" and equal = '0') else
                '0';
    
    ula <= R0 * R1;
    ulai <= R0 * R1i;

    R0_out <= R0;
    R1_out <= R1;

    process(reset, clock)
        begin
            if (reset = '1') then   --Se reset está ativo (1), ele zera tudo
                regs    <= (others => (others => '0'));
                PC      <= (others => '0');

            elsif (clock = '1' and clock'event) then

                







                -- Decodificação e execução
                case mem_i(conv_integer(PC))(15 downto 12) is
                    when "0000" => -- LOAD
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= mem_d(conv_integer(mem_i(conv_integer(PC))(7 downto 0)));
                    when "1010" => -- LOAD-I
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= mem_i(conv_integer(PC))(7 downto 0);
                    
                    when "0111" => -- STORE
                        mem_d(conv_integer(mem_i(conv_integer(PC))(7 downto 0))) <= regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8)));
                    
                    when "0001" => -- ADD
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= R0 + R1;

                    when "0010" => -- SUB
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= R0 - R1;
                    
                    when "1011" => -- SUI
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= R0 - mem_i(conv_integer(PC))(3 downto 0);

                    when "0011" => -- MULT
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= ula(7 downto 0);
                
                    when "1000" => -- MUI
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= ulai(7 downto 0);

                    when "1001" => -- ADDI
                        regs(conv_integer(mem_i(conv_integer(PC))(11 downto 8))) <= R0 + mem_i(conv_integer(PC))(3 downto 0);

                    when others =>
                        
                    end case;

                if (desvio = '0') then --Se não houver desvio.
                    PC <= PC + 1;

                else --Caso contrário, ele pula para o endereço indicado. --JUMP, BEQ OU BQE
                    if (mem_i(conv_integer(PC))(15 downto 12) = "0110" or mem_i(conv_integer(PC))(15 downto 12) = "0101") then
                        
                        PC <= PC + mem_i(conv_integer(PC))(2 downto 0);
                    
                    elsif (mem_i(conv_integer(PC))(15 downto 12) = "0100") then
                        
                        PC <= mem_i(conv_integer(PC))(7 downto 0);

                    end if;
                end if;
            end if;
    end process;

end behavior;