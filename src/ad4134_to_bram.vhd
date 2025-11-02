library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_to_bram is
    generic(
        DATA_WIDTH : integer := 24
    );
    port(
        -- Global signals:
        clk      : in std_logic;
        rst_n    : in std_logic;
        -- ADC signals:
        data_in0 : in std_logic_vector(23 downto 0);
        data_in1 : in std_logic_vector(23 downto 0);
        data_in2 : in std_logic_vector(23 downto 0);
        data_in3 : in std_logic_vector(23 downto 0);
        data_rdy : in std_logic;
        -- BRAM interface:
        addra : out std_logic_vector(14 downto 0);
        dia : out std_logic_vector(31 downto 0);
        wea : out std_logic;
        done : out std_logic
    );
end ad4134_to_bram;

architecture rtl of ad4134_to_bram is

    -- Internal registers for rising edge detection:
    signal data_rdy_r1 : std_logic;
    signal data_rdy_r2 : std_logic;

    -- State machine
    type   operational_states is (
        IDLE_S,
        WRITE_S,
        FINISHED_S
    );
    signal state              : operational_states;

    -- BRAM manager signals:
    signal addr_cnt : unsigned(14 downto 0) := (others => '0');
    signal addr_cnt_shifted : unsigned(14 downto 0) := (others => '0');

begin

    write_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            state <= IDLE_S;

            data_rdy_r1 <= '0';
            data_rdy_r2 <= '0';

            wea <= '0';

            addr_cnt <= to_unsigned(1, 15); -- Initiate at 1, otherwise the bitshifted address writes to 0000 twice
            addr_cnt_shifted <= (others => '0');

        elsif (rising_edge(clk)) then

            -- Double clock in registers:
            data_rdy_r1 <= data_rdy;
            data_rdy_r2 <= data_rdy_r1;

            case state is

                when IDLE_S =>

                    if (data_rdy_r1 = '1' and data_rdy_r2 = '0') then

                        
                        state <= WRITE_S;

                    else
                        state <= IDLE_S;
                    end if;

                    wea <= '0';

                when WRITE_S =>

                    if (addr_cnt < 8191) then

                        dia <= x"00" & data_in0;
                        addr_cnt <= addr_cnt + 1;
                        addr_cnt_shifted <= addr_cnt sll 2;
                        addra <= std_logic_vector(addr_cnt_shifted);

                        wea <= '0';

                    end if;
                    
                    state <= FINISHED_S;
                    

                when FINISHED_S =>

                    if (addr_cnt < 8191) then
                        wea <= '1';
                    else
                        wea <= '0';
                    end if;

                    state <= IDLE_S;

                when others =>

                    state <= IDLE_S;

            end case;

        end if;
    end process;

end rtl;
