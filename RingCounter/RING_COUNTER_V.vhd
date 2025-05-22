library ieee;
use ieee.std_logic_1164.all;
use work.EE232_v.all;

entity RING_COUNTER_V is 
	port(CLK : in std_logic;
	switch: in std_logic_vector(2 downto 0);
		RSTN : in std_logic;
		Q_out : inout std_logic_vector(9 downto 0));
end entity;

architecture structural of RING_COUNTER_V is 
signal clk_1,clk_100,clk_500,clk_2, clk_f, clk_3,clk_10,clk_15, clk_25 : std_logic;
signal clk_vec : std_logic_vector(7 downto 0);
begin 

clk_divider1: CLK_DIV_1 port map(clk, RSTN, clk_1);
clk_divider2: CLK_DIV_100 port map(clk,RSTN,clk_100);
clk_divider3: CLK_DIV_500 port map(clk, RSTN, clk_500);
clk_divider4: CLK_DIV_2 port map(clk,RSTN,clk_2);
clk_divider5 : CLK_DIV_3 port map(clk,RSTN,clk_3);
clk_divider6 : CLK_DIV_10 port map(clk,RSTN, clk_10);
clk_divider7 : CLK_DIV_15   port map(clk,rstn,clk_15 );
clk_divider8 : CLK_DIV_25  port map(clk,rstn,clk_25 );
clk_vec(0) <= clk_100;
clk_vec(1) <= clk_500;
clk_vec(2) <= clk_1;
clk_vec(3) <= clk_2;
clk_vec(4) <= clk_3;
clk_vec(5) <= clk_10;
clk_vec(6) <= clk_15;
clk_vec(7) <= clk_25;
mux_o : MUX_8X1 port map(clk_vec,switch,clk_f);
Dff_0 : D_FF port map (Q_out(9),clk_f,'1', RSTN, Q_out(0));
Dff_1 : D_FF port map (Q_out(0),clk_f,RSTN, '1', Q_out(1));
Dff_2 : D_FF port map (Q_out(1),clk_f,RSTN, '1', Q_out(2));
Dff_3 : D_FF port map (Q_out(2),clk_f,RSTN, '1', Q_out(3));
Dff_4 : D_FF port map (Q_out(3),clk_f,RSTN, '1', Q_out(4));
Dff_5 : D_FF port map (Q_out(4),clk_f,RSTN, '1', Q_out(5));
Dff_6 : D_FF port map (Q_out(5),clk_f,RSTN, '1', Q_out(6));
Dff_7 : D_FF port map (Q_out(6),clk_f,RSTN, '1', Q_out(7));
Dff_8 : D_FF port map (Q_out(7),clk_f,RSTN, '1', Q_out(8));
Dff_9 : D_FF port map (Q_out(8),clk_f,RSTN, '1', Q_out(9));

end structural;
