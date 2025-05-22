library IEEE;
use IEEE.std_logic_1164.all;

entity CLK_DIV_100 is
    port(
        CLK_IN  : in  std_logic;   
        RSTN    : in  std_logic;   
        CLK_OUT : out std_logic    
    );
end CLK_DIV_100;

architecture behavior of CLK_DIV_100 is
    constant DIV_FACTOR : integer := 5000000; 
    signal counter      : integer := 0;       
    signal temp_clk     : std_logic := '0';   
begin
    process(CLK_IN, RSTN)
    begin
        if RSTN = '0' then
            counter <= 0;            
            temp_clk <= '0';         
        elsif rising_edge(CLK_IN) then
            if counter = DIV_FACTOR - 1 then
                counter <= 0;        
                temp_clk <= not temp_clk; 
            else
                counter <= counter + 1; 
            end if;
        end if;
    end process;

    CLK_OUT <= temp_clk;             
end behavior;
