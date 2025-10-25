library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ad4134_lib;
use ad4134_lib.all;

entity ad4134_tb is
end entity ad4134_tb;

architecture RTL of ad4134_tb is

    signal rst_tb     : std_logic;
    signal clk_tb     : std_logic;
    signal clk_tester : std_logic;
    signal test_tb    : std_logic;

    signal write_tb   : std_logic;
    signal read_tb    : std_logic;
    signal datain_tb  : std_logic_vector(7 downto 0);
    signal dataout_tb : std_logic_vector(7 downto 0);
    signal spiaddr_tb : std_logic_vector(7 downto 0);
    signal spidone_tb : std_logic;
    signal mosi_tb    : std_logic;
    signal miso_tb    : std_logic;
    signal spi_clk_out_tb : std_logic;
    signal spi_clk_en_tb : std_logic;
    signal ch_en_tb : std_logic_vector(3 downto 0);
    signal spi_clk_tb : std_logic;
    signal cs_n_tb : std_logic;

    component ad4134_tester
    	port(
    		clk     : out std_logic;
    		rstn    : out std_logic;
    		dataout : in  std_logic_vector(7 downto 0) := (others => '0');
    		spidone : in  std_logic;
    		mosi    : in  std_logic;
    		ch_en   : out std_logic_vector(3 downto 0);
    		miso    : out std_logic
    	);
    end component ad4134_tester;

    component ad4134_control
    	port(
    		clk        : in  std_logic;
    		rstn       : in  std_logic;
    		write      : out std_logic;
    		read       : out std_logic;
    		datain     : out std_logic_vector(7 downto 0);
    		dataout    : in  std_logic_vector(7 downto 0);
    		spiaddr    : out std_logic_vector(7 downto 0);
    		ch_en      : in  std_logic_vector(3 downto 0);
    		spi_clk_en : out std_logic;
    		spidone    : in  std_logic
    	);
    end component ad4134_control;

    component spi_controller
    	port(
    		clk     : in  std_logic;
    		rstn    : in  std_logic;
    		write   : in  std_logic;
    		read    : in  std_logic;
    		datain  : in  std_logic_vector(7 downto 0);
    		dataout : out std_logic_vector(7 downto 0);
    		spiaddr : in  std_logic_vector(7 downto 0);
    		spidone : out std_logic;
    		mosi    : out std_logic;
    		miso    : in  std_logic;
    		cs_n    : out std_logic
    	);
    end component spi_controller;

    component ad4134_clock_generator
        port(
            clk        : in  std_logic;
            rstn       : in  std_logic;
            spi_clk    : out std_logic;
            spi_clk_en : in  std_logic
        );
    end component ad4134_clock_generator;
   


begin

    U_0 : ad4134_tester
        port map(
            clk     => clk_tb,
            rstn    => rst_tb,
            --write   => write_tb,
            --read    => read_tb,
            --datain  => datain_tb,
            dataout => dataout_tb,
            --spiaddr => spiaddr_tb,
            spidone => spidone_tb,
            mosi    => mosi_tb,
            ch_en => ch_en_tb,
            miso    => miso_tb
        );

    U_1 : ad4134_control
        port map(
            clk     => clk_tb,
            rstn    => rst_tb,
            write   => write_tb,
            read    => read_tb,
            datain  => datain_tb,
            dataout => dataout_tb,
            spiaddr => spiaddr_tb,
            ch_en => ch_en_tb,
            spi_clk_en => spi_clk_en_tb,
            spidone => spidone_tb
        );
    

    U_2 : spi_controller
        port map(
            clk     => spi_clk_tb,
            rstn    => rst_tb,
            write   => write_tb,
            read    => read_tb,
            datain  => datain_tb,
            dataout => dataout_tb,
            spiaddr => spiaddr_tb,
            spidone => spidone_tb,
            mosi    => mosi_tb,
            miso    => miso_tb,
            cs_n => cs_n_tb
        );

    U_3 : ad4134_clock_generator
        port map(
            clk        => clk_tb,
            rstn       => rst_tb,
            spi_clk    => spi_clk_tb,
            spi_clk_en => spi_clk_en_tb
        );
    


end architecture RTL;
