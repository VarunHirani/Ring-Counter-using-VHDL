library IEEE;
use ieee.std_logic_1164.all;
use work.EE232_V.all;

entity MUX_8X1 is
	port(I: in std_logic_vector(7 downto 0);
		S : in std_logic_vector(2 downto 0);
		O: out std_logic);
end entity;

architecture structural of MUX_8X1 is
signal out_1,out_2,out_3, out_4, out_5, out_6,out_7 : std_logic;

begin 
mux0 : MUX_2X1 port map(I(0),I(1),S(0),out_1);
mux1 : MUX_2X1 port map(I(2),I(3),S(0),out_2);
mux2 : MUX_2X1 port map(I(4),I(5),S(0),out_3);
mux3 : MUX_2X1 port map(I(6),I(7),S(0),out_4);
mux4 : MUX_2X1 port map(out_1,out_2,S(1),out_5);
mux5 : MUX_2X1 port map(out_3,out_4,S(1),out_6);
mux6 : MUX_2X1 port map(out_5,out_6,S(2),O);

end structural;