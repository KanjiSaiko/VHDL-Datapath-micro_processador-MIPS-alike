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

    signal PC	                                    : std_logic_vector(7 downto 0); -- Contador de programa (Program Counter)
    signal regs                                     : banco_regs := (others => (others => '0')); --Banco com 16 Registradores
    signal desvio	                                : std_logic; --Controle para indicar se deve ocorrer um salto (branch).
    --signal CalcdesvioID_EX                          : std_logic_vector(7 downto 0); --Saída da ULA que executa operações aritméticas.
    signal ulaEX_MEM, ulaMEM_WB                     : std_logic_vector(15 downto 0); --Saída da ULA que executa operações aritméticas.
    signal equal	                                : std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
    signal R0ID_EX, R0EX_MEM                        : std_logic_vector(7 downto 0);
    signal R1ID_EX, R1EX_MEM                        : std_logic_vector(7 downto 0);
    signal RwID_EX, RwEX_MEM, RwMEM_WB              : std_logic_vector(7 downto 0); --registrador a ser escrito
    signal PCIF_ID, PCID_EX, PCEX_MEM, PCMEM_WB     : std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    signal InIF_ID, InID_EX, InEX_MEM, InMEM_WB     : std_logic_vector(15 downto 0); --Instrução Atual

begin 
            --Verifica se R0 e R1 têm valores iguais.
            equal <= '1' when (R0EX_MEM = RwEX_MEM) else
                '0';

            --Indica se um salto deve ocorrer. Fazer Bolhas
            desvio <= '1' when (InEX_MEM(15 downto 12) = "0110" and equal = '0') or (InEX_MEM(15 downto 12) = "0101" and equal = '1') else
                '0';

            R0_out <= R0EX_MEM;
            R1_out <= R1EX_MEM;

    process(reset, clock)
        begin
            if (reset = '1') then   --Se reset está ativo (1), ele zera tudo
                regs    <= (others => (others => '0'));
                PC      <= (others => '0');
                PCIF_ID <= (others => '0');
                PCID_EX <= (others => '0');
                PCEX_MEM <= (others => '0');
                PCMEM_WB <= (others => '0');

                InIF_ID   <= (others => '0');
                InID_EX   <= (others => '0');
                InEX_MEM  <= (others => '0');
                InMEM_WB  <= (others => '0');

                ulaEX_MEM <= (others => '0');
                ulaMEM_WB <= (others => '0');

                R0ID_EX   <= (others => '0');
                R1ID_EX   <= (others => '0');
                R0EX_MEM  <= (others => '0');
                R1EX_MEM  <= (others => '0');
                RwID_EX  <= (others => '0');
                RwEX_MEM  <= (others => '0');
                RwMEM_WB  <= (others => '0');

            elsif (clock = '1' and clock'event) then
                InIF_ID <= mem_i(conv_integer(PC))(15 downto 0);
                InID_EX <= InIF_ID;
                InEX_MEM <= InID_EX;
                InMEM_WB <= InEX_MEM;

                PCIF_ID <= PC;
                PCID_EX <= PCIF_ID;

                if (desvio = '1') then

                    if (InMEM_WB(15 downto 12) = "0101" or InMEM_WB(15 downto 12) = "0110") then
                        PC <= PC + InMEM_WB(3 downto 0); -- BEQ/BNE

                    elsif (InMEM_WB(15 downto 12) = "0100") then
                        PC <= InMEM_WB(7 downto 0); -- JMP

                    end if;

                else
                    PC <= PC + 1;
                    
                end if;
            end if;
    end process;

    --ID_EX
    process(InID_EX)
        begin
            if(InID_EX(15 downto 12) = "0100") then --jump

            elsif(InID_EX(15 downto 12) = "0001" or InID_EX(15 downto 12) = "0010" or InID_EX(15 downto 12) = "0011") then --R
                R0ID_EX <= regs(conv_integer(InID_EX(7 downto 4)));
                R1ID_EX <= regs(conv_integer(InID_EX(3 downto 0)));
                RwID_EX <= regs(conv_integer(InID_EX(11 downto 8)));

            else --Imediatos e BEQ/BNE
                R0ID_EX <= regs(conv_integer(InID_EX(7 downto 4)));
                RwID_EX <= regs(conv_integer(InID_EX(11 downto 8)));
            
            end if;
    end process;

    
    --EX_MEM
    process(InEX_MEM)
        variable temp_PC : std_logic_vector(7 downto 0);
        begin
            R0EX_MEM <= R0ID_EX;
            R1EX_MEM <= R1ID_EX;
            RwEX_MEM <= RwID_EX;
            temp_PC := PCID_EX;

            if(desvio = '1') then
                temp_PC := temp_PC + (("0000") & InEX_MEM(3 downto 0));
            
            else
                case InEX_MEM(15 downto 12) is
                    when "0001" => -- ADD
                        ulaEX_MEM <= (("00000000") & (R0EX_MEM + R1EX_MEM));

                    when "0010" => -- SUB
                        ulaEX_MEM <= (("00000000") & (R0EX_MEM - R1EX_MEM));

                    when "0011" => -- MULT
                        ulaEX_MEM <= R0EX_MEM * R1EX_MEM;
                        
                    when "1001" => -- ADDI
                        ulaEX_MEM <= (("00000000") & (R0EX_MEM + (("0000") & InEX_MEM(3 downto 0))));

                    when "1011" => -- SUI
                        ulaEX_MEM <= (("00000000") & (R0EX_MEM - (("0000") & InEX_MEM(3 downto 0))));    
                
                    when "1000" => -- MUI
                        ulaEX_MEM <= R0EX_MEM * (("0000") & InEX_MEM(3 downto 0));

                    when others =>
                        
                    end case;
            end if;
            PCEX_MEM <= temp_PC;
    end process;

    process(InMEM_WB)
        begin
            PCMEM_WB <= PCEX_MEM;
            RwMEM_WB <= RwEX_MEM;
            ulaMEM_WB <= ulaEX_MEM;

            if(InMEM_WB(15 downto 12) = "0111") then --STORE
                mem_d(conv_integer(InMEM_WB(7 downto 0))) <= RwMEM_WB;
            
            elsif(InMEM_WB(15 downto 12) = "0000") then -- LOAD
                regs(conv_integer(InMEM_WB(15 downto 12))) <= mem_d(conv_integer(InMEM_WB(7 downto 0)));

            elsif(InMEM_WB(15 downto 12) = "0000") then -- LOAD-I
                regs(conv_integer(InMEM_WB(15 downto 12))) <= InMEM_WB(7 downto 0);
            
            else --TIPO R
                regs(conv_integer(InMEM_WB(15 downto 12))) <= ulaMEM_WB(7 downto 0);

            end if;
        end process;
end behavior;