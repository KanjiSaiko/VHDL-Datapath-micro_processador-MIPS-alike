library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MIPS is
	port (
		clock	    : in std_logic;
		reset	    : in std_logic;
        R0_out      : out std_logic_vector(7 downto 0);
        R1_out      : out std_logic_vector(7 downto 0)
		);
end MIPS;

architecture behavior of MIPS is

    signal PC	: std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    type mem_dados is array (integer range 0 to 255) of std_logic_vector(7 downto 0);
    type mem_instruc is array (integer range 0 to 255) of std_logic_vector(15 downto 0);
    type banco_regs is array (integer range 0 to 15) of std_logic_vector(7 downto 0);

    signal mem_i    	        : mem_instruc:= ( --Memória de Instruções, com 256 posições de 16 bits cada.
        0  => "0110000000001010", -- BNE R0 != R1 FALSO
        1  => "0000000000000001", -- LDA endereço 1 para R0 (Valor 1)
        2  => "0000000100000010", -- LDA endereço 2 para R1 (Valor 3)
        3  => "1010100000000111", -- LWI Valor 7 no registrador 8
        4  => "0101000000011111", -- BEQ R0 = R1 VAI DAR FALSO
        5  => "0001001000000001", -- ADD R0 + R1 -> R2 => (Valor 4) // hazard de dependência de dados!!
        6  => "1001001100100101", -- ADDI R2 + 5 -> R3 => (Valor 9)
        7  => "0011010000100011", -- MUL R3 * R2 no R4 (Valor 36)
        8  => "1000010100010101", -- MUI R1 * 5 no R5 (Valor 15)
        9 =>  "0111001000000100", -- STA R2 no endereço 4 (Valor 4)
        10 => "0110001000010010", -- BNE R2 != R1 SALTO PC+3 => PC 21
        11 => "0111001100000101", -- STA R3 no endereço 5 (Valor 9)
        12 => "0011100000100011", -- MUL R3 * R2 no R8 (Valor 36)
        13 => "1000101000010101", -- MUI R1 * 5 no R10 (Valor 15)
        14 => "0010011000110010", -- SUB R3 - R2 -> R6 (Valor 5)
        15 => "1011011100100001", -- SUI R2 - 1 -> R7 (Valor 3)
        16 => "0111010000000100", -- STA R4 no endereço 4 (Valor 36)
        17 => "0100000000000001", -- JMP para endereço 1
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
    signal ula		            : std_logic_vector(15 downto 0); --Saída da ULA que executa operações aritméticas.
    signal ulai		            : std_logic_vector(15 downto 0); --Saída da ULA que executa operações aritméticas.
    signal equal	            : std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
    signal R0, R1, R1i          : std_logic_vector(7 downto 0);
begin 
    
    R0 <= regs(conv_integer(mem_i(conv_integer(PC))(7 downto 4)));

    R1 <= regs(conv_integer(mem_i(conv_integer(PC))(3 downto 0)));
    R1i <= (("0000") & mem_i(conv_integer(PC))(3 downto 0));


    --Verifica se R0 e R1 têm valores iguais.
    equal <= '1' when (R0 = R1) else
        '0';

    --Indica se um salto deve ocorrer.
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