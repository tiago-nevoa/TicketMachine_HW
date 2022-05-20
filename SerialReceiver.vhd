library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity SerialReceiver is
	port(	DX : in std_logic;
		MCLK : in std_logic; -- master clock (clock interno) que tem de ser mais rapido que os outros. Vai para controlo
		CLK : in std_logic; -- SCLK (Software clock)
		NOT_SS : in std_logic;
		Accept : in std_logic;
		Reset : in std_logic;
		DataOut : out  STD_LOGIC_VECTOR (9 downto 0);
		Dxval, busy : out std_logic);
end SerialReceiver;

architecture Behavioral of SerialReceiver is

COMPONENT SerialControl
port(
		NOT_SS, accept, pFlag, dFlag, RXError: in std_logic;
		Reset: in std_logic; -- reset global ligado a todos os componentes, vem de fora
		CLK: in std_logic; --
		Wr, Init, DXVal, Busy: out std_logic
		);
END COMPONENT;

COMPONENT Counter
	PORT(	CE, CLK, Clr: IN STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END COMPONENT;

COMPONENT ParityCheck
	port(	CLK : in std_logic;
		Data : in std_logic;
		Init : in std_logic;
		err : out std_logic);
END COMPONENT;

COMPONENT ShiftRegister
    Port (  Sin : in  STD_LOGIC;
				EN : in  STD_LOGIC;
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				DataOut : out  STD_LOGIC_VECTOR (9 downto 0));
END COMPONENT;


signal SDX : std_logic; -- liga ao shift register e ao parity check
signal SCLK: std_logic; -- liga ao shift register, counter e parity check
signal sWr: std_logic;
signal sInit : std_logic;
signal sPFlag : std_logic;
signal sDFlag : std_logic;
signal sRXerror : std_logic;
signal sFCount : std_logic_vector(3 downto 0);
signal sReset : std_logic;

begin 
sReset <= Reset;
sDX <= DX;
sCLK <= CLK;
sDFlag <= sFCount(3) and not sFCount(2) and sFCount(1) and not sFCount(0); --Dflag = 10
--sDFlag <= sFCount(3) and not sFCount(2) and not sFCount(1) and sFCount(0); -- Dflag = 9
sPFlag <= sFCount(3) and not sFCount(2) and sFCount(1) and sFCount(0); --Dflag = 11
--sPFlag <= sFCount(3) and not sFCount(2) and sFCount(1) and not sFCount(0); -- Pflag = 10

serialC: SerialControl PORT MAP (
	NOT_SS => NOT_SS,
	accept => accept,
	pFlag => sPFlag,
	dFlag => sDFlag,
	RXError => sRXerror,
	Reset => sReset,
	CLK => MCLK,
	Wr => sWr,
	Init => sInit,
	DXVal => Dxval,
	Busy => Busy);
	
Counter0: Counter PORT MAP (
	CE => '1',
	CLK => sCLK,
	Clr => sInit,
	Fcount => sFCount);	

ParityCheck0: ParityCheck PORT MAP (
	CLK => sCLK,
	Data => sDX,
	Init => sInit,
	err => sRXerror);	

ShiftRegister0: ShiftRegister PORT MAP (
	Sin => sDX,
	Reset => sReset,
	EN => sWr,
	Clk => sCLK,
	DataOut => DataOut);


end Behavioral;