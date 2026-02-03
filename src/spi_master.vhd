library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_master is
    port(
        clk         : in  std_logic; -- Global firmware clock
        rst_n       : in  std_logic;
        spi_clk_in  : in std_logic; -- Provide a slower SPI clock from PLL here

        spi_write   : in  std_logic;
        spi_read    : in  std_logic;

        datain      : in  std_logic_vector(7 downto 0);
        dataout     : out std_logic_vector(7 downto 0);
        spiaddr     : in  std_logic_vector(7 downto 0);

        spidone     : out std_logic;

        mosi        : out std_logic;
        miso        : in  std_logic;
        cs_n        : out std_logic;
        spi_clk     : out std_logic
    );
end entity spi_master;

architecture rtl of spi_master is

    type spi_state_t is (IDLE, WRITE, READ, FINISH);
    signal state : spi_state_t;

    signal shift_out : std_logic_vector(15 downto 0);
    signal shift_in  : std_logic_vector(7 downto 0);

    signal bit_cnt   : integer range 0 to 16;
    signal sclk_active     : std_logic;

    signal spi_write_i, spi_write_ii : std_logic;
    signal spi_read_i,  spi_read_ii  : std_logic;

    signal spidone_i : std_logic;
    signal cs_n_i    : std_logic;

    signal spi_start : std_logic;

begin

    spidone <= spidone_i;
    dataout <= shift_in;
    cs_n    <= cs_n_i;
    spi_clk <= spi_clk_in when sclk_active = '1' else '0';




    -------------------------------------------------------------------
    -- Double-flop control inputs and check for rising edge
    -------------------------------------------------------------------
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            spi_write_i  <= '0';
            spi_write_ii <= '0';
            spi_read_i   <= '0';
            spi_read_ii  <= '0';

            spi_start <= '0';
        elsif rising_edge(clk) then
            spi_write_i  <= spi_write;
            spi_write_ii <= spi_write_i;
            spi_read_i   <= spi_read;
            spi_read_ii  <= spi_read_i;

            if (spi_write_ii = '0') and (spi_write_i = '1') then

                shift_out <= '0' & spiaddr(6 downto 0) & datain;  
                state <= WRITE;
            elsif (spi_read_ii = '0') and (spi_read_i = '1') then
                state <= READ;
            else
                state <= IDLE;
            end if;


        end if;
    end process;

    -------------------------------------------------------------------
    -- SPI FSM
    -------------------------------------------------------------------
    process(clk, rst_n)
    begin
        if rst_n = '0' then
            state     <= IDLE;
            cs_n_i    <= '1';
            sclk_active <= '0';
            mosi      <= '0';
            bit_cnt   <= 0;
            shift_out <= (others => '0');
            shift_in  <= (others => '0');
            spidone_i <= '0';

        elsif falling_edge(clk) then
            spidone_i <= '0';

            case state is

                --------------------------------------------------------
                when IDLE =>
                    cs_n_i <= '1';
                    sclk   <= '0';

                    if (spi_write_ii = '0') and (spi_write_i = '1') then

                        shift_out <= '0' & spiaddr(6 downto 0) & datain;

                        state <= WRITE;
                    elsif (spi_read_ii = '0') and (spi_read_i = '1') then
                        state <= READ;
                    else
                        state <= IDLE;
                    end if;

                    bit_cnt <= 16;
                    

                --------------------------------------------------------
                when WRITE =>


                    
                    if (bit_cnt > 0) then

                    else    

                    end if;

                --------------------------------------------------------
                when READ =>

                --------------------------------------------------------
                when FINISH =>
                    cs_n_i    <= '1';
                    sclk      <= '0';
                    spidone_i <= '1';
                    state     <= IDLE;

                --------------------------------------------------------
                when others =>

            end case;
        end if;
    end process;

end architecture rtl;