library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity processador is
	port (
		clock	: in std_logic;
		reset	: in std_logic;
		R0_out		: out std_logic_vector(3 downto 0);
		R1_out      : out std_logic_vector(3 downto 0)
		);
end entity;

architecture behaviour of processador is
signal PC	: std_logic_vector(3 downto 0); -- Contador de programa (Program Counter) que armazena o endereço atual de execução.
type mem is array (integer range 0 to 15) of std_logic_vector(7 downto 0);
signal mem_0	: mem; --Memória de instruções, com 16 posições de 8 bits cada.
signal desvio	: std_logic; --Controle para indicar se deve ocorrer um salto (branch).
signal op_code	: std_logic_vector(2 downto 0); -- nao esta pronto || Código de operação das instruções.
signal ula		: std_logic_vector(3 downto 0); --Saída da ULA, que executa operações como soma e subtração.
signal equal	: std_logic; --Sinal para verificar se R0 é igual a R1 (usado em instruções de comparação).
signal mult		: std_logic_vector(7 downto 0);
signal soma		: std_logic_vector(3 downto 0);
signal subt		: std_logic_vector(3 downto 0);
signal mem_out	: std_logic_vector(7 downto 0);
signal enable_reg	: std_logic; --Habilita a gravação de valores em registradores.

signal R0, R1	: std_logic_vector(3 downto 0);
begin --a memória mem_0 é carregada com valores iniciais. Cada posição contém uma instrução ou dado.
		mem_0(0) <= "00000010";
        mem_0(1) <= "00010011";
        mem_0(2) <= "10100110";
		mem_0(3) <= "00010001";
        mem_0(4) <= "01000000";
        mem_0(5) <= "11001000";
        mem_0(6) <= "00010001";
        mem_0(7) <= "00100000";
        mem_0(8) <= "00000000"; 
        mem_0(9) <= "00000000";
        mem_0(10) <= "00000000";
        mem_0(11) <= "00000000";
        mem_0(12) <= "00000000";
        mem_0(13) <= "00000000";
        mem_0(14) <= "00000000";
        mem_0(15) <= "00000000";

--Define que os valores de R0 e R1 sejam exibidos nas saídas R0_out e R1_out.
R0_out <= R0;
R1_out <= R1;

mem_out <= mem_0(conv_integer(PC)); --Recebe o conteúdo da posição de memória apontada pelo PC.

op_code <= mem_out(7 downto 5); --Extrai os três bits mais significativos da instrução (indica qual operação será executada).

--Habilita a gravação no registrador quando o op_code é uma operação de carga ou aritmética.
enable_reg	<= '1' when (op_code = "000") or (op_code = "001") or (op_code = "010") or (op_code = "011") else
				'0'; 

--Indica se um salto deve ocorrer.
desvio <= '1' when (op_code = "100" and equal = '1') or (op_code = "101" and equal = '0') or (op_code = "110") else
		'0';

--Verifica se R0 e R1 têm valores iguais.
equal <= '1' when R0 = R1 else
		'0';

--Realizam operações aritméticas.
soma <= R0 + R1;
subt <= R0 - R1;
mult <= R0 * R1;

-- Seleciona a operação da ULA com base no op_code.
ula <= mem_out(3 downto 0) when op_code(1 downto 0) = "00" else
	soma when op_code(1 downto 0) = "01" else
	subt when op_code(1 downto 0) = "10" else 
	mult(3 downto 0);
  

process(reset, clock)
begin
	if (reset = '0') then   --Se reset está ativo (0), ele zera tudo
		R0	<= (others => '0');
		R1  <= (others => '0');
		PC  <= (others => '0');

	elsif (clock = '1' and clock'event) then
		-- logica pro PC
		if (desvio = '0') then --Se desvio é 0, o PC é incrementado (próxima instrução). Caso contrário, ele pula para o endereço indicado.
			PC <= PC + 1;
		else
			PC <= mem_out(3 downto 0);
		end if;
		 if (enable_reg = '1') then
		 	if (mem_out(4) = '0') then
				R0 <= ula;
			else
				R1 <= ula;
			end if;
		end if;
	end if;
end process;
end behaviour;