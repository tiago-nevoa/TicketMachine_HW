library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity FFD is
	port(	CLK : in std_logic;
		RESET : in std_logic;
		EN : in std_logic;
		D : in std_logic;
		Q : out std_logic);
end FFD;

architecture Behavioral of FFD is

begin


Q <= '0' when RESET = '1' else D when rising_edge(clk) and EN = '1';


end Behavioral;