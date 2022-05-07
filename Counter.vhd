LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY Counter IS
	PORT(	CE, CLK, Clr: IN STD_LOGIC;
			-- Flag10: OUT STD_LOGIC;
			-- Flag11: OUT STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END Counter;

ARCHITECTURE Counter_LOGIC of Counter is


COMPONENT FFD
PORT(	CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		EN : IN STD_LOGIC;
		D : IN STD_LOGIC;
		Q : out STD_LOGIC
		);
END COMPONENT;

SIGNAL Qout: STD_LOGIC_VECTOR (3 downto 0);
SIGNAL sD: STD_LOGIC_VECTOR (3 downto 0);


BEGIN

sD(0) <= CE xor Qout(0);
sD(1) <= (Qout(0) and CE) xor Qout(1);
sD(2) <= (Qout(1) and (Qout(0) and CE)) xor Qout(2);
sD(3) <= ((Qout(1) and (Qout(0) and CE)) and Qout(2)) xor Qout(3);

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
	
	
UFFD3: FFD PORT MAP (
	CLK => CLK,
	EN => CE,
	RESET => Clr,
	D => sD(3),
	Q => Qout(3));
	
	-- Flag10 <= Qout(3) and not Qout(2) and Qout(1) and not Qout(0);
    -- Flag11 <= Qout(3) and not Qout(2) and Qout(1) and Qout(0);
	
	Fcount <= Qout;
	
	--TC <= Qout(0) and Qout(1) and Qout(2) and Qout(3);
	
END Counter_LOGIC;