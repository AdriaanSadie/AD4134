library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

package ad4134_spi is

    type spi_states is (init, spi_addr, spi_data, spi_read, spi_write, spi_cs, spi_end);
    signal spi_state : spi_states;

    procedure SPI_write(
        --constant   start       : in std_logic;
        constant spirw       : in std_logic;
        signal   spibitcount : inout integer range 0 to 31;
        signal   spi_state   : inout spi_states;
        constant spiaddr     : in std_logic_vector(6 downto 0);
        constant spidata     : in std_logic_vector(7 downto 0);
        signal   serialdata  : inout std_logic;
        signal   spidone     : inout std_logic
    );

    procedure SPI_read(
        constant spirw       : in std_logic;
        signal   spibitcount : inout integer range 0 to 31;
        signal   spi_state   : inout spi_states;
        constant spiaddr     : in std_logic_vector(6 downto 0);
        signal   spidata     : out std_logic_vector(7 downto 0);
        signal   serialdata  : inout std_logic;
        signal   spidone     : out std_logic
    );

end package ad4134_spi;

package body ad4134_spi is

    procedure SPI_write(
        --constant start : in std_logic;
        constant spirw       : in std_logic;
        signal   spibitcount : inout integer range 0 to 31;
        signal   spi_state   : inout spi_states;
        constant spiaddr     : in std_logic_vector(6 downto 0);
        constant spidata     : in std_logic_vector(7 downto 0);
        signal   serialdata  : inout std_logic;
        signal   spidone     : inout std_logic
    ) is
    begin
        case spi_state is
            when init =>
                if spidone = '0' then
                    spi_state   <= spi_addr;
                    spibitcount <= 6;
                else
                    spi_state <= init;
                end if;

            when spi_addr =>
                serialdata <= spiaddr(spibitcount);
                if spibitcount = 0 then
                    spibitcount <= 7;
                    spi_state   <= spi_write;
                else
                    spibitcount <= spibitcount - 1;
                end if;

            when spi_write =>
                serialdata <= spidata(spibitcount);
                if spibitcount = 0 then
                    spibitcount <= 7;
                    spi_state   <= spi_cs;
                else
                    spibitcount <= spibitcount - 1;
                end if;

            when spi_cs =>
                spi_state <= spi_end;
            when spi_end =>
                spi_state <= init;
                spidone   <= '1';
            when others =>
                null;
        end case;

    end procedure;

    procedure SPI_read(
        constant spirw       : in std_logic;
        signal   spibitcount : inout integer range 0 to 31;
        signal   spi_state   : inout spi_states;
        constant spiaddr     : in std_logic_vector(6 downto 0);
        signal   spidata     : out std_logic_vector(7 downto 0);
        signal   serialdata  : inout std_logic;
        signal   spidone     : out std_logic
    ) is
    begin

        case spi_state is
            when init =>
                spi_state   <= spi_addr;
                spibitcount <= 6;

            when spi_addr =>
                serialdata <= spiaddr(spibitcount);
                if spibitcount = 0 then
                    spibitcount <= 7;
                    spi_state   <= spi_write;
                else
                    spibitcount <= spibitcount - 1;
                end if;

            when spi_read =>
                spidata(spibitcount) <= serialdata;
                if spibitcount = 0 then
                    spibitcount <= 7;
                else
                    spibitcount <= spibitcount - 1;
                end if;

            when spi_cs =>
                spi_state <= spi_end;
            when spi_end =>
                spi_state <= init;
            when others =>
                null;
        end case;

    end procedure;

end package body;

-- library IEEE;
-- use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.NUMERIC_STD.ALL;

-- entity AD4134_Controller is
--     Port (
--         clk         : in  std_logic;              -- System clock
--         reset       : in  std_logic;              -- Reset
--         drdy        : in  std_logic;              -- Data ready (active low)
--         miso        : in  std_logic;              -- Master in slave out
--         cs_n        : out std_logic := '1';       -- Chip select (active low)
--         sclk        : out std_logic := '0';       -- Serial clock
--         data_out    : out std_logic_vector(23 downto 0); -- Output data
--         data_valid  : out std_logic               -- Data ready flag
--     );

-- end AD4134_Controller;
-- architecture Behavioral of AD4134_Controller is

--     type state_type is (IDLE, WAIT_DRDY, START, READ, DONE);
--     signal state        : state_type := IDLE;

--     signal bit_count    : integer range 0 to 23 := 0;
--     signal shift_reg    : std_logic_vector(23 downto 0) := (others => '0');
--     signal clk_div      : integer := 0;
--     signal sclk_int     : std_logic := '0';

-- begin

--     -- SPI Clock Generator (adjust divider for your target SPI clock rate)
--     process(clk)
--     begin
--         if rising_edge(clk) then
--             if reset = '1' then
--                 clk_div <= 0;
--                 sclk_int <= '0';
--             else
--                 clk_div <= clk_div + 1;
--                 if clk_div = 10 then
--                     sclk_int <= not sclk_int;
--                     clk_div <= 0;
--                 end if;
--             end if;
--         end if;
--     end process;
--     sclk <= sclk_int;

--     case

--     -- SPI State Machine
--     process(clk)
--     begin
--         if rising_edge(clk) then
--             if reset = '1' then
--                 state <= IDLE;
--                 cs_n <= '1';
--                 bit_count <= 0;
--                 shift_reg <= (others => '0');
--                 data_valid <= '0';
--             else
--                 case state is
--                     when IDLE =>
--                         data_valid <= '0';
--                         if drdy = '0' then
--                             state <= START;
--                         end if;

--                     when START =>
--                         cs_n <= '0';
--                         bit_count <= 23;
--                         state <= READ;

--                     when READ =>
--                         if rising_edge(sclk_int) then
--                             shift_reg(bit_count) <= miso;
--                             if bit_count = 0 then
--                                 state <= DONE;
--                             else
--                                 bit_count <= bit_count - 1;
--                             end if;
--                         end if;

--                     when DONE =>
--                         cs_n <= '1';
--                         data_out <= shift_reg;
--                         data_valid <= '1';
--                         state <= WAIT_DRDY;

--                     when WAIT_DRDY =>
--                         if drdy = '1' then
--                             state <= IDLE;
--                         end if;

--                     when others =>
--                         state <= IDLE;
--                 end case;
--             end if;
--         end if;
--     end process;

-- end Behavioral;
