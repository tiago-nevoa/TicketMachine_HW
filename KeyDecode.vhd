library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyDecode is
	Port(	MCLK : in STD_LOGIC;
			KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
			KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
			Kack : in STD_LOGIC;
			Clr : in STD_LOGIC;
			Kval : out STD_LOGIC;
			K : out STD_LOGIC_VECTOR (3 downto 0)
			);
end KeyDecode;

architecture behavioral of KeyDecode is

COMPONENT KeyScan
    Port (  Kscan, Clr, MCLK, Ksave : in  STD_LOGIC;
				KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
				KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
				Kpress : out  STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT KeyControl
	port(
		CLK, Kack, Kpress, Reset : in STD_LOGIC;
		Kval, Kscan, Ksave : out STD_LOGIC
	);
END COMPONENT;

signal sKeyScan : STD_LOGIC;
signal sKSave : STD_LOGIC;
signal sKPress : STD_LOGIC;
signal sClr : STD_LOGIC;
signal sNOT_MCLK : STD_LOGIC;

begin	
	
sClr <= Clr;
sNOT_MCLK <= not MCLK;

kscan: KeyScan PORT MAP (
	Kscan => sKeyScan,
	Clr => sClr,
	MCLK => sNOT_MCLK,
	Ksave => sKSave,
	KEYPAD_LIN => KEYPAD_LIN,
	KEYPAD_COL => KEYPAD_COL,
	Kpress => sKPress,
	K => K
);

kcontrol: KeyControl PORT MAP (
	CLK => MCLK,
	Kack => Kack,
	Kpress => sKPress,
	Reset => sClr,
	Kval => Kval,
	Kscan => sKeyScan,
	Ksave => sKSave
	
);

end behavioral;