--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity CLK_DIV_10 is
--    Port (
--        clk_in  : in  STD_LOGIC;  
--        reset   : in  STD_LOGIC;  
--        clk_out : out STD_LOGIC   
--    );
--end CLK_DIV_10;
--
--architecture Behavioral of CLK_DIV_10 is
--    constant DIVISOR : integer := 500000; 
--    signal counter   : integer range 0 to DIVISOR - 1 := 0;
--    signal toggle    : STD_LOGIC := '0';
--begin
--    process(clk_in, reset)
--    begin
--        if reset = '1' then
--            counter <= 0;
--            toggle <= '0';
--        elsif rising_edge(clk_in) then
--            if counter = DIVISOR - 1 then
--                counter <= 0;
--                toggle <= not toggle; 
--            else
--                counter <= counter + 1;
--            end if;
--        end if;
--    end process;
--
--    clk_out <= toggle;
--end Behavioral;



library IEEE;                                               
use IEEE.STD_LOGIC_1164.ALL;                                

entity CLK_DIV_10 is
    Port (
        CLK_IN  : in  std_logic;                           -- Input clock
        RSTN    : in  std_logic;                           -- Active low reset
        CLK_OUT : out std_logic                            -- Output clock
    );
end entity;

architecture FUNCTIONALITY of CLK_DIV_10 is

    signal CNT   : integer := 1;                           -- Counter signal
    signal TEMP  : std_logic := '0';                       -- Temporary clock output

    constant DIV_FACTOR : integer := 250000;               -- Clock division factor for 10-millisecond period

begin

    process(CLK_IN, RSTN)
    begin
        if (RSTN = '0') then                               -- Asynchronous active low reset
            CNT <= 1;
            TEMP <= '0';

        elsif (CLK_IN'event and CLK_IN = '1') then         -- Rising edge of clock
            CNT <= CNT + 1;

            if (CNT = DIV_FACTOR) then                    -- Toggle TEMP when counter matches division factor
                TEMP <= not TEMP;
                CNT <= 1;
            end if;

        end if;
        CLK_OUT <= TEMP;                                   -- Assign TEMP to output
    end process;

end architecture;
