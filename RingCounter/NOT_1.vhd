library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOT_1 is
    port(I0 : in std_logic;
        O0 : out std_logic );
end NOT_1;
architecture structure of NOT_1 is
begin
    O0 <= not I0;
end structure;
