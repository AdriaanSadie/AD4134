----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2023 09:20:33
-- Design Name: 
-- Module Name: i2c_expander_tb - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity i2c_expander_tb is
end i2c_expander_tb;

architecture Behavioral of i2c_expander_tb is

	constant CLK_FREQ			: integer := 10_000_000;
	
	constant C_I2C_DEV_ADDR_LEN 		: integer := 7;
	constant C_CLOCKS_PER_HALF_BIT 	: integer := 2;
	
  signal stim_zeros  			: std_logic_vector(31 downto 0) := (others => '0');   
  signal stim_trig   			: std_logic                     := '0';    
	signal stim_device			: std_logic											:= '0';
  signal stim_rw     			: std_logic                     := '0'; 
	signal stim_reserved		: std_logic_vector(12 downto 0)	:= (others => '0');
  signal stim_control_reg : std_logic_vector(7 downto 0)  := (others => '0');    
  signal stim_data   			: std_logic_vector(7 downto 0)  := (others => '0'); 

	-- Global signals:
	signal clk_in 	: std_logic := '1';
  signal rstn 		: std_logic;
	
	-- AXI GPIO signals:
  signal axi_gpio_in 	: std_logic_vector(31 downto 0);
  signal axi_gpio_out : std_logic_vector(31 downto 0);
	
	-- I2C signals:
	signal scl	: std_logic;
	signal sda	: std_logic;

	-- Debugging signals:
	signal manager_state_value	: std_logic_vector(7 downto 0);
  signal write_state_value	  : std_logic_vector(7 downto 0);
  

begin

	i2c : entity work.i2c_expander(rtl)
	generic map (
		C_I2C_DEV_ADDR_LEN => C_I2C_DEV_ADDR_LEN,
		C_CLOCKS_PER_HALF_BIT => C_CLOCKS_PER_HALF_BIT
	)
	port map(
		-- Global signals:
    clk_in	=> clk_in,
    rstn 		=> rstn,
		
    -- Axi bus signals (GPIO):
    axi_gpio_in		=> axi_gpio_in,
    axi_gpio_out	=> axi_gpio_out,
      
    -- I2C signals:
    scl	=> scl,
    sda	=> sda,
		
		-- Debugging signals:
		manager_state_value => manager_state_value,
    write_state_value   => write_state_value
	);
	
	clk_in <= not clk_in after 100 ns;
	
	stim_p : process
	begin
	rstn <= '0';
	
	-- Setup GPIO word:
	axi_gpio_in	<= stim_zeros;
	
	wait for 10 us;
	rstn <= '1';
	
	wait for 5 us;
	
	-- Create write transaction: (0x8000140F)
	stim_trig 				<= '1';
	stim_device				<= '0';
	stim_rw						<= '0';
	stim_reserved			<= (others => '0');
	stim_control_reg	<= x"14";
	stim_data					<= x"0F";
	--axi_gpio_in				<= stim_trig & stim_device & stim_rw & stim_reserved & stim_control_reg & stim_data;
	axi_gpio_in	<= x"8000140F";
	-----------------------------------
	
	wait for 20 us;
	
	-- Reset GPIO word:
	axi_gpio_in				<= stim_zeros;
	-----------------------------------
	
	wait for 10 us;
	
	-- Now write some deadbeef boi:
	axi_gpio_in		<= x"8000F200";
	
	
	
	
	wait;
  end process;
	

end Behavioral;
