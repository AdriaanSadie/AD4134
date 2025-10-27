library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_data is
    generic(
        DATA_WIDTH : integer := 24
    );
    port(
        -- Global signals:
        clk       : in  std_logic;
        rst_n     : in  std_logic;
        -- AD4134 signals:
        data_in0  : in  std_logic;
        data_in1  : in  std_logic;
        data_in2  : in  std_logic;
        data_in3  : in  std_logic;
        dclk_out  : out std_logic;
        odr_out   : out std_logic;
        -- Output signals:
        data_out0 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out1 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out2 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out3 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_rdy  : out std_logic
    );
end ad4134_data;

architecture rtl of ad4134_data is

    -- Constants:
    constant SYS_CLK_FREQ   : integer := 50_000_000;
    constant DIG_CLK_FREQ   : integer := 10_000_000;
    constant ODR_HIGH_TIME  : integer := 3;
    constant ODR_LOW_TIME   : integer := 24;
    constant ODR_WAIT_FIRST : integer := 1;
    constant ODR_WAIT_LAST  : integer := 2;

    -- Internal control registers:
    signal odr_cnt   : integer range 0 to ODR_LOW_TIME + ODR_HIGH_TIME;
    signal odr_int   : std_logic := '0';
    signal dclk_int  : std_logic := '0';
    signal bit_count : integer range 0 to DATA_WIDTH;

    signal shift_reg0 : std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal shift_reg1 : std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal shift_reg2 : std_logic_vector(DATA_WIDTH - 1 downto 0);
    signal shift_reg3 : std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- ODR Tracker signals:
    constant ODR_TOTAL_CLKS : integer := ODR_HIGH_TIME + ODR_WAIT_FIRST + ODR_LOW_TIME + ODR_WAIT_LAST;
    signal   odr_tracker    : integer range 0 to ODR_TOTAL_CLKS;

    -- Flags:
    signal dclk_active : std_logic;

begin

    dclk_int <= clk; -- FOR NOW. Have to add generics to set up the clock and sample speeds

    dclk_out <= dclk_int when dclk_active = '1' else '0';
    
    odr_out <= odr_int;

    odr_p : process(clk, rst_n) is
    begin
        if (rst_n = '0') then

            odr_tracker <= 0;
            odr_int     <= '0';

            -- Flags:
            dclk_active <= '0';

        elsif (rising_edge(clk)) then

            case odr_tracker is

                when 0 to ODR_HIGH_TIME - 1 => -- 0:2

                    odr_int <= '1';

                    dclk_active <= '0';

                when ODR_HIGH_TIME to ODR_HIGH_TIME + ODR_WAIT_FIRST - 1 => -- 3:3

                    odr_int     <= '0';

                    dclk_active <= '0';

                when ODR_HIGH_TIME + ODR_WAIT_FIRST to ODR_HIGH_TIME + ODR_WAIT_FIRST + ODR_LOW_TIME - 1 => -- 4:27

                    odr_int     <= '0';

                    dclk_active <= '1';

                when ODR_HIGH_TIME + ODR_WAIT_FIRST + ODR_LOW_TIME to ODR_HIGH_TIME + ODR_WAIT_FIRST + ODR_LOW_TIME + ODR_WAIT_LAST - 1 => -- 28:29

                    odr_int     <= '0';

                    dclk_active <= '0';

                when others =>

                    odr_int     <= '0';

                    dclk_active <= '0';

            end case;

            if (odr_tracker < ODR_TOTAL_CLKS) then
                odr_tracker <= odr_tracker + 1;
            else
                odr_tracker <= 0;
            end if;

        end if;
    end process;

end rtl;
