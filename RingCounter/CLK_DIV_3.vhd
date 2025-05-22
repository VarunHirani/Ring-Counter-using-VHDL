--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity CLK_DIV_3 is
-- Port (
--	  clk_in  : in  STD_LOGIC;  
--	  reset   : in  STD_LOGIC;  
--	  clk_out : out STD_LOGIC   
-- );
--end CLK_DIV_3;
--
--architecture Behavioral of CLK_DIV_3 is
--signal CNT: integer:=1;
--signal TEMP: std_logic:='0';
--begin 
--process(CLK_IN,reset) 
--begin 
--if(reset = '0') then
--CNT<=1;
--TEMP<='0';
--elsif (CLK_IN'event and CLK_IN = '1') then 
--CNT <= CNT+1;
--if(CNT = 75000000) then 
--	temp <= not temp;
--	cnt<=1;
--end if;
--end if;
--clk_out<=temp;
--end process;
--end architecture;


library IEEE;                                               
use IEEE.STD_LOGIC_1164.ALL;                                

entity CLK_DIV_3 is
    Port (
        CLK_IN  : in  std_logic;                           
        RSTN    : in  std_logic;                           
        CLK_OUT : out std_logic                            
    );
end entity;

architecture FUNCTIONALITY of CLK_DIV_3 is

    signal CNT   : integer := 1;                           
    signal TEMP  : std_logic := '0';                       

    constant DIV_FACTOR : integer := 75000000;             

begin

    process(CLK_IN, RSTN)
    begin
        if (RSTN = '0') then                               
            CNT <= 1;
            TEMP <= '0';

        elsif (CLK_IN'event and CLK_IN = '1') then         
            CNT <= CNT + 1;

            if (CNT = DIV_FACTOR) then                    
                TEMP <= not TEMP;
                CNT <= 1;
            end if;

        end if;
        CLK_OUT <= TEMP;                                  
    end process;

end architecture;
