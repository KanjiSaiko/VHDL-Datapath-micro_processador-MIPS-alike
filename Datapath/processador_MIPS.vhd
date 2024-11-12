library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity processador is
	port (
		clock	: in std_logic;
		reset	: in std_logic;
		R0_out		: out std_logic_vector(7 downto 0);
		R1_out      : out std_logic_vector(7 downto 0)
		);
end processador;

architecture behavior of processador is

    signal PC	: std_logic_vector(7 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
    type mem_dados is array (integer range 0 to 255) of std_logic_vector(7 downto 0);
    type mem_instruc is array (integer range 0 to 255) of std_logic_vector(15 downto 0);
    type banco_regs is array (integer range 0 to 15) of std_logic_vector(7 downto 0);

    signal mem_i	        : mem_instruc; --Memória de Instruções, com 16 posições de 8 bits cada.
    signal mem_d	        : mem_dados; --Memória de Dados, com 16 posições de 8 bits cada.
    signal regs             : banco_regs; --Banco com 16 Registradores
    signal desvio	        : std_logic; --Controle para indicar se deve ocorrer um salto (branch).
    signal op_code	        : std_logic_vector(3 downto 0); --Código de operação das instruções.
    signal ula		        : std_logic_vector(7 downto 0); --Saída da ULA que executa operações aritméticas.
    signal equal	        : std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
    signal mult		        : std_logic_vector(15 downto 0);
    signal soma		        : std_logic_vector(7 downto 0);
    signal subt		        : std_logic_vector(7 downto 0);
    signal instrucao	    : std_logic_vector(15 downto 0); --PEGA A INSTRUÇÃO DA POSIÇÃO ATUAL
    signal enable_reg	    : std_logic; --Habilita a gravação de valores em registradores.
    signal R0, R1	        : std_logic_vector(7 downto 0);

begin --a memória de instruções é carregada com valores iniciais. Cada posição contém uma instrução.
    mem_i <= (others => (others => '0'));
    mem_i(0) <= "0000000000000001"; --LDA VALOR DO ENDEREÇO 1 AO REGISTRADOR 0
    mem_i(1) <= "0000000100000010"; --LDA VALOR DO ENDEREÇO 2 AO REGISTRADOR 1
    mem_i(2) <= "0011001000000001"; --ADD REG0 COM REG1 E COLOCA O VALOR EM R2


    mem_d <= (others => (others => '0'));
    mem_d(0) <= "00000000";
    mem_d(1) <= "00000001";
    mem_d(2) <= "00000011";

    --Recebe o conteúdo da posição de memória apontada pelo PC.
    instrucao <= mem_i(conv_integer(PC)); 

    --Define que os valores de R0 e R1 sejam exibidos nas saídas R0_out e R1_out
    R0 <= regs(conv_integer(instrucao(7 downto 4)));
    R1 <= regs(conv_integer(instrucao(11 downto 8)));

    R0_out <= R0;
    R1_out <= R1;

    --Extrai os três bits mais significativos da instrução (indica qual operação será executada).
    op_code <= instrucao(15 downto 12);

    --Habilita a gravação no registrador quando o op_code é uma operação de imediata ou aritmética.
    enable_reg	<= '1' when (op_code = "0000") or (op_code = "0001") or (op_code = "0010") or (op_code = "0011") else
        '0';

    --Verifica se R0 e R1 têm valores iguais.
    equal <= '1' when (R0 = R1) else
        '0';

    --Indica se um salto deve ocorrer.
    desvio <= '1' when (op_code = "0100" and equal = '1') or (op_code = "0101" and equal = '0') or (op_code = "0110") else
        '0';


    soma <= R0 + R1;
    subt <= R0 - R1;
    --mult <= std_logic_vector(unsigned(R0) * unsigned(R1));
    mult <= R0 * R1;

    process(reset, clock)
        begin
            if (reset = '1') then   --Se reset está ativo (1), ele zera tudo
                R0	 <= (others => '0');
                R1   <= (others => '0');
                PC   <= (others => '0');
                regs <= (others => (others => '0'));

            elsif (clock = '1' and clock'event) then
                        -- Determina os registradores acessados para atualizar as saídas R0_out e R1_out
                case op_code is
                    when "0000" =>  -- LOAD
                        R0_out <= mem_d(conv_integer(instrucao(7 downto 0)));
                        R1_out <= regs(conv_integer(instrucao(11 downto 8)));
                    when "0001" | "0010" | "0011" =>  -- Operações aritméticas ADD, SUB, MUL
                        R0_out <= regs(conv_integer(instrucao(11 downto 8)));
                        R1_out <= regs(conv_integer(instrucao(7 downto 4)));
                    when "0111" =>  -- STORE
                        R0_out <= regs(conv_integer(instrucao(11 downto 8)));
                        R1_out <= mem_d(conv_integer(instrucao(7 downto 0)));
                    when others =>
                        R0_out <= (others => '0');
                        R1_out <= (others => '0');
                end case;

                if (enable_reg = '1') then --Se enable_reg é 1, grava o resultado da ULA no registrador.
                    -- Seleciona a operação da ULA com base no op_code.
                    case op_code is
                        when "0000" => ula <= instrucao(7 downto 0);
                        when "0001" => ula <= soma;
                        when "0010" => ula <= subt;
                        when "0011" => ula <= mult(7 downto 0);
                        when others => ula <= (others => '0');  -- Valor padrão para instruções não definidas
                    end case;


                    regs(conv_integer(instrucao(11 downto 8))) <= ula;
                end if;

                --Lógica PC
                if (desvio = '0') then --Se não houver desvio.
                    PC <= PC + 1;

                    if (op_code = "0111") then --STORE ADDRESS
                        mem_d(conv_integer(instrucao(7 downto 0))) <= regs(conv_integer(instrucao(11 downto 8)));
                    
                    elsif(op_code = "0000") then --LOAD ADDRESS
                        regs(conv_integer(instrucao(11 downto 8))) <= mem_d(conv_integer(instrucao(7 downto 0)));

                    end if;
                else --Caso contrário, ele pula para o endereço indicado.
                    if(op_code = "0100") then --JUMP
                        PC <= instrucao(7 downto 0);

                    elsif (op_code = "0110" or op_code = "0111") then --BEQ OU BQE
                        -- Para BEQ e BNE
                        PC <= PC + instrucao(7 downto 0);
                    end if;
                end if;
            end if;

            end process;
end behavior;