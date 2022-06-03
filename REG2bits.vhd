LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY REG2bits IS
	PORT(	
			Clr, CLK: IN STD_LOGIC;
			Input: IN STD_LOGIC_VECTOR(1 downto 0);
			Output: OUT STD_LOGIC_VECTOR(1 downto 0)
			);
END REG2bits;

ARCHITECTURE REG2bits_LOGIC of REG2bits is


COMPONENT FFD
PORT(	CLK : in STD_LOGIC;
		RESET : in STD_LOGIC;
		EN : IN STD_LOGIC;
		D : IN STD_LOGIC;
		Q : out STD_LOGIC
		);
END COMPONENT;

begin

UFFD0: FFD PORT MAP (
	CLK => CLK,
	EN => '1',
	RESET => Clr,
	D => Input(0),
	Q => Output(0));
		
UFFD1: FFD PORT MAP (
	CLK => CLK,
	EN => '1',
	RESET => Clr,
	D => Input(1),
	Q => Output(1));
	
END REG2bits_LOGIC;