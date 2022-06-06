library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyboardReader is
	Port(	RXclk, MCLK, Clr : in STD_LOGIC;
			KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
			KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
			TXD : out STD_LOGIC
			);
end KeyboardReader;

architecture behavioral of KeyboardReader is

COMPONENT KeyDecode
		Port( MCLK : in STD_LOGIC;
				KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
				KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
				Kack : in STD_LOGIC;
				Clr : in STD_LOGIC;
				Kval : out STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0));
END COMPONENT;

COMPONENT KeyTransmitter
		port(	DAV, TXclk, MCLK, Clr : in  STD_LOGIC;
				Data_In : in STD_LOGIC_VECTOR (3 downto 0); 
				DAC, TXD : out  STD_LOGIC);
END COMPONENT;

signal sKval : STD_LOGIC; --- tudo o que é ligações internas são signals
signal sK : STD_LOGIC_VECTOR(3 downto 0);
signal sDAC : STD_LOGIC;
signal sClr : STD_LOGIC;

begin	
	
sClr <= Clr;

kdecode: KeyDecode PORT MAP (
		MCLK => MCLK,
		KEYPAD_LIN => KEYPAD_LIN,
		KEYPAD_COL => KEYPAD_COL,
		Kack => sDAC,
		Clr => sClr,
		Kval => sKval,
		K => sK
);

ktransmitter: KeyTransmitter PORT MAP (
	DAV => sKval, 
	TXclk => RXclk, 
	MCLK => MCLK, 
	Clr => sClr,
	Data_In => sK,
	DAC => sDAC, 
	TXD => TXD
	
);

end behavioral;