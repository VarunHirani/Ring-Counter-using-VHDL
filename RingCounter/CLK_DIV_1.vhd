library ieee;
use ieee.std_logic_1164.all;
entity CLK_DIV_1 is 
port(CLK_IN : in std_logic;
	RSTN : in std_logic;
	CLK_OUT: out std_logic);
end entity;

architecture functionality of CLK_DIV_1 is
signal CNT:integer:=1 ;
signal temp:std_logic:='0';

begin 
process(CLK_IN,RSTN)
begin 
	if(RSTN = '0') then 
		CNT<=1;
		TEMP<='0';
	elsif(CLK_IN'event and CLK_IN = '1') then 
		CNT <= CNT + 1;
		if (CNT = 25000000) then
			TEMP <= not temp;
			cnt<=1;
		end if;
	end if;
	CLK_OUT <= TEMP;
end process;
end architecture;