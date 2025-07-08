----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2022 08:27:45 PM
-- Design Name: 
-- Module Name: spi - rtl
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

-- AXI GPIO in Register content: (#####REMEMBER TO ADD IN 50-TP LOGIC LATER#####)
--
--	[ 		31 : 16			|		15		    |		14 : 11			  | 		10			      | 	9 : 0	]
--  [ 		Reserved		|	Trigger Bit	|	 Device ID    	|  Read/Write bit 	|  	Data	]
--
-- A transaction will be clocked in once, when the trigger bit (15) is asserted high. 
-- Device ID is active low. Corresponds to the bit:
-- Device 0 active: 1110
-- Device 1 active: 1101
-- Device 2 active: 1011
-- Device 3 active: 0111
--
--
-- AXI GPIO out Register content:
--
--	[ 		31 : 16			|		  15		    |	      14 : 11				 | 		    10		    | 	9 : 0	]
--  [ 		Reserved		|	  Reserved	  |	      Reserved       |      Reserved    |  	Data	]
--
--
-- A transaction will be clocked in once, when the trigger bit (15) is asserted high. 
--
--
--
--
-- SPI Manager:
--
-- The SPI manager process tracks the clocks that each underlying process should take, e.g. for a read cycle:
--
--    
--    | - - - - - - Write for 16 clocks - - - - - - | - Wait one clock cycle - | - - - - - - Read for 16 clocks - - - - - - |
--
--
-- This process is done using flags that toggle each underlying process, e.g. spi_write_flag, spi_read_flag
--
--
--
--
--
--
--
--
--
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity spi is
	generic(
		C_CLOCKS_PER_HALF_BIT	: integer := 1;
    C_SLAVES : integer := 4
	);
    Port ( 
		-- Global signals:
		clk_in : in STD_LOGIC;
        rstn : in STD_LOGIC;
		-- Axi bus signals (GPIO):
        axi_gpio_in : in STD_LOGIC_VECTOR (31 downto 0);
        axi_gpio_out : out STD_LOGIC_VECTOR (31 downto 0);
		-- SPI Signals:
        sclk : out STD_LOGIC;
        csn : out STD_LOGIC_VECTOR (3 downto 0);
        mosi : out STD_LOGIC;
        miso : in STD_LOGIC
	);
end spi;

architecture rtl of spi is

	-- SPI constants:
	constant C_REG_LENGTH 	: integer := 16;
	constant C_CTRL_BITS 	: integer := 6;
	constant C_DATA_BITS	: integer := 10;	
	constant C_CLK_FREQ		: integer := 10_000_000;
	
	-- State machine signals:
	type spi_state_type is (spi_idle, spi_read, spi_write); -- Have to add in 50-TP programming later
	signal spi_state 		: spi_state_type;
	
	-- SPI Signals:
	signal spi_clock		: std_logic;
	signal spi_clock_flag_w, spi_clock_flag_r 	: std_logic; -- '1' is active, '0' is inactive
	signal spi_clk_counter	: integer range 0 to C_CLOCKS_PER_HALF_BIT - 1; ------######################
	signal shift_reg		: std_logic_vector(C_REG_LENGTH - 1 downto 0);
	signal ctrl_reg			: std_logic_vector(C_CTRL_BITS - 1 downto 0);
	signal sdo_reg			: std_logic_vector(C_DATA_BITS - 1 downto 0);
	signal sdi_reg			: std_logic_vector(C_REG_LENGTH - 1 downto 0); -- Have to read in full 16-bit half-word, but only use bottom 10 bits
	signal shift_counter_w 	: integer range 0 to (C_REG_LENGTH - 1);
  signal shift_counter_r 	: integer range 0 to C_REG_LENGTH; -- Read on falling edge, so have to add in extra bit, otherwise starts to write one bit early
  signal csn_w, csn_r : std_logic_vector(C_SLAVES - 1 downto 0);
	
	-- SPI Control constants (from datasheet):
	constant C_CTRL_SPI_WRITE		: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000001"; -- Write contents of serial register data to RDAC (Resistive Digital-to-Analog Converter)
	constant C_CTRL_SPI_READ_WIPER	: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000010"; -- Read contents of RDAC wiper register
	constant C_CTRL_SPI_PROG		: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000011"; -- Store wiper setting; store RDAC setting to 50-TP memory
	constant C_CTRL_SPI_SRST		: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000100"; -- Software reset: Refresh RDAC with last 50-TP memory stored values
	constant C_CTRL_SPI_READ_MEM	: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000101"; -- Read contents of 50-TP from SDO output in the next fram (remember to set data in frame to :"X X X X D5 D4 D3 D2 D1 D0" to specify memory location)
	constant C_CTRL_SPI_READ_LAST	: std_logic_vector(C_CTRL_BITS - 1 downto 0) := b"000110"; -- Read address of last programmed memory location
	
	-- Registers for double-flopping the GPIO input:
	signal axi_gpio_in_reg1 		: std_logic_vector(31 downto 0);
	signal axi_gpio_in_reg2 		: std_logic_vector(31 downto 0);
	
	-- Manager signals:
  constant spi_write_clocks     : integer := C_REG_LENGTH; -- Only step through shift register once
  constant spi_read_clocks      : integer := C_REG_LENGTH + C_REG_LENGTH + 2; -- Step through shift write seq, then read seq, with 1 clock inbetween
  
  signal spi_write_tracker  : integer range 0 to spi_write_clocks;
  signal spi_read_tracker   : integer range 0 to spi_read_clocks;
  
  signal spi_write_flag     : std_logic;
  signal spi_read_flag      : std_logic;

begin
	
	sclk <= spi_clock and (spi_clock_flag_w xor spi_clock_flag_r);
  --sclk <= spi_clock and spi_clock_flag_w;
  
  csn <= csn_w and csn_r;
  --csn <= csn_w;
  
  shift_reg <= ctrl_reg & sdo_reg;
  
	spi_clock_p : process(clk_in, rstn) is
	begin
		if (rstn = '0') then
			spi_clock <= '0';
		elsif (rising_edge(clk_in)) then
      if (spi_clk_counter < C_CLOCKS_PER_HALF_BIT - 1) then
        spi_clk_counter <= spi_clk_counter + 1;
      else
        spi_clk_counter <= 0;
      	spi_clock <= not spi_clock;
      end if;
		end if;
	end process;
  
  
  

	spi_manager_p : process(spi_clock, rstn) is
  begin
    if (rstn = '0') then
      axi_gpio_in_reg1 <= (others => '0');
      axi_gpio_in_reg2 <= (others => '0');
      spi_state <= spi_idle;
      spi_write_tracker <= 0;
      spi_read_tracker <= 0;
      spi_write_flag  <= '0';
      spi_read_flag   <= '0';  
    elsif(rising_edge(spi_clock)) then
    
      -- Clock in the GPIO input into the registers:
      axi_gpio_in_reg1 <= axi_gpio_in;
			axi_gpio_in_reg2 <= axi_gpio_in_reg1;
      
      case spi_state is
      
        when spi_idle =>
          -- Check for rising edge in trigger bit of GPIO:
          if (axi_gpio_in_reg1(15) = '1' and axi_gpio_in_reg2(15) = '0') then
            -- Load data from GPIO into registers to build op shift register
						sdo_reg <= axi_gpio_in_reg1(9 downto 0);
						if (axi_gpio_in_reg1(10) = '0') then
							-- Write:
							ctrl_reg <= C_CTRL_SPI_WRITE;
							spi_state 	<= spi_write;
						else
							-- Read:
							ctrl_reg <= C_CTRL_SPI_READ_WIPER;
							spi_state	<= spi_read;
						end if;
          else
            spi_state <= spi_idle;
          end if;
          
        when spi_write =>
          if (spi_write_tracker < spi_write_clocks) then
            spi_write_tracker <= spi_write_tracker + 1;
            spi_write_flag <= '1';
            spi_read_flag <= '0';
          else
            spi_write_tracker <= 0;
            spi_write_flag <= '0';
            spi_read_flag <= '0';
            spi_state <= spi_idle;
          end if;
        
        when spi_read =>
        
          if (spi_read_tracker < spi_read_clocks) then
        
            case spi_read_tracker is
              
              when 0 to C_REG_LENGTH - 1 =>
                -- Do write sequence here:
                spi_write_flag <= '1';
                spi_read_flag <= '0';
                
              when C_REG_LENGTH =>
                -- Wait single clock cycle
                spi_write_flag <= '0';
                spi_read_flag <= '0';
              
              when C_REG_LENGTH + 1 to (C_REG_LENGTH + C_REG_LENGTH + 2) =>
                -- Do read sequence now:
                spi_write_flag <= '0';
                spi_read_flag <= '1';
              
              when others =>
                spi_write_flag <= '0';
                spi_read_flag <= '0';
  
            end case;
            
            -- Increment read tracker counter:
            spi_read_tracker <= spi_read_tracker + 1;
            
          else
            spi_read_tracker <= 0;
            spi_write_flag <= '0';
            spi_read_flag <= '0';
            spi_state <= spi_idle;
          end if;
      
        when others =>
          spi_state <= spi_idle;
        
      
      end case;
      
    end if;
  end process;
  
  
  spi_write_p : process(spi_clock, rstn) is
  begin
    if (rstn = '0') then
      shift_counter_w <= C_REG_LENGTH - 1;
      spi_clock_flag_w <= '0';
      csn_w <= (others => '1');
      mosi <= '0';
    elsif (rising_edge(spi_clock)) then
      if (spi_write_flag = '1') then
        spi_clock_flag_w <= '1';
        csn_w(0) <= '0';
        -- Step through each bit in shift register
        shift_counter_w <= shift_counter_w - 1;
        mosi <= shift_reg(shift_counter_w);
      else
        spi_clock_flag_w <= '0';
        csn_w <= (others => '1');
        shift_counter_w  <= C_REG_LENGTH - 1;
        mosi <= '0';
      end if;
    end if;
  end process;
  
  
  
  spi_read_p : process(spi_clock, rstn) is
  begin
    if (rstn = '0') then
      shift_counter_r <= C_REG_LENGTH;
      spi_clock_flag_r <= '0';
      csn_r <= (others => '1');
      axi_gpio_out <= (others => '0');
    elsif (falling_edge(spi_clock)) then
      if (spi_read_flag = '1') then
        spi_clock_flag_r <= '1';
        csn_r(0) <= '0';
        
        if (shift_counter_r = C_REG_LENGTH) then
          -- DO nothing
        else
          -- Load in bit by bit into shift register:
          sdi_reg(shift_counter_r) <= miso;
        end if;
        shift_counter_r <= shift_counter_r - 1;
      else
        spi_clock_flag_r <= '0';
        csn_r <= (others => '1');
        shift_counter_r <= C_REG_LENGTH;
        axi_gpio_out(31 downto 16) <= (others => '0');
        axi_gpio_out(15 downto 0) <= sdi_reg;
      end if;
    end if;
  end process;
  

end rtl;
