library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_to_bram_tb is
end ad4134_to_bram_tb;

architecture behav of ad4134_to_bram_tb is

    constant CLK_PERIOD : time := 20 ns; -- 50 MHz

    -- Global signals:
    signal clk_tb      : std_logic := '0';
    signal rst_n_tb    : std_logic := '0';
    -- ADC signals:
    signal data_in0_tb : std_logic_vector(23 downto 0)  := (others => '0');
    signal data_in1_tb : std_logic_vector(23 downto 0) := (others => '0');
    signal data_in2_tb : std_logic_vector(23 downto 0) := (others => '0');
    signal data_in3_tb : std_logic_vector(23 downto 0) := (others => '0');
    signal data_rdy_tb : std_logic;
    -- BRAM interface:
    signal addra_tb    : std_logic_vector(14 downto 0);
    signal dia_tb      : std_logic_vector(31 downto 0);
    signal wea_tb      : std_logic;
    signal done_tb     : std_logic;

begin

    -- Instantiate DUT
    uut : entity work.ad4134_to_bram
        generic map(DATA_WIDTH => 24)
        port map(
            clk      => clk_tb,
            rst_n    => rst_n_tb,
            data_in0 => data_in0_tb,
            data_in1 => data_in1_tb,
            data_in2 => data_in2_tb,
            data_in3 => data_in3_tb,
            data_rdy => data_rdy_tb,
            addra    => addra_tb,
            dia      => dia_tb,
            wea      => wea_tb,
            done     => done_tb
        );

    -- System clock generation (10 MHz)
    clk_process : process
    begin
        while true loop
            clk_tb <= '0';
            wait for CLK_PERIOD / 2;
            clk_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Reset and stimulus
    stim_proc : process
    begin
        -- Initial reset
        rst_n_tb <= '0';
        wait for 100 ns;
        rst_n_tb <= '1';

        wait for 1 us;

        -- FIRST WORD:

        data_rdy_tb <= '0';
        data_in0_tb <= x"123456";
        data_in1_tb <= x"123456";
        data_in2_tb <= x"123456";
        data_in3_tb <= x"123456";

        wait for 40 ns;

        data_rdy_tb <= '1';

        wait for 40 ns;

        data_rdy_tb <= '0';

        wait for 1 us;

        -- SECOND WORD:

        data_rdy_tb <= '0';
        data_in0_tb <= x"ABCDEF";
        data_in1_tb <= x"ABCDEF";
        data_in2_tb <= x"ABCDEF";
        data_in3_tb <= x"ABCDEF";

        wait for 40 ns;

        data_rdy_tb <= '1';

        wait for 40 ns;

        data_rdy_tb <= '0';

        wait for 1 us;

        -- THIRD WORD:

        data_rdy_tb <= '0';
        data_in0_tb <= x"CAFEBA";
        data_in1_tb <= x"CAFEBA";
        data_in2_tb <= x"CAFEBA";
        data_in3_tb <= x"CAFEBA";

        wait for 40 ns;

        data_rdy_tb <= '1';

        wait for 40 ns;

        data_rdy_tb <= '0';

        wait for 1 us;
        
        -- FOURTH WORD:

        data_rdy_tb <= '0';
        data_in0_tb <= x"DEADBE";
        data_in1_tb <= x"DEADBE";
        data_in2_tb <= x"DEADBE";
        data_in3_tb <= x"DEADBE";

        wait for 40 ns;

        data_rdy_tb <= '1';

        wait for 40 ns;

        data_rdy_tb <= '0';

        wait for 1 us;


        wait;

    end process;

end behav;
