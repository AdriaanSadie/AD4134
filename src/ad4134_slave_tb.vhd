library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ad4134_slave_tb is
end ad4134_slave_tb;

architecture behav of ad4134_slave_tb is

    constant CLK_PERIOD : time := 20 ns;  -- 50 MHz
    constant DCLK_PERIOD : time := 40 ns; -- 25 MHz

    signal clk       : std_logic := '0';
    signal rst_n     : std_logic := '0';
    signal data_in0  : std_logic := '0';
    signal data_in1  : std_logic := '0';
    signal data_in2  : std_logic := '0';
    signal data_in3  : std_logic := '0';
    signal dclk      : std_logic;
    signal odr_data  : std_logic;
    signal data_out0 : std_logic_vector(31 downto 0);
    signal data_out1 : std_logic_vector(31 downto 0);
    signal data_out2 : std_logic_vector(31 downto 0);
    signal data_out3 : std_logic_vector(31 downto 0);

    -- Data to shift out (simulate ADC output)
    signal sim_data0 : std_logic_vector(31 downto 0) := x"AAAAAAAA";
    signal sim_data1 : std_logic_vector(31 downto 0) := x"55555555";
    signal sim_data2 : std_logic_vector(31 downto 0) := x"FFFFFFFF";
    signal sim_data3 : std_logic_vector(31 downto 0) := x"00000000";

    signal bit_index : integer := 31;

begin

    -- Instantiate DUT
    uut: entity work.ad4134_slave
        generic map(DATA_WIDTH => 32)
        port map (
            clk       => clk,
            rst_n     => rst_n,
            data_in0  => data_in0,
            data_in1  => data_in1,
            data_in2  => data_in2,
            data_in3  => data_in3,
            dclk      => dclk,
            odr_data  => odr_data,
            data_out0 => data_out0,
            data_out1 => data_out1,
            data_out2 => data_out2,
            data_out3 => data_out3
        );

    -- System clock generation (50 MHz)
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for CLK_PERIOD / 2;
            clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Reset and stimulus
    stim_proc : process
    begin
        -- Initial reset
        rst_n <= '0';
        wait for 100 ns;
        rst_n <= '1';

        -- Wait for OD Ready to go high
        wait until rising_edge(odr_data);

        -- Begin driving serial data when DCLK starts toggling
        while bit_index > 0 loop
            wait until rising_edge(dclk);
            data_in0 <= sim_data0(bit_index);
            data_in1 <= sim_data1(bit_index);
            data_in2 <= sim_data2(bit_index);
            data_in3 <= sim_data3(bit_index);
            bit_index <= bit_index - 1;
        end loop;

        -- Wait some time and end simulation
        wait;
    end process;

end behav;
