----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.09.2022 11:23:34
-- Design Name: 
-- Module Name: ad5270_tester - rtl
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


entity ad5270_tester is
    Port ( sclk : in STD_LOGIC;
           mosi : in STD_LOGIC;
           miso : out STD_LOGIC;
           csn : in std_logic_vector(3 downto 0)
end ad5270_tester;

architecture rtl of ad5270_tester is

  -- Constants
  constant C_REG_LENGTH : integer := 16;

  -- Types:

  -- Control signals:
  signal shift_counter  : integer range 0 to C_REG_LENGTH - 1;
  
  -- "Internal Chip Registers"
  signal data_in_reg    : std_logic_vector(C_REG_LENGTH - 1 downto 0);
  
begin

  read_p : process(sclk) is 
  begin
    if (falling_edge(sclk)) then
      if (csn = '0') then
        if (shift_counter = 0) then
          shift_counter <= C_REG_LENGTH - 1;
        else
          data_in_reg(shift_counter) <= mosi;
          shift_counter <= shift_counter - 1;
        end if;
      else  
        shift_counter <= C_REG_LENGTH - 1;
      end if;
    end if;
  end process;
  

end rtl;
