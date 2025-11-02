library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bram_writer is
    Port(
        clk     : in  std_logic;
        reset_n : in  std_logic;        -- active low reset
        start   : in  std_logic;        -- trigger flag

        -- BRAM native interface
        addra   : out std_logic_vector(12 downto 0);
        dia     : out std_logic_vector(31 downto 0);
        wea     : out std_logic;
        done    : out std_logic         -- goes high when writing finished
    );
end entity;

architecture rtl of bram_writer is

    type   state_type is (IDLE, WRITE, FINISHED);
    signal state      : state_type := IDLE;

    signal addr_cnt : unsigned(12 downto 0) := (others => '0');
    signal addr_cnt_shifted : unsigned(12 downto 0) := (others => '0');
    signal data_cnt : unsigned(31 downto 0) := (others => '0');

    signal start_r1 : std_logic;
    signal start_r2 : std_logic;

begin

    process(clk, reset_n)
    begin
        if reset_n = '0' then
            state    <= IDLE;
            addr_cnt <= (others => '0');
            data_cnt <= (others => '0');
        elsif rising_edge(clk) then

            start_r1 <= start;
            start_r2 <= start_r1;

            case state is
                when IDLE =>
                    wea <= '0';
                    if (start_r1 = '1' and start_r2 = '0') then
                        addr_cnt <= (others => '0');
                        data_cnt <= (others => '0');
                        state    <= WRITE;
                    end if;

                when WRITE =>
                    wea      <= '1';
                    addr_cnt <= addr_cnt + 1;
                    data_cnt <= data_cnt + 1;

                    if addr_cnt = 2047 then
                        wea   <= '1';   -- still write last word
                        state <= FINISHED;
                    end if;

                when FINISHED =>
                    wea <= '0';
                    -- wait here until reset or another trigger

                    addr_cnt <= to_unsigned(2,13);
                    data_cnt <= (others => '0');
                    state    <= IDLE;

            end case;
        end if;
    end process;

    -- Output assignments

    addr_cnt_shifted <= addr_cnt sll 2;

    addra <= std_logic_vector(addr_cnt_shifted(12 downto 0));

    --dia <= x"deadbeef" when data_cnt(2 downto 0) = "000" else std_logic_vector(data_cnt); -- multiples of 8
     
     --dia <=   std_logic_vector(data_cnt);
    dia <= x"deadbeef";
    done  <= '1' when state = FINISHED else '0';

end architecture;
