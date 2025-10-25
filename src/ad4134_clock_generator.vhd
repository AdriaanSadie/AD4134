library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ad4134_clock_generator is
    port(
        clk : in std_logic;
        rstn: in std_logic;
        spi_clk : out  std_logic;
        spi_clk_en : in std_logic
    );
end entity ad4134_clock_generator;

architecture RTL of ad4134_clock_generator is

    signal spi_divide : integer range 0 to 100;
    signal spi_clk_i : std_logic;

    
    
begin

    spi_clk <= spi_clk_i;

    spi_clk_div : process(clk, rstn) is
    begin
        if rstn = '0' then

            spi_divide <= 99;
            spi_clk_i    <= '0';

        elsif rising_edge(clk) then
            if spi_clk_en = '1' or spi_clk_en = '0' then
                if spi_divide = 0 then
                    spi_divide <= 99;
                    spi_clk_i    <= not (spi_clk_i);
                else
                    spi_divide <= spi_divide - 1;
                end if;
            else
                spi_clk_i <= '0';
            end if;

        end if;
    end process spi_clk_div;

end architecture RTL;
