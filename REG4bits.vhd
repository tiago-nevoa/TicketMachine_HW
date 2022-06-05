LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY REG4bits IS
	PORT(	
			Clr, CLK, Enable : IN STD_LOGIC; -- quando enable true (ou seja quando tem DAV -> data available), aceita alterações
			Input: IN STD_LOGIC_VECTOR(3 downto 0);
			Output: OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END REG4bits;

ARCHITECTURE REG4bits_LOGIC of REG4bits is


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
	EN => Enable,
	RESET => Clr,
	D => Input(0),
	Q => Output(0));
		
UFFD1: FFD PORT MAP (
	CLK => CLK,
	EN => Enable,
	RESET => Clr,
	D => Input(1),
	Q => Output(1));
	
	
UFFD2: FFD PORT MAP (
	CLK => CLK,
	EN => Enable,
	RESET => Clr,
	D => Input(2),
	Q => Output(2));
		
UFFD3: FFD PORT MAP (
	CLK => CLK,
	EN => Enable,
	RESET => Clr,
	D => Input(3),
	Q => Output(3));
	
END REG4bits_LOGIC;