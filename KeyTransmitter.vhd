library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyTransmitter is
    Port (  DAV, TXclk, MCLK, Clr : in  STD_LOGIC;
				Data_In : in STD_LOGIC_VECTOR (3 downto 0); 
				DAC, TXD : out  STD_LOGIC;);
end KeyTransmitter;

architecture behavioral of KeyTransmitter is

COMPONENT Counter3bits
	PORT(CE, CLK, Clr: IN STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(2 downto 0)
			);
END COMPONENT;


COMPONENT REG4bits
   PORT(	
			Clr, CLK, Enable IN STD_LOGIC; 
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

signal sFCount : std_logic_vector(2 downto 0); -- saída do Counter3bits
signal sREG : std_logic_vector(3 downto 0);
signal sMUX : std_logic;

begin


REG: REG4bits PORT MAP (
	Clr => Clr,
	CLK => MCLK,
	Enable => DAV,
	INPUT => Data_In,
   OUTPUT => sREG);

Cont: Counter3bits PORT MAP (
	CE => '1', --- verificar como damos CE
	CLK => TXclk,
	Clr => Clr,
	Fcount => sFCount);	

MUX: MUX_8x1 PORT MAP ( --- pedir para me explicarem melhor mais tarde (protocolo comunicação)
	Data_In(0) => '0',
	Data_In(1) => '1',
	Data_In(2) => sREG(0),
	Data_In(3) => sREG(1),
	Data_In(4) => sREG(2),
	Data_In(5) => sREG(3),
	Data_In(6) => '0',
	Data_In(7) => '1',
	S => sFCount,
   Data_Out => sMUX);		
	
TXD <= sMUX OR '0'; --- possivelmente o enable do clock (necessita estar a 1 quando não está a transmitir: protocolo comunicação)
---- criar condição de paragem do contador bloco == 6 ?

end behavioral;