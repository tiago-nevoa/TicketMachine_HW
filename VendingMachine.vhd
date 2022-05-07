library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity VendingMachine is
port(
		SCLK, SDX, NOT_SS, TicketFinish, Reset : in std_logic;
		busy, Fn : out std_logic;
		HEX0 : out  STD_LOGIC_VECTOR (7 downto 0)
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
		SCLK, SDX, NOT_SS, Fsh, Reset : in std_logic;
		busy, WrT, WrL : out std_logic;
		Dout: out STD_LOGIC_VECTOR (8 downto 0)
		);
END COMPONENT;

COMPONENT TicketDispenser
    Port (  Prt : in  STD_LOGIC;
				InputFinish : in STD_LOGIC; -- assigned to a switch. human input to confirm the ticket was printed
				Din : in  STD_LOGIC_VECTOR (8 downto 0); -- vai ser dividido em 3 signals (RT, DI, OI)
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Fn : out  STD_LOGIC;
				HEX0 : out  STD_LOGIC_VECTOR (7 downto 0)
				);
END COMPONENT;

signal sFn : std_logic;
signal sUsbInput, sUsbOutput : STD_LOGIC_VECTOR (7 downto 0);
signal sWrT, sWrL : std_logic;
signal sDout : STD_LOGIC_VECTOR (8 downto 0);

begin

USBconn: UsbPort PORT MAP (
	inputPort => sUsbInput,
	outputport => sUsbOutput
	);

IOScomp: IOS PORT MAP (
	SCLK => sUsbOutput(0),
	Reset => Reset,
	SDX => sUsbOutput(1),
	NOT_SS => sUsbOutput(2),
	Fsh => sFn,
	busy => sUsbInput(7),
	WrT => sWrT,
	WrL => sWrL,
	Dout => sDout
	);
	
Dispenser: TicketDispenser PORT MAP (
	Prt => sWrT,
	Din => sDout,
	InputFinish => TicketFinish,
	Reset => Reset,
	Clk => SCLK,
	Fn => sFn,
	HEX0 => HEX0
	);


end behavioral;