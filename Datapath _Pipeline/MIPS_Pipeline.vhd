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
        0 => "0101000000011000", -- BEQ R0 != R1 pula para inst 8
        --0 => "0100000000000101", -- JMP para endereço 5
        1 => "0000000000000001", -- LDA endereço 1 para R0 (Valor 1)
        2 => "0000000100000010", -- LDA endereço 2 para R1 (Valor 3)
        3 => "1111111111111111", -- Bolha artificial
        4 => "1111111111111111", -- Bolha artificial
        5 => "0001001000000001", -- ADD R0 + R1 -> R2 => (Valor 4) // hazard de dependência de dados!!
        6 => "1111111111111111", -- Bolha artificial
        7 => "1111111111111111", -- Bolha artificial
        --8 => "0011001100100001", -- MUL R1 * R2 no R3 (Valor 12)
        8 => "1000001100100011", -- MUI R1 * R2 no R3 (Valor 12)
        9 => "0111001000000001", -- STA R2 no endereço 1 (Valor 4)
        10 => "0110001000010010", -- BEQ R2 - R0 -> R2 (ENDEREÇO 8)
        11 => "0111001100000010", -- STA R3 no endereço 2 (Valor 12)
        --12 => "0010001000100000", -- SUB R2 - R0 -> R2 (Valor 3)
        12 => "1011001000100001", -- SUI R2 - R0 -> R2 (Valor 3)
        13 => "1111111111111111", -- Bolha artificial
        14 => "1111111111111111", -- Bolha artificial
        15 => "0111001000000011", -- STA R2 no endereço 3 (Valor 3)
        16 => "1001010000101111", -- ADDI R2 + IMM -> R4 (Valor 18)
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
    signal multiplicacao, multiplicai               : std_logic_vector(15 downto 0); --Saída da ULA que executa operações aritméticas.
    signal ulaEX_MEM                                : std_logic_vector(7 downto 0); --Saída da ULA que executa operações aritméticas.
    signal equal	                                : std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
    signal R0ID_EX                                  : std_logic_vector(7 downto 0);
    signal R1ID_EX                                  : std_logic_vector(7 downto 0);
    signal RwID_EX, RwEX_MEM, RwMEM_WB              : std_logic_vector(7 downto 0); --registrador a ser escrito
    signal PCIF_ID, PCID_EX, PCEX_MEM, PCMEM_WB     : std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    signal InIF_ID, InID_EX, InEX_MEM, InMEM_WB     : std_logic_vector(15 downto 0); --Instrução Atual


begin 
            --Verifica se R0 e R1 têm valores iguais.
            equal <= '1' when (R0ID_EX = RwEX_MEM) else
                '0';

            --Indica se um salto deve ocorrer. Fazer Bolhas
            desvio <= '1' when (InEX_MEM(15 downto 12) = "0110" and equal = '0') or (InEX_MEM(15 downto 12) = "0101" and equal = '1') else
                '0';

            multiplicai <= R0ID_EX * (("0000") & InEX_MEM(3 downto 0));
            multiplicacao <= R0ID_EX * R1ID_EX;
            R0_out <= R0ID_EX;
            R1_out <= R1ID_EX;

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

                R0ID_EX  <= (others => '0');
                R1ID_EX  <= (others => '0');
                RwID_EX  <= (others => '0');
                RwEX_MEM  <= (others => '0');
                RwMEM_WB  <= (others => '0');

            elsif (clock = '1' and clock'event) then
                --IF_ID
                InIF_ID <= mem_i(conv_integer(PC))(15 downto 0);
                InID_EX <= InIF_ID;

                InEX_MEM <= InID_EX;
                InMEM_WB <= InEX_MEM;

                PCIF_ID <= PC;
                PCID_EX <= PCIF_ID;
                PCEX_MEM <= PCID_EX;
                PCMEM_WB <= PCEX_MEM;

                if (desvio = '1') then

                    if (InEX_MEM(15 downto 12) = "0101" or InEX_MEM(15 downto 12) = "0110") then
                        PC <= PCEX_MEM + InEX_MEM(3 downto 0); -- BEQ/BNE
                    end if;

                elsif (InEX_MEM(15 downto 12) = "0100") then
                    PC <= InEX_MEM(7 downto 0); -- JMP    

                else
                    PC <= PC + 1;
                    
                end if;

                --ID_EX
                if(InID_EX(15 downto 12) = "0100") then --jump

                elsif(InID_EX(15 downto 12) = "0001" or InID_EX(15 downto 12) = "0010" or InID_EX(15 downto 12) = "0011") then
                    --R
                    R0ID_EX <= regs(conv_integer(InID_EX(7 downto 4)));
                    R1ID_EX <= regs(conv_integer(InID_EX(3 downto 0)));

                else --Imediatos e BEQ/BNE
                    R0ID_EX <= regs(conv_integer(InID_EX(7 downto 4)));
                    RwID_EX <= regs(conv_integer(InID_EX(11 downto 8)));
                
                end if;

                --EX_MEM
                if(desvio = '1') then
                    R0ID_EX <= (others => '0');
                    R1ID_EX <= (others => '0');
                    InIF_ID <= (others => '1');
                    InID_EX <= (others => '1');
                    InEX_MEM <= (others => '1');
                 
                else
                    RwEX_MEM <= RwID_EX;
                    case InEX_MEM(15 downto 12) is
                        when "0001" => -- ADD
                            ulaEX_MEM <= R0ID_EX + R1ID_EX;

                        when "0010" => -- SUB
                            ulaEX_MEM <= R0ID_EX - R1ID_EX;

                        when "0011" => -- MULT
                            ulaEX_MEM <= multiplicacao(7 downto 0);
                            
                        when "1001" => -- ADDI
                            ulaEX_MEM <= R0ID_EX + InEX_MEM(3 downto 0);

                        when "1011" => -- SUI
                            ulaEX_MEM <= R0ID_EX - InEX_MEM(3 downto 0);
                    
                        when "1000" => -- MUI
                            ulaEX_MEM <= multiplicai(7 downto 0);

                        when others =>
                            
                        end case;
                end if;

                --MEM_WB
                if(InMEM_WB(15 downto 12) = "0111") then --STORE
                    mem_d(conv_integer(InMEM_WB(7 downto 0))) <= RwEX_MEM;

                elsif(InMEM_WB(15 downto 12) = "0000") then -- LOAD
                    regs(conv_integer(InMEM_WB(11 downto 8))) <= mem_d(conv_integer(InMEM_WB(7 downto 0)));

                elsif(InMEM_WB(15 downto 12) = "0000") then -- LOAD-I
                    regs(conv_integer(InMEM_WB(11 downto 8))) <= InMEM_WB(7 downto 0);

                else --TIPO R e I
                    regs(conv_integer(InMEM_WB(11 downto 8))) <= ulaEX_MEM;

                end if;

            end if;
    end process;

end behavior;