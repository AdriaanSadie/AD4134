library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ad4134_tester is
    port(
        clk : out std_logic;
        rstn : out std_logic;
        --write : out std_logic := '0';
        --read : out std_logic := '0';
       -- datain : out std_logic_vector(7 downto 0) :=(others => '0');
        dataout : in std_logic_vector(7 downto 0) := (others => '0');
        --spiaddr : out std_logic_vector(7 downto 0) := (others => '0');
        spidone : in std_logic;
        mosi : in std_logic;
        ch_en : out std_logic_vector(3 downto 0);
        miso : out std_logic 

    );
end entity ad4134_tester;

architecture RTL of ad4134_tester is
    signal clk_i : std_logic := '0';
    signal rstn_i : std_logic := '0';
begin

    clk_i <= not(clk_i) after 10 ns;
    rstn_i <= '1' after 50 ns; 
    clk <= clk_i;
    rstn <= rstn_i;

    dummy_data : process is
    begin
        --wait for 200 ns;
        --spiaddr <= "00001000";
        --datain <= x"AF";
        wait;

    end process dummy_data;
    

end architecture RTL;
