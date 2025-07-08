----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 14:19:09
-- Design Name: 
-- Module Name: ad5270_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ad5270_tb is
end ad5270_tb;

architecture Behavioral of ad5270_tb is

  -- Constants:
  constant C_CLK_FREQ           : integer := 10_000_000;
  --constant C_CLK_PERIOD         : time  := (1 sec / C_CLK_FREQ);
 -- constant C_HALF_CLK_PERIOD    : time  := (C_CLK_PERIOD/2); 

  

  -- Component signals:
  ----------------------------------------------------------------------------------
  
  -- SPI Core:
  constant C_CLOCKS_PER_HALF_BIT : integer := 1;
  constant C_SLAVES : integer := 1;
  signal i_clk_in : std_logic := '0';
  signal i_rstn : std_logic;
	-- axi bus signals (gpio):
  signal i_axi_gpio_in : std_logic_vector (31 downto 0);
  signal i_axi_gpio_out : std_logic_vector (31 downto 0);
	-- spi signals:
  signal i_sclk : std_logic;
  signal i_csn : std_logic_vector (3 downto 0);
  signal i_mosi : std_logic;
  signal i_miso : std_logic;
  
  ----------------------------------------------------------------------------------


begin

  -- Instantiate UUT:
  spi : entity work.spi(rtl)
	generic map ( 
    C_CLOCKS_PER_HALF_BIT => C_CLOCKS_PER_HALF_BIT,
    C_SLAVES => C_SLAVES 
  )
	port map(
		clk_in 			  => i_clk_in, 	
		rstn 	        => i_rstn, 	
		axi_gpio_in 	=> i_axi_gpio_in, 
		axi_gpio_out  => i_axi_gpio_out, 
		sclk          => i_sclk, 
		csn 	        => i_csn, 	
		mosi          => i_mosi, 
		miso 		      => i_miso
	);
  
  -- Instantiate Tester:
  tester_0 : entity work.ad5270_tester(rtl)
  port map(
    sclk    => i_sclk,
    mosi    => i_mosi,
    miso    => i_miso,
    csn     => i_csn
  );
  

end Behavioral;
















