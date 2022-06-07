library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyTransmitter is
    Port (  DAV, TXclk, MCLK, Clr : in  STD_LOGIC;
				Data_In : in STD_LOGIC_VECTOR (3 downto 0); 
				DAC, TXD : out  STD_LOGIC);
end KeyTransmitter;

architecture behavioral of KeyTransmitter is

COMPONENT KeyTransmitterControl
	port(
		DAV, TCount, CLK, Reset : in STD_LOGIC;
		DAC, EnTXD, EnReg, EnCounter, RstCounter : out STD_LOGIC
	);
END COMPONENT;

COMPONENT Counter3bits
	PORT(	CE, CLK, Clr: IN STD_LOGIC;
			Tcount: OUT STD_LOGIC;
			Count : OUT STD_LOGIC_VECTOR(2 downto 0)
			);
END COMPONENT;


COMPONENT REG4bits -- vamos armazenar/ transmitir uma palavra de 4 bits
   PORT(	
			Clr, CLK, Enable : IN STD_LOGIC; 
			Input: IN STD_LOGIC_VECTOR(3 downto 0);
			Output: OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END COMPONENT;


COMPONENT MUX_8x1
	PORT(
			Data_In : in STD_LOGIC_VECTOR(7 downto 0);
			S : in STD_LOGIC_VECTOR(2 downto 0);
			Data_Out: out STD_LOGIC
			);
END COMPONENT;

signal sTCount : STD_LOGIC; -- saída do Counter3bits
signal sREG : std_logic_vector(3 downto 0);
signal sMUX : std_logic;
signal sData_In : std_logic_vector(7 downto 0);
signal sMCLK : std_logic;
signal sClr : std_logic;
signal sEnTXD : std_logic;
signal sEnReg : std_logic;
signal sEnCounter : std_logic;
signal sRstCounter : std_logic;
signal sCount : std_logic_vector(2 downto 0);
begin

sMCLK <= MCLK;
sClr <= Clr;

sData_In(0) <= sEnTXD;
sData_In(1) <= '1';
sData_In(2) <= sREG(0);
sData_In(3) <= sREG(1);
sData_In(4) <= sREG(2);
sData_In(5) <= sREG(3);
sData_In(6) <= '0';
sData_In(7) <= '1';
	
keyTransControl: KeyTransmitterControl PORT MAP ( 
	DAV => DAV,
	TCount => sTCount,
   CLK => sMCLK,
	Reset => sClr,
	DAC => DAC,
	EnTXD => sEnTXD,
	EnReg => sEnReg,
	EnCounter => sEnCounter,
	RstCounter => sRstCounter);

REG: REG4bits PORT MAP (
	Clr => sClr,
	CLK => sMCLK,
	Enable => sEnReg,
	INPUT => Data_In,
   OUTPUT => sREG);

Cont: Counter3bits PORT MAP (
	CE => sEnCounter,
	CLK => TXclk,
	Clr => sRstCounter,
	Count => sCount,
	Tcount => sTCount);	

MUX: MUX_8x1 PORT MAP ( 
	Data_In => sData_In,
	S => sCount,
   Data_Out => sMUX);		
	
TXD <= sMUX; 

end behavioral;