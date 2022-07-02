library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity VendingMachine is
port(
		MCLK : in std_logic; --pino especifico da placa		
		FnSwitch : in std_logic;
		Reset : in std_logic; --Reset é PIN botao da FPGA. vem de fora. e é 1 quando nao pressionado (temos de negar)
		WrL : out std_logic; --Enable LCD (LCD_EN)
		HEX0 : out  STD_LOGIC_VECTOR (7 downto 0);
		HEX1 : out  STD_LOGIC_VECTOR (7 downto 0);
		HEX2 : out  STD_LOGIC_VECTOR (7 downto 0);
		LCD_DATA : out STD_LOGIC_VECTOR (8 downto 0); -- + LCD_RS, LCD_DATA[0..7]
		KEYPAD_LIN	: IN STD_LOGIC_VECTOR(3 downto 0);
		KEYPAD_COL	: OUT STD_LOGIC_VECTOR(2 downto 0);
		SwitchMaintenance : in std_logic;
		HasCoin : in std_logic;
		Coin	: IN STD_LOGIC_VECTOR(2 downto 0);
		COIN_ACCEPT : out std_logic; -- from usbport
		COIN_EJECT : out std_logic; -- from usbport
		COIN_COLLECT : out std_logic -- from usbport
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

COMPONENT LCD
    Port (  Din : in  STD_LOGIC_VECTOR (8 downto 0);
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				E : in  STD_LOGIC;
				LCD_DATA : out STD_LOGIC_VECTOR (8 downto 0)
				);
END COMPONENT;

COMPONENT KeyboardReader
    Port(    RXclk, MCLK, Clr : in STD_LOGIC;
            KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
            KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
            TXD : out STD_LOGIC
            );
END COMPONENT;

signal sFn : std_logic;
signal sReset : std_logic;
signal sUsbInput, sUsbOutput : STD_LOGIC_VECTOR (7 downto 0);
signal sWrT, sWrL : std_logic;
signal sDout : STD_LOGIC_VECTOR (8 downto 0);

begin

sReset <= not Reset; -- porque o switch na placa é active low

USBconn: UsbPort PORT MAP (
    inputPort => sUsbInput,
    outputport => sUsbOutput
    );

COIN_ACCEPT <= sUsbOutput(5);
COIN_EJECT <= sUsbOutput(6);
COIN_COLLECT <= sUsbOutput(7);
	 
uIOS: IOS PORT MAP (
	MCLK => MCLK,
	SCLK => sUsbOutput(2),
	Reset => sReset,
	SDX => sUsbOutput(1),
	NOT_SS => sUsbOutput(3),
	Fsh => FnSwitch,
	busy => sUsbInput(6),
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
	

LCD0: LCD PORT MAP (
	Din => sDout,
	Reset => Reset,
	Clk => MCLK,
	E => sWrL,
	LCD_DATA => LCD_DATA
);

uKeyboard:KeyboardReader
	PORT MAP (
	MCLK	=> MCLK,
	Clr	=> sReset,
	KEYPAD_LIN	=> KEYPAD_LIN,
	KEYPAD_COL	=> KEYPAD_COL,
	TXD	=> sUsbInput(5),
	RXclk	=> sUsbOutput(4) -- posiçao 4 da trama do software
	);
	

Wrl <= sWrL; --METER SAIDA NO LCD

-- Maintenence Key
sUsbInput(7) <= SwitchMaintenance;

-- Coin Acceptor
sUsbInput(0) <= Coin(0);
sUsbInput(1) <= Coin(1);
sUsbInput(2) <= Coin(2);
sUsbInput(3) <= HasCoin;	
		
end behavioral;