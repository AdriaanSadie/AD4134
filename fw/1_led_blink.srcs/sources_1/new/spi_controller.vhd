library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_controller is
    port(
        clk         : in  std_logic;
        rstn        : in  std_logic;
        --start : in std_logic;
        write       : in  std_logic;
        read        : in  std_logic;
        datain      : in  std_logic_vector(7 downto 0); --SPI Data to be transmitted to AD4134 
        dataout     : out std_logic_vector(7 downto 0); --SPI Data that is read from AD4134
        spiaddr     : in  std_logic_vector(7 downto 0); --Address of register of AD4134
        spidone     : out std_logic;
        mosi        : out std_logic; --SDO
        miso        : in  std_logic;  --SDI
        cs_n        : out std_logic 

    );
end entity spi_controller;

architecture RTL of spi_controller is

    type spi_states is (init, spi_addr, spi_data, spi_read, spi_write, spi_cs, spi_end);
    signal spi_state : spi_states;

    --constant addrlen : integer := 7;
    --constant datalen : integer := 8;

    signal spibitcount : integer range 0 to 31;
    signal spidone_i   : std_logic;
    signal spiendcount : integer range 0 to 10;
    signal dataout_i   : std_logic_vector(7 downto 0);
    signal mosi_i      : std_logic;
    signal cs_n_i      : std_logic;
    --signal datain_i    : std_logic_vector(7 downto 0);
    --signal spiaddr_i   : std_logic_vector(6 downto 0);
    signal spi_divide  : integer range 0 to 100;

begin

    spidone     <= spidone_i;
    dataout     <= dataout_i;
    cs_n <= cs_n_i;


    spi_process : process(clk, rstn) is
    begin
        if rstn = '0' then

            spibitcount <= 0;
            spidone_i   <= '0';
            dataout_i   <= (others => '0');
            mosi_i      <= '0';
            spiendcount <= 0;
            cs_n_i <= '1';


        elsif rising_edge(clk) then

            case spi_state is
                when init =>
                    if spidone_i = '0' and ( write ='1' or read = '1') then
                        spi_state   <= spi_addr;
                        spibitcount <= 7;
                        cs_n_i <= '0';
                    else
                        spi_state <= init;
                    end if;

                when spi_addr =>
                    mosi <= spiaddr(spibitcount);
                    if spibitcount = 0 then
                        if (write = '1') then
                            spibitcount <= 7;
                            spi_state   <= spi_write;
                        elsif (read = '1') then
                            spibitcount <= 7;
                            spi_state   <= spi_read;
                        end if;
                    else
                        spibitcount <= spibitcount - 1;
                    end if;

                when spi_write =>
                    mosi <= datain(spibitcount);
                    if spibitcount = 0 then
                        spibitcount <= 7;
                        spi_state   <= spi_cs;
                    else
                        spibitcount <= spibitcount - 1;
                    end if;

                when spi_read =>
                    dataout_i(spibitcount) <= miso;
                    if spibitcount = 0 then
                        spibitcount <= 7;
                        spi_state   <= spi_cs;
                    else
                        spibitcount <= spibitcount - 1;
                    end if;

                when spi_cs =>
                    spi_state   <= spi_end;
                    cs_n_i <= '1';
                    spiendcount <= 3;
                when spi_end =>
                    spidone_i  <= '1';
                    if spiendcount = 0 then
                        spidone_i  <= '0';
                        spi_state <= init;
                    else
                        spiendcount <= spiendcount - 1;
                    end if;
                when others =>
                    spi_state <= init;
            end case;

        end if;
    end process spi_process;

end architecture RTL;
