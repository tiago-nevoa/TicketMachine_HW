library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyScan is
    Port (  Kscan, Clr, MCLK : in  STD_LOGIC;
				KeyLines : in STD_LOGIC_VECTOR (3 downto 0); --- 4 linhas a entrar no PENC
				Kpress : out  STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0)); -- código da tecla premida 
				-- 3 colunas são saídas
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
signal sdecoderOut : std_logic_vector(2 downto 0);
signal sPENCOut : std_logic_vector(1 downto 0);
signal sREG : std_logic_vector(1 downto 0);

begin

Cont: Counter2bits PORT MAP (
	CE => Kscan,
	CLK => not MCLK, -- falling edge
	Clr => Clr,
	Fcount => sFCount);	
	
Dec: decoder2x4 PORT MAP (
	S => sFCount,
	decoderOut => sdecoderOut);
	
PENC0: PENC PORT MAP (
	INPUT => KeyLines, --- Data keys
   OUTPUT => sPENCOut);	

REG: REG2bits PORT MAP (
	Clr => Clr,
	CLK => not MCLK, -- falling edge
	INPUT => sPENCOut,
   OUTPUT => sREG);	
	
K(0) <= sFCount(0);
K(1) <= sFCount(1);
K(2) <= sREG(0);
K(3) <= sREG(1);


end behavioral;