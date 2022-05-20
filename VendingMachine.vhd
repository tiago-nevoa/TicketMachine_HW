library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity VendingMachine is
port(
		MCLK : in std_logic; --pino especifico da placa
		FnSwitch : in std_logic;
		Reset : in std_logic; --Reset é PIN botao da FPGA. vem de fora. e é 1 quando nao pressionado (temos de negar)
		WrL : out std_logic; --Enable LCD
		HEX0 : out  STD_LOGIC_VECTOR (7 downto 0);
		HEX1 : out  STD_LOGIC_VECTOR (7 downto 0);
		HEX2 : out  STD_LOGIC_VECTOR (7 downto 0)
		);
end VendingMachine;

architecture behavioral of VendingMachine is

COMPONENT UsbPort
	PORT
	(
		inputPort:  IN  STD_LOGIC_VECTOR(7 DOWNTO 0); -- busy
		outputPort :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0) --sclk, sdx, notss
	);
END COMPONENT;

COMPONENT IOS
port(
		MCLK, SCLK, SDX, NOT_SS, Fsh, Reset : in std_logic;
		busy, WrT, WrL : out std_logic;
		Dout: out STD_LOGIC_VECTOR (8 downto 0)
		);
END COMPONENT;

COMPONENT TicketDispenser
    Port (  Prt : in  STD_LOGIC;
				--InputFinish : in STD_LOGIC; -- assigned to a switch. human input to confirm the ticket was printed. Metemos diretamente como input do vending machine
				Din : in  STD_LOGIC_VECTOR (8 downto 0); -- vai ser dividido em 3 signals (RT, DI, OI)
				HEX0 : out  STD_LOGIC_VECTOR (7 downto 0); -- 3 HEXs para origem destino e ida e volta (cada um 8 bits)
				HEX1 : out  STD_LOGIC_VECTOR (7 downto 0);
				HEX2 : out  STD_LOGIC_VECTOR (7 downto 0)				
				);
END COMPONENT;

signal sFn : std_logic;
signal sReset : std_logic;
signal sUsbInput, sUsbOutput : STD_LOGIC_VECTOR (7 downto 0);
signal sWrT, sWrL : std_logic;
signal sDout : STD_LOGIC_VECTOR (8 downto 0);

begin

sReset <= not Reset;

USBconn: UsbPort PORT MAP (
	inputPort => sUsbInput,
	outputport => sUsbOutput
	);

IOScomp: IOS PORT MAP (
	MCLK => MCLK,
	SCLK => sUsbOutput(0),
	Reset => sReset,
	SDX => sUsbOutput(1),
	NOT_SS => sUsbOutput(2),
	Fsh => FnSwitch,
	busy => sUsbInput(7),
	WrT => sWrT,
	WrL => sWrL,
	Dout => sDout	
	);
	
Dispenser: TicketDispenser PORT MAP (
	Prt => sWrT,
	Din => sDout,
	--InputFinish => TicketFinish,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2
	);


end behavioral;