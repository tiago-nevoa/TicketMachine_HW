LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY Counter3bits IS
	PORT(	CE, CLK, Clr: IN STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(2 downto 0)
			);
END Counter3bits;

ARCHITECTURE Counter_LOGIC of Counter3bits is


COMPONENT FFD
PORT(	CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		EN : IN STD_LOGIC;
		D : IN STD_LOGIC;
		Q : out STD_LOGIC
		);
END COMPONENT;

SIGNAL Qout: STD_LOGIC_VECTOR (2 downto 0);
SIGNAL sD: STD_LOGIC_VECTOR (2 downto 0);


BEGIN

sD(0) <= CE xor Qout(0);
sD(1) <= (Qout(0) and CE) xor Qout(1);
sD(2) <= (Qout(1) and (Qout(0) and CE)) xor Qout(2);


UFFD0: FFD PORT MAP (
	CLK => CLK,
	EN => CE,
	RESET => Clr,
	D => sD(0),
	Q => Qout(0));
		
UFFD1: FFD PORT MAP (
	CLK => CLK,
	EN => CE,
	RESET => Clr,
	D => sD(1),
	Q => Qout(1));
	
UFFD2: FFD PORT MAP (
	CLK => CLK,
	EN => CE,
	RESET => Clr,
	D => sD(2),
	Q => Qout(2));
	

	Fcount <= Qout;
	
	
END Counter_LOGIC;