library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyScan is
    Port (  Kscan, Clr, MCLK, Ksave : in  STD_LOGIC;
				KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0); --- 4 linhas a entrar no PENC
				KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0); --- 4 colunas
				Kpress : out  STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0)); -- código da tecla premida 
end KeyScan;

architecture behavioral of KeyScan is

COMPONENT Counter2bits
	PORT(CE, CLK, Clr: IN STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(1 downto 0)
			);
END COMPONENT;

COMPONENT PENC
    Port ( INPUT : in STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out STD_LOGIC_VECTOR (1 downto 0);
			  GS : out STD_LOGIC);
END COMPONENT;

COMPONENT decoder2x4
   Port(
		S : in STD_LOGIC_VECTOR(1 downto 0);
		decoderOut : out STD_LOGIC_VECTOR(2 downto 0)
		);
END COMPONENT;


COMPONENT REG2bits
   PORT(	
			Clr, CLK: IN STD_LOGIC;
			Input: IN STD_LOGIC_VECTOR(1 downto 0);
			Output: OUT STD_LOGIC_VECTOR(1 downto 0)
			);
END COMPONENT;

signal sFCount : std_logic_vector(1 downto 0); -- saída do Counter2bits
--signal sdecoderOut : std_logic_vector(2 downto 0);
signal sPENCOut : std_logic_vector(1 downto 0);
signal sREG : std_logic_vector(1 downto 0);

begin

Cont: Counter2bits PORT MAP (
	CE => Kscan,
	CLK => MCLK, -- falling edge
	Clr => Clr,
	Fcount => sFCount);	
	
Dec: decoder2x4 PORT MAP (
	S => sFCount,
	decoderOut => KEYPAD_COL);
	
PENC0: PENC PORT MAP (
	INPUT => KEYPAD_LIN, --- Data keys
   OUTPUT => sPENCOut,
	GS => Kpress);	

REG: REG2bits PORT MAP (
	Clr => Clr,
	CLK => Ksave, -- Ksave que vem do Key Control.
	INPUT => sPENCOut,
   OUTPUT => sREG);	
	
K(0) <= sREG(0); -- linhas correspondem aos bits de menor peso
K(1) <= sREG(1);
K(2) <= sFCount(0); -- colunas correspondem aos bits de maior peso
K(3) <= sFCount(1);

end behavioral;