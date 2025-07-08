----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/04/2022 04:25:30 PM
-- Design Name: 
-- Module Name: spi_tb - Behavioral
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
--
-- This TB is super hard-coded. Some values have to be kept the same in order for correct function. Keep everything as it is.
-- Ideally, a tester must be written to test proper function of the master SPI core
--
--
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity spi_tb is
end spi_tb;

architecture Behavioral of spi_tb is

	constant CLK_FREQ			: integer := 10_000_000;
	--constant CLK_PERIOD			: time := (1 / CLK_FREQ)*1 sec;
	--constant CLK_HALF_PERIOD	: time := CLK_PERIOD/2;

	constant C_CLOCKS_PER_HALF_BIT : integer := 1; 
  constant C_SLAVES : integer := 4;
  
  signal stimulate_word   : std_logic_vector(31 downto 0);
  signal stimulate_zeros  : std_logic_vector(15 downto 0) := (others => '0');
  signal stimulate_rw     : std_logic                     := '0';    
  signal stimulate_trig   : std_logic                     := '0';    
  signal stimulate_dev_id : std_logic_vector(3 downto 0)  := (others => '1');    
  signal stimulate_data   : std_logic_vector(9 downto 0)  := (others => '0');    
  
  signal return_word : std_logic_vector(15 downto 0) := x"BEEF";

	-- Global signals:
	signal clk_in 	: std_logic := '0';
    signal rstn 	: std_logic;
	-- AXI GPIO signals:
    signal axi_gpio_in 	: std_logic_vector(31 downto 0);
    signal axi_gpio_out : std_logic_vector(31 downto 0);
	-- SPI signals:
    signal sclk : std_logic;
    signal csn 	: std_logic_vector(3 downto 0);
    signal mosi : std_logic;
    signal miso : std_logic;
    

begin

	spi : entity work.spi(rtl)
	generic map ( 
    C_CLOCKS_PER_HALF_BIT => C_CLOCKS_PER_HALF_BIT,
    C_SLAVES => C_SLAVES 
  )
	port map(
		clk_in 			=> clk_in, 	
		rstn 	        => rstn, 	
		axi_gpio_in 	=> axi_gpio_in, 
		axi_gpio_out    => axi_gpio_out, 
		sclk            => sclk, 
		csn 	        => csn, 	
		mosi            => mosi, 
		miso 		    => miso
	);
  
  
	clk_in <= not clk_in after 100 ns;
	
	stim_p : process
	begin
	rstn <= '0';
  miso <= '0';
  
  -- Setup GPIO word:
  stimulate_rw      <= '0';
  stimulate_trig    <= '0';
  stimulate_dev_id  <= (others => '1');
  stimulate_data    <= (others => '0');
  axi_gpio_in <= stimulate_zeros & stimulate_trig & stimulate_dev_id & stimulate_rw & stimulate_data;
  -----------------------------------

	wait for 1 us;
	rstn <= '1';
	
	wait for 2 us;
	
	-- Setup GPIO word:
  stimulate_rw      <= '0';
  stimulate_trig    <= '1';
  stimulate_dev_id  <= b"1110";
  stimulate_data    <= b"00" & x"A5";
  axi_gpio_in <= stimulate_zeros & stimulate_trig & stimulate_dev_id & stimulate_rw & stimulate_data;
  -----------------------------------
  
	wait for 2 us;
	
	-- Reset GPIO word:
  stimulate_rw      <= '0';
  stimulate_trig    <= '0';
  stimulate_dev_id  <= (others => '1');
  stimulate_data    <= (others => '0');
  axi_gpio_in <= stimulate_zeros & stimulate_trig & stimulate_dev_id & stimulate_rw & stimulate_data;
  -----------------------------------
	
	wait for 10 us;
	
	-- Now test read:
	
	-- Setup GPIO word:
  stimulate_rw      <= '1';
  stimulate_trig    <= '1';
  stimulate_dev_id  <= b"1110";
  stimulate_data    <= b"00" & x"CE";
  axi_gpio_in <= stimulate_zeros & stimulate_trig & stimulate_dev_id & stimulate_rw & stimulate_data;
  -----------------------------------
	
	wait for 2 us;
	
	-- Reset GPIO word:
  stimulate_rw      <= '0';
  stimulate_trig    <= '0';
  stimulate_dev_id  <= (others => '1');
  stimulate_data    <= (others => '0');
  axi_gpio_in <= stimulate_zeros & stimulate_trig & stimulate_dev_id & stimulate_rw & stimulate_data;
  -----------------------------------
  
  wait for 2 us;
  
  wait for 6100 ns;
  
  for shift_counter in 15 downto 0 loop
    miso <= return_word(shift_counter);
    wait for 400 ns;
  end loop;
  
  miso <= '0';
	
	wait;
  end process;
	
	

end Behavioral;
