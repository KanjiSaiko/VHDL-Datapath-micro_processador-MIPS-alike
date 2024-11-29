entity fsm is
    port(
    clock : in std_logic;
     reset : in std_logic;
    button : in std_logic;
     led : out std_logic);
    end fsm;

architecture behavior of fsm is
    type state_name is (start, on); -- nome dos estados
    signal state, next_state : state_name; -- definição dos sinais de estado
    
    begin
        process (clock, reset)
            begin
                if (reset = ‘0’) then
                    state <= start; -- estado inicial via reset
                elsif (clock = ‘1’ and clock’event) then
                    state <= next_state; -- registrador(es) para armazenamento do estado
                end if;
        end process;

        process (state, button)
            begin
                case state is
                    when start =>
                        if (button = ‘0’) then
                            next_state <= start;
                        else
                            next_state <= on;
                        end if;
                    when on =>
                        if (button = ‘0’) then
                            next_state <= on;
                        else
                            next_state <= start;
                        end if;
                end case;
            end process;

            process (state) --saida
                begin
                case state is
                    when start =>
                        led <= ‘0’;
                    when on =>
                        led <= ‘1’;
                end case;
            end process;
