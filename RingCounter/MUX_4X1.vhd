library ieee;
use ieee.std_logic_1164.ALL;
use work.EE232_V.all;
entity MUX_4X1 is
    port(I : in std_logic_vector(3 downto 0); 
        S : in std_logic_vector(1 downto 0); 
        O0 : out std_logic);
end MUX_4X1;
architecture structure of MUX_4X1 is
component MUX_2X1 is
    port(I0, I1, S0 : in std_logic;
		O0 : out std_logic);
end component;
signal mux_out0, mux_out1 : std_logic;
begin
    mux1: MUX_2X1 port map(I0 => I(0), I1 => I(1), S0 => S(0), O0 => mux_out0);
    mux2: MUX_2X1 port map(I0 => I(2), I1 => I(3), S0 => S(0), O0 => mux_out1);
    mux3: MUX_2X1 port map(I0 => mux_out0, I1 => mux_out1, S0 => S(1), O0 => O0);
end structure;
