library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_slave is
    generic(
        DATA_WIDTH : integer := 32
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
        dclk      : out std_logic;
        odr_data  : out std_logic;
        -- Output signals:
        data_out0 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out1 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out2 : out std_logic_vector(DATA_WIDTH - 1 downto 0);
        data_out3 : out std_logic_vector(DATA_WIDTH - 1 downto 0)
    );
end ad4134_slave;

architecture rtl of ad4134_slave is

    constant CLK_FREQ     : integer := 50000000;     -- 50 MHz system clock
    constant ODR_FREQ     : integer := 1496000;      -- 1.496 MSPS
    constant ODR_PERIOD   : integer := CLK_FREQ / ODR_FREQ;  -- ~33.4

    signal odr_cnt        : integer range 0 to ODR_PERIOD := 0;
    signal odr_int        : std_logic := '0';
    signal dclk_int       : std_logic := '0';

    signal sampling       : boolean := false;
    signal bit_count      : integer range 0 to DATA_WIDTH := 0;

    signal shift_reg0     : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal shift_reg1     : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal shift_reg2     : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
    signal shift_reg3     : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');

begin

    dclk     <= dclk_int;
    odr_data <= odr_int;

    control_p: process(clk, rst_n)
    begin
        if rst_n = '0' then
            odr_cnt    <= 0;
            odr_int    <= '0';
            dclk_int   <= '0';
            sampling   <= false;
            bit_count  <= 0;
            data_out0  <= (others => '0');
            data_out1  <= (others => '0');
            data_out2  <= (others => '0');
            data_out3  <= (others => '0');
        elsif rising_edge(clk) then

            -- Generate ODR pulse every 668 ns (1.496 MSPS)
            if odr_cnt = ODR_PERIOD - 1 then
                odr_cnt <= 0;
                odr_int <= '1';
                sampling <= true;
                bit_count <= 0;
            else
                odr_cnt <= odr_cnt + 1;
                odr_int <= '0';
            end if;

            -- DCLK toggling and data sampling
            if sampling = true then
                dclk_int <= not dclk_int;

                if dclk_int = '0' then  -- Rising edge of DCLK
                    shift_reg0 <= shift_reg0(DATA_WIDTH - 2 downto 0) & data_in0;
                    shift_reg1 <= shift_reg1(DATA_WIDTH - 2 downto 0) & data_in1;
                    shift_reg2 <= shift_reg2(DATA_WIDTH - 2 downto 0) & data_in2;
                    shift_reg3 <= shift_reg3(DATA_WIDTH - 2 downto 0) & data_in3;

                    bit_count <= bit_count + 1;

                    if bit_count = DATA_WIDTH - 1 then
                        sampling <= false;
                        data_out0 <= shift_reg0;
                        data_out1 <= shift_reg1;
                        data_out2 <= shift_reg2;
                        data_out3 <= shift_reg3;
                    end if;
                end if;
            end if;

        end if;
    end process;

end rtl;
