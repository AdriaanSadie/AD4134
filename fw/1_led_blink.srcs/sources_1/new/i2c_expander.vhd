----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.12.2023 09:12:51
-- Design Name: 
-- Module Name: i2c_expander - rtl
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
-- AXI GPIO in Register content: 
--
-- [ BITS   ]   -- [ Description          ]
--
-- [ 31		  ]   -- [ Trigger Bit          ]
-- [ 30     ]   -- [ Device ID            ]			(DEV1 : 0; DEV2 : 1)
-- [ 29     ]   -- [ Read/Write				    ]			(Write : 0, Read : 1)
-- [ 28:16  ]   -- [ Reserved             ]
-- [ 15:8   ]   -- [ Register Address     ]
-- [ 7:0    ]   -- [ Data                 ]
--
--
-- A transaction will be clocked in once, when the trigger bit (31) is asserted high. 
-- 
-- Important Registers:
--
-- [ Name 	]		-- [ Address			]		--	[ Notes ]
--
-- [ IOCON	]		-- [ 0x0A, 0x0B		]		--	[ Configuration Register. See below for more details on IOCON Register
-- [ IODIRA ]		-- [ 0x00					]		-- 	[ I/O Direction Register Port A. Input: 1; Output: 0. Default is 0xFF (all inputs)
-- [ IODIRB ]		-- [ 0x01					]		-- 	[ I/O Direction Register Port B. Input: 1; Output: 0. Default is 0xFF (all inputs)
-- [ GPPUA	] 	-- [ 0x0C					]		-- 	[ Pull-up resistor configuration register. If bit is set (=1) AND pin is set to input, the port is pulled up with 100k resistor
-- [ GPPUB	]		-- [ 0x0D					]		-- 	[ Pull-up resistor configuration register. If bit is set (=1) AND pin is set to input, the port is pulled up with 100k resistor
-- [ GPIOA	] 	-- [ 0x12					] 	-- 	[ Reflects value on the port A. Writing to this register modifies the OLAT register.
-- [ GPIOB	] 	-- [ 0x13					] 	-- 	[ Reflects value on the port B. Writing to this register modifies the OLAT register.
-- [ OLATA	]		-- [ 0x14					] 	-- 	[ Output latch register of port A. Writing to this register modifies output latch, modifying pins configured as outputs.
-- [ OLATB	]		-- [ 0x15					] 	-- 	[ Output latch register of port B. Writing to this register modifies output latch, modifying pins configured as outputs.
--
--
--
--
-- 
--
-- IOCON Regiser:
--
-- [ Bit ]	-- [ Name		]		--	[ Description	]
-- 
-- [ 7	 ]	-- [ BANK		]		-- 	[ Controls how registers are addressed. 1 - Registers separated into different banks. 0 - Sequential addressing.
-- [ 6	 ]	-- [ MIRROR	]		-- 	[ How interrupt pins are connected. 1 - INT pins OR'd. 0 - INT pins not connected.
-- [ 5	 ] 	-- [ SEQOP	]		--	[ Sequential operation mode. 1 - Address pointer does not increment. 0 - Addres pointer increments
-- [ 4	 ]	-- [ DISSLW ]		--  [ Slew rate control bit for SDA output. 1 - slew rate disabled. 0 - slew rate enabled.
-- [ 3	 ] 	-- [ HAEN		]		-- 	[ Hardware Address Enable (only for the SPI device, MCP23S017. For our purpose, it's always enabled
-- [ 2	 ] 	-- [ ODR		] 	--  [ Configures the INT pin as an open-drain output. 1 - open-drain output. 0 - active driver output
-- [ 1	 ]	-- [ INTPOL	]		-- 	[ Sets polarity of INT output pin. 1 - Active high. 0 - Active low.
--
-- For the purposes of this firmware block, the IOCON register will be set to 0x00, as it is after PORST
--
--
-- 
--
-- Software write example to set 4 pins high on port A of device 1 (remember to prime the GPIO block after each write):
--
--	[ Prime the firmware GPIO : ]
-- 	-> ./i2c i2c 0
--
--	[ Set direction of both ports A and B as outputs : ]
-- 	-> ./i2c i2c 0x80000000
-- 	-> ./i2c i2c 0
--	-> ./i2c i2c 0x80000100
-- 	-> ./i2c i2c 0
--
-- 	[ Set pins 0 to 3 high on Port A : ]
-- 	-> ./i2c i2c 0x8000140F
-- 	-> ./i2c i2c 0
--
--
--
-- I2C Manager:
--
-- The I2C manager process tracks the clocks that each underlying process should take, e.g. for a write cycle:
--
--    
--  |	-	Start Bit	-	| - - Write Opcode - - | - ACK - | - - Write Control Address - - | - ACK - | - - Write Data - - | - ACK - | - STOP BIT - |
--
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

entity i2c_expander is
    generic(
			C_I2C_DEV_ADDR_LEN   	: integer := 7;
      C_CLOCKS_PER_HALF_BIT : integer := 50 -- 100 clocks for a 100_000 kHz I2C clock, half is 50 @ 10 MHz input clock
    );
    Port ( 
      -- Global signals:
      clk_in : in STD_LOGIC;
      rstn : in STD_LOGIC;
      
      -- Axi bus signals (GPIO):
      axi_gpio_in : in STD_LOGIC_VECTOR (31 downto 0);
      axi_gpio_out : out STD_LOGIC_VECTOR (31 downto 0);
      
      -- I2C signals:
      scl : out STD_LOGIC;
      sda : inout STD_LOGIC
			
			-- Debug signals:
			--manager_state_value	: out std_logic_vector(7 downto 0);
      --write_state_value   : out std_logic_vector(7 downto 0)
		);
end i2c_expander;

architecture rtl of i2c_expander is

  -- Constants:
  constant C_I2C_DEV1_ADDR : std_logic_vector(C_I2C_DEV_ADDR_LEN - 1 downto 0) := b"0100100"; -- 0x24 (First port expander)
  constant C_I2C_DEV2_ADDR : std_logic_vector(C_I2C_DEV_ADDR_LEN - 1 downto 0) := b"0100110"; -- 0x26 (Second port expander)
	
	constant C_I2C_OPCODE_LEN			: integer := 8;
	constant C_I2C_CTRL_REG_LEN		: integer := 8;
	constant C_I2C_DATA_LEN       : integer := 8;
	constant C_I2C_ACK_LEN				: integer := 1;
	constant C_I2C_START_LEN			: integer := 1;
	constant C_I2C_STOP_LEN				: integer := 1;
	
	constant C_I2C_OPCODE_END			: integer := C_I2C_START_LEN + C_I2C_OPCODE_LEN - 1; -- 8
	constant C_I2C_CTRL_REG_END		: integer := C_I2C_OPCODE_END + C_I2C_ACK_LEN + C_I2C_CTRL_REG_LEN; -- 17
	constant C_I2C_DATA_END				: integer := C_I2C_CTRL_REG_END + C_I2C_ACK_LEN + C_I2C_DATA_LEN; -- 26
	

	-- Registers for double-flopping the GPIO input:
	signal axi_gpio_in_reg1 		: std_logic_vector(31 downto 0);
	signal axi_gpio_in_reg2 		: std_logic_vector(31 downto 0);
  
  -- State machine signals:
	type i2c_state_type is (i2c_s_idle, i2c_s_read, i2c_s_write);
	signal i2c_state 		: i2c_state_type;
  
  -- I2C shift registers:
  signal i2c_opcode_reg     		: std_logic_vector(C_I2C_DEV_ADDR_LEN downto 0); -- 7 bits of addr plus 1 bit for r/w
  signal i2c_ctrl_addr_reg  		: std_logic_vector(C_I2C_CTRL_REG_LEN - 1 downto 0);
  signal i2c_data_reg       		: std_logic_vector(C_I2C_DATA_LEN - 1 downto 0);
	signal i2c_shift_reg_counter	: integer range 0 to C_I2C_DATA_LEN;
  
  -- I2C signals:
  signal i2c_clk : std_logic;
  signal i2c_clk_counter : integer range 0 to C_CLOCKS_PER_HALF_BIT - 1;
	signal sda_out : std_logic;
	
	-- I2C Control Flags:
	signal sda_en 		: std_logic;
	signal scl_write	: std_logic;
	signal sda_write	: std_logic;
  signal scl_en     : std_logic;


  -- Manager signals:
	constant i2c_write_clocks 	: integer := C_I2C_START_LEN + C_I2C_OPCODE_LEN + C_I2C_ACK_LEN + C_I2C_CTRL_REG_LEN + C_I2C_ACK_LEN + C_I2C_DATA_LEN + C_I2C_ACK_LEN + C_I2C_STOP_LEN + 1;
	
	signal i2c_write_tracker : integer range 0 to i2c_write_clocks;
	
	signal i2c_start_flag						: std_logic;
	signal i2c_ack_flag							: std_logic;
	signal i2c_write_opcode_flag		: std_logic;
	signal i2c_write_ctrl_addr_flag	: std_logic;
	signal i2c_write_data_flag			: std_logic;
	signal i2c_write_stop_flag			: std_logic;
  


begin
  
  -- Set scl and sda outputs
	scl <=	i2c_clk when ((scl_write = '1')) else 
          '1' when (scl_en = '1') else
					'0';
	
	sda <=	sda_out when (sda_write = '1') else 
					'1';

	

  i2c_clock_p : process(clk_in, rstn) is
  begin
    if (rstn = '0') then
      i2c_clk <= '1';
      i2c_clk_counter <= 0;
    elsif (rising_edge(clk_in)) then
      if (i2c_clk_counter < C_CLOCKS_PER_HALF_BIT - 1) then
        i2c_clk_counter <= i2c_clk_counter + 1;
      else
        i2c_clk_counter <= 0;
        i2c_clk <= not i2c_clk;
      end if;
    end if;
  end process;


  i2c_manager_p : process(i2c_clk, rstn) is
  begin
    if (rstn = '0') then
      -- Reset conditions:
      axi_gpio_in_reg1 <= (others => '0');
      axi_gpio_in_reg2 <= (others => '0');
      i2c_state <= i2c_s_idle;
			
			-- Manager flags:
			i2c_start_flag						<= '0';
			i2c_ack_flag							<= '0';
			i2c_write_opcode_flag			<= '0';
			i2c_write_ctrl_addr_flag	<= '0';
			i2c_write_data_flag				<= '0';
			i2c_write_stop_flag				<= '0';
      
      -- Registers:
      i2c_opcode_reg      <= (others => '0');
      i2c_ctrl_addr_reg   <= (others => '0');
      i2c_data_reg        <= (others => '0');

			scl_write	<= '0';	-- Always disabled. Only assert when writing
			sda_write	<= '0';	-- Always disabled. Only assert when writing
      
      scl_en    <= '0';
			
			i2c_write_tracker <= 0;
      
			-- Debugging:
			--manager_state_value <= (others => '0');
			
    elsif (rising_edge(i2c_clk)) then
      
      -- Clock in the GPIO input into the registers:
      axi_gpio_in_reg1 <= axi_gpio_in;
			axi_gpio_in_reg2 <= axi_gpio_in_reg1;
      
      case i2c_state is
        
        when i2c_s_idle =>
          -- Check for rising edge in trigger bit of GPIO:
          if (axi_gpio_in_reg1(31) = '1' and axi_gpio_in_reg2(31) = '0') then
						-- Go to write sequence and enable SCL and SDA lines 			-- ############## Have to include transition to read sequence state
						i2c_state <= i2c_s_write;
						scl_write	<= '0';		-- SCL Still high to generate the start condition in write transaction
						sda_write <= '0';
            
            scl_en  <= '1';   -- Pull high for start condition
            
            -- Load all data:
            
            -- Choose device to write to:
            if (axi_gpio_in_reg1(30) = '0') then
              -- Write to device 1:
              i2c_opcode_reg <= C_I2C_DEV1_ADDR & axi_gpio_in_reg1(29); -- Address plus R/W bit
            else
              -- Write to device 2:
              i2c_opcode_reg <= C_I2C_DEV2_ADDR & axi_gpio_in_reg1(29); -- Address plus R/W bit
            end if;
             
            -- Load control address register:
            i2c_ctrl_addr_reg <= axi_gpio_in_reg1(15 downto 8);
            
            -- Load data:
            i2c_data_reg <= axi_gpio_in_reg1(7 downto 0);
						
          else
            i2c_state <= i2c_s_idle;
          end if;
					
          -- Manager flags:
          i2c_start_flag						<= '0';     -- ######
          i2c_ack_flag							<= '0';
          i2c_write_opcode_flag			<= '0';
          i2c_write_ctrl_addr_flag	<= '0';
          i2c_write_data_flag				<= '0';
          i2c_write_stop_flag				<= '0';
					
					--manager_state_value <= x"01";
        
        when i2c_s_write =>
				
					if (i2c_write_tracker < i2c_write_clocks) then
					
						case i2c_write_tracker is
						
							when 0 to C_I2C_START_LEN - 1 =>        -- 0
								-- Start Bit
								
								scl_write	<= '0'; 
                sda_write <= '1';
								
								-- Manager flags:
                i2c_start_flag						<= '1';
                i2c_ack_flag							<= '0';
                i2c_write_opcode_flag			<= '0';
                i2c_write_ctrl_addr_flag	<= '0';
                i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"02";
								
							when C_I2C_START_LEN to C_I2C_OPCODE_END =>     -- 1 : 8
								-- Opcode 
								
								scl_write	<= '1'; -- Assert SCL here so that SDA is pulled low before SCL
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '0';
								i2c_write_opcode_flag			<= '1';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
							
								--manager_state_value <= x"03";
							
							when C_I2C_OPCODE_END + 1 =>          -- 9
								-- ACK
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '1';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								
								--manager_state_value <= x"04";
								
							when (C_I2C_OPCODE_END + 2) to (C_I2C_CTRL_REG_END) =>    -- 10:17
								-- Control register
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '0';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '1';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"05";
								
							when  C_I2C_CTRL_REG_END + 1 =>         -- 18
								-- ACK
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '1';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"06";
								
							when (C_I2C_CTRL_REG_END + 2) to (C_I2C_DATA_END) =>      -- 19:26
								-- Data
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '0';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '1';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"07";
								
							when C_I2C_DATA_END + 1 =>              -- 27
								--ACK
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '1';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"08";
								
							when C_I2C_DATA_END + 2 =>            -- 28
								-- Stop bit
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '0';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '1';
								
								--manager_state_value <= x"09";
                
              when C_I2C_DATA_END + 3 =>
								-- Stop bit -- Extra state to get timing of SDA and SCL right
                
                scl_write	<= '0';
								sda_write	<= '1';
                
								
								-- Manager flags:
								i2c_start_flag						<= '0';
								i2c_ack_flag							<= '0';
								i2c_write_opcode_flag			<= '0';
								i2c_write_ctrl_addr_flag	<= '0';
								i2c_write_data_flag				<= '0';
								i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"0A";
              
								
							when others =>
							
								-- Disable write flags and enable other so it stays high
								scl_write	<= '0';
								sda_write	<= '0';
							
								-- Manager flags:
							  i2c_start_flag						<= '0';
							  i2c_ack_flag							<= '0';
							  i2c_write_opcode_flag			<= '0';
							  i2c_write_ctrl_addr_flag	<= '0';
							  i2c_write_data_flag				<= '0';
							  i2c_write_stop_flag				<= '0';
								
								--manager_state_value <= x"0B";
							
						end case;

						-- Increment write tracker counter:
						i2c_write_tracker <= i2c_write_tracker + 1;
					
					else
						i2c_write_tracker <= 0;
						i2c_state <= i2c_s_idle;
						
						scl_write	<= '0';	-- Disable write flags
						sda_write <= '0'; -- Disable write flags
            
            scl_en  <= '0'; 
            
            -- Reset registers:
            i2c_opcode_reg      <= (others => '0');
            i2c_ctrl_addr_reg   <= (others => '0');
            i2c_data_reg        <= (others => '0');
            
            
            -- Manager flags:
            i2c_start_flag						<= '0';
            i2c_ack_flag							<= '0';
            i2c_write_opcode_flag			<= '0';
            i2c_write_ctrl_addr_flag	<= '0';
            i2c_write_data_flag				<= '0';
            i2c_write_stop_flag				<= '0';
            
						
						--manager_state_value <= x"0F";
						
					end if;
				
        
        when i2c_s_read =>
        
        when others =>
        
      end case;
      
    
    end if;
  end process;
	
	
	i2c_write_p : process(i2c_clk, rstn) is
	begin
		if (rstn = '0') then
			sda_out <= '1';
			i2c_shift_reg_counter <= C_I2C_DATA_LEN;
      
      sda_out <= '1'; -- Keep high before write transaction
      
      
      -- Debugging:
      --write_state_value <= (others => '0');
      
			
		elsif (falling_edge(i2c_clk)) then
			
			if i2c_start_flag = '1' then
				
				-- Pull sda low for the start condition 
        

	
				sda_out <= '0';
        
        --write_state_value <= x"01";
        
			
			elsif i2c_ack_flag = '1' then
			
				-- Do nothing. Can consider adding the ACK check later
        
        sda_out <= 'Z';
        
        i2c_shift_reg_counter <= C_I2C_DATA_LEN;
                
        --write_state_value <= x"02";
			
			elsif i2c_write_opcode_flag = '1' then
			
				-- Step through the opcode shift register bit by bit
			
				if (i2c_shift_reg_counter > 0) then
					sda_out <= i2c_opcode_reg(i2c_shift_reg_counter - 1);
					i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
				else
					i2c_shift_reg_counter <= C_I2C_DATA_LEN;
				end if;
        
        --write_state_value <= x"03";
			
			elsif i2c_write_ctrl_addr_flag = '1' then
			
				-- Step through the control address shift register bit by bit
				
				if (i2c_shift_reg_counter > 0) then
					sda_out <= i2c_ctrl_addr_reg(i2c_shift_reg_counter - 1);
					i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
				else
					i2c_shift_reg_counter <= C_I2C_DATA_LEN;
				end if;
        
        --write_state_value <= x"04";
			
			elsif i2c_write_data_flag = '1' then
			
				-- Step through the data shift register bit by bit
				
				if (i2c_shift_reg_counter > 0) then
					sda_out <= i2c_data_reg(i2c_shift_reg_counter - 1);
					i2c_shift_reg_counter <= i2c_shift_reg_counter - 1;
				else
					i2c_shift_reg_counter <= C_I2C_DATA_LEN;
				end if;
        
        --write_state_value <= x"05";
			
			elsif i2c_write_stop_flag = '1' then
			
				-- Pull sda high for the stop condition 
			
				sda_out <= '0';
        
        --write_state_value <= x"06";
			
			else
				i2c_shift_reg_counter <= C_I2C_DATA_LEN;
        
        sda_out <= '1';
        
        
        
        
        --write_state_value <= x"0F";
	
			end if;
			
		end if;
	end process;
	
	
	


end rtl;






















