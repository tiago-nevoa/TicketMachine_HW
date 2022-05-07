library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity ParityCheck is
	port(	CLK : in std_logic;
		Data : in std_logic;
		Init : in std_logic;
		err : out std_logic);
end ParityCheck;

architecture Behavioral of ParityCheck is

COMPONENT FFD
    PORT(D : IN std_logic;
        EN : IN std_logic;
        Clk : IN std_logic;
        Reset : IN std_logic;          
        Q : OUT std_logic );
END COMPONENT;

signal nextD : std_logic;
SIGNAL sD: std_logic;

begin 

sD <= Data xor nextD;

UFFD0: FFD PORT MAP (
	CLK => CLK,
	EN => '1',
	RESET => Init,
	D => sD,
	Q => nextD);

Err <= nextD;
	
end Behavioral;