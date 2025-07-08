----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 08:10:33 PM
-- Design Name: 
-- Module Name: dac_controller - rtl
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Control vector bits:
--
-- Bits				| Description
------------------------------------------------------------------------------------
-- 31:11			| Reserverd
-- 10:1				| Cycles to implement
-- 0					| Trigger bit (going to 1 from zero initiates state machine
------------------------------------------------------------------------------------


entity dac_controller is
    Port ( 
			-- Global signals:
			clk_in : in STD_LOGIC;
      rst_n : in STD_LOGIC;
			
			-- DAC Output:
			dac_out : out std_logic_vector(13 downto 0);
			
			-- Control Signals inputs:
			control_vector : in std_logic_vector(31 downto 0);
			t_initial_rise_time_segment : in std_logic_vector(31 downto 0);
			t_rise_time_segment : in std_logic_vector(31 downto 0);
			t_fall_time_segment : in std_logic_vector(31 downto 0);
			t_final_fall_time_segment : in std_logic_vector(31 downto 0)
		);
end dac_controller;

architecture rtl of dac_controller is

	-- Constants:
	constant C_MAX_COUNT : integer := 4096;
	
	-- Control signals:
	signal n_cycle_count : unsigned(9 downto 0);
	
	-- Registers:
	signal control_vector_r1 : std_logic_vector(31 downto 0);
	signal control_vector_r2 : std_logic_vector(31 downto 0);

	-- State machine:
	type state_type is (idle, initial_rise, rise, fall, final_fall, delay);
	signal fsm_state 		: state_type;
	
	-- Signal counter:
	signal counter : unsigned(13 downto 0);
  

begin

	n_cycle_count <= control_vector(10 downto 1);


	-- Sync process:
	sync_p : process(clk_in)
	begin
		if (rst_n = '0') then
			control_vector_r1 <= (others => '0');
			control_vector_r2 <= (others => '0');
		elsif (rising_edge(clk_in)) then
			control_vector_r1 <= control_vector;
			control_vector_r2 <= control_vector_r1;
		end if;
	end process;

	-- State machine:
	fsm_p : process(clk_in)
	begin
		if (rst_n = '1') then
			
			counter <= (others => '0');
			fsm_state <= idle;
			
		elsif (rising_edge(clk_in)) then
		
			
		
		
		end if;
	end process;


end rtl;
