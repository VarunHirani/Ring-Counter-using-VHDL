library IEEE;
use IEEE.std_logic_1164.all;

package EE232_V is
component D_FF is 
	port(D : in std_logic;
		CLK : in std_logic;
		CLRN: in std_logic;
		PREN: in std_logic;
		Q : inout std_logic);
end component;

component CLK_DIV is
    port(CLK        : in  std_logic;             -- Input clock (50 MHz)
        RSTN       : in  std_logic;             -- Active-low reset
        SW         : in  std_logic_vector(8 downto 0); -- Switches for division factor
        CLK_OUT    : out std_logic);              -- Divided clock output);
end component;

component CLK_DIV_1 is 
port(CLK_IN : in std_logic;
	RSTN : in std_logic;
	CLK_OUT: out std_logic);
end component;

component CLK_DIV_100 is
    port(
        CLK_IN  : in  std_logic;   -- Input clock (50 MHz)
        RSTN    : in  std_logic;   -- Active-low reset
        CLK_OUT : out std_logic    -- Output clock
    );
end component;

component CLK_DIV_500 is
    port(
        CLK_IN  : in  std_logic;   -- Input clock (50 MHz)
        RSTN    : in  std_logic;   -- Active-low reset
        CLK_OUT : out std_logic    -- Output clock
    );
end component;

component CLK_DIV_2 is
    port(
        CLK_IN  : in  std_logic;   -- Input clock (50 MHz)
        RSTN    : in  std_logic;   -- Active-low reset
        CLK_OUT : out std_logic    -- Output clock
    );
end component;

component NOT_1 is
    port(I0 : in std_logic;
        O0 : out std_logic );
end component;

component OR_2 is
	port (I0,I1 : in std_logic;
			O0 :out std_logic);
end component;

component AND_2 is
	port( I0, I1 : in std_logic;
			O0 : out std_logic);
end component;

component MUX_2X1 is
    port(I0, I1, S0 : in std_logic; 
        O0 : out std_logic);
end component;

component MUX_4X1 is
    port(I : in std_logic_vector(3 downto 0); 
        S : in std_logic_vector(1 downto 0); 
        O0 : out std_logic);
end component;

component MUX_8X1 is
	port(I: in std_logic_vector(7 downto 0);
		S : in std_logic_vector(2 downto 0);
		O: out std_logic);
end component;

--component CLK_DIV_10 is
--    Port (
--        clk_in  : in  STD_LOGIC;  -- Input clock (50 MHz)
--        reset   : in  STD_LOGIC;  -- Asynchronous reset
--        clk_out : out STD_LOGIC   -- Output clock (10 ms period)
--    );
--end component;
component CLK_DIV_10 is
    Port (
        CLK_IN  : in  std_logic;                           -- Input clock
        RSTN    : in  std_logic;                           -- Active low reset
        CLK_OUT : out std_logic                            -- Output clock
    );
end component;

--component CLK_DIV_3 is
--    Port (
--        clk_in  : in  STD_LOGIC;  -- Input clock (50 MHz)
--        reset   : in  STD_LOGIC;  -- Asynchronous reset
--        clk_out : out STD_LOGIC   -- Output clock (3-second period)
--    );
--end component;

component CLK_DIV_3 is
    Port (
        CLK_IN  : in  std_logic;                           -- Input clock
        RSTN    : in  std_logic;                           -- Active low reset
        CLK_OUT : out std_logic                            -- Output clock
    );
end component;

--component CLK_DIV_15 is
--    Port (
--        clk_in  : in  STD_LOGIC;  -- Input clock (50 MHz)
--        reset   : in  STD_LOGIC;  -- Asynchronous reset
--        clk_out : out STD_LOGIC   -- Output clock (1.5-second period)
--    );
--end component;
component CLK_DIV_15 is
    Port (
        CLK_IN  : in  std_logic;                           -- Input clock
        RSTN    : in  std_logic;                           -- Active low reset
        CLK_OUT : out std_logic                            -- Output clock
    );
end component;
--component CLK_DIV_25 is
--    Port (
--        clk_in  : in  STD_LOGIC;  -- Input clock (50 MHz)
--        reset   : in  STD_LOGIC;  -- Asynchronous reset
--        clk_out : out STD_LOGIC   -- Output clock (2.5-second period)
--    );
--end component;

component CLK_DIV_25 is
    Port (
        CLK_IN  : in  std_logic;                           -- Input clock
        RSTN    : in  std_logic;                           -- Active low reset
        CLK_OUT : out std_logic                            -- Output clock
    );
end component;
end package EE232_V;