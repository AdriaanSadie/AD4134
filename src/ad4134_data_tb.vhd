library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_data_tb is
end ad4134_data_tb;

architecture behav of ad4134_data_tb is

    constant CLK_PERIOD : time := 100 ns; -- 10 MHz

    signal clk_tb       : std_logic;
    signal rst_n_tb     : std_logic;
    signal data_in0_tb  : std_logic;
    signal data_in1_tb  : std_logic;
    signal data_in2_tb  : std_logic;
    signal data_in3_tb  : std_logic;
    signal dclk_out_tb  : std_logic;
    signal odr_out_tb   : std_logic;
    signal data_out0_tb : std_logic_vector(23 downto 0);
    signal data_out1_tb : std_logic_vector(23 downto 0);
    signal data_out2_tb : std_logic_vector(23 downto 0);
    signal data_out3_tb : std_logic_vector(23 downto 0);
    signal data_rdy_tb  : std_logic;

begin

    -- Instantiate DUT
    uut : entity work.ad4134_data
        generic map(DATA_WIDTH => 24)
        port map(
            clk       => clk_tb,
            rst_n     => rst_n_tb,
            data_in0  => data_in0_tb,
            data_in1  => data_in1_tb,
            data_in2  => data_in2_tb,
            data_in3  => data_in3_tb,
            dclk_out  => dclk_out_tb,
            odr_out  => odr_out_tb,
            data_out0 => data_out0_tb,
            data_out1 => data_out1_tb,
            data_out2 => data_out2_tb,
            data_out3 => data_out3_tb
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

        wait;

    end process;

end behav;
