library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity ShiftRegister is
    Port (  Sin : in  STD_LOGIC;
				EN : in  STD_LOGIC;
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				DataOut : out  STD_LOGIC_VECTOR (9 downto 0));
end ShiftRegister;

architecture ShiftRegister_logic of ShiftRegister is

COMPONENT FFD
    PORT(D : IN std_logic;
        EN : IN std_logic;
        Clk : IN std_logic;
        Reset : IN std_logic;          
        Q : OUT std_logic );
END COMPONENT;

	signal nextD : std_logic_vector(9 downto 0);

begin 

UFFD0: FFD PORT MAP ( -- SHIFT RIGHT. THE FIRST BIT TO SEND WILL BE THE HIGHER BIT
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => Sin,
	Q => nextD(9));
		
UFFD1: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(9),
	Q => nextD(8));
	

UFFD2: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(8),
	Q => nextD(7));
	
	
UFFD3: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(7),
	Q => nextD(6));
	
UFFD4: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(6),
	Q => nextD(5));
	

UFFD5: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(5),
	Q => nextD(4));
	
UFFD6: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(4),
	Q => nextD(3));

UFFD7: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(3),
	Q => nextD(2));

UFFD8: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(2),
	Q => nextD(1));
	
UFFD9: FFD PORT MAP (
	CLK => CLK,
	EN => EN,
	RESET => Reset,
	D => nextD(1),
	Q => nextD(0));
	
--UFFD10: FFD PORT MAP (
--	CLK => CLK,
--	EN => EN,
--	RESET => '0',
--	D => nextD(9),
--	Q => nextD(10));
	
DataOut <= nextD;
	
end ShiftRegister_logic;