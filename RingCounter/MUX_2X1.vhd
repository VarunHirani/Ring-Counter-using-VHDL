library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.EE232_V.all;
entity MUX_2X1 is
    port(I0, I1, S0 : in std_logic; 
        O0 : out std_logic);
end MUX_2X1;
architecture structure of MUX_2X1 is
    signal not_s0, and0, and1 : std_logic;
begin
    Mux_NOT: NOT_1 port map(I0 => S0, O0 => not_s0);
    Mux_AND0: AND_2 port map(I0 => I0, I1 => not_s0, O0 => and0);
    Mux_AND1: AND_2 port map(I0 => I1, I1 => S0, O0 => and1);
    Mux_OR: OR_2 port map(I0 => and0, I1 => and1, O0 => O0);
end structure;