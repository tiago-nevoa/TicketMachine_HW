library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

-- temos decoderhex e int7seg.
-- destino, origem e ida e volta
-- finish mapeada num botao
-- mapeamos pinos nos displays. pelo menos 16 + simbolo ida e volta

entity TicketDispenser is
    Port (  Prt : in  STD_LOGIC;
				InputFinish : in STD_LOGIC; -- assigned to a switch. human input to confirm the ticket was printed
				Din : in  STD_LOGIC_VECTOR (8 downto 0); -- vai ser dividido em 3 signals (RT, DI, OI)
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				Fn : out  STD_LOGIC;
				HEX0 : out  STD_LOGIC_VECTOR (7 downto 0)
				);
end TicketDispenser;

architecture behavioral of TicketDispenser is

component decoderHex
PORT (A: in std_logic_vector(3 downto 0);		
		clear : in std_logic;
		HEX0 : out std_logic_vector(7 downto 0));	
END component;

signal sClear : std_logic;
signal sDin : std_logic_vector(3 downto 0);

begin
sDin(0) <= Din(0);
sDin(1) <= Din(1);
sDin(2) <= Din(2);
sDin(3) <= Din(3);

sClear <= NOT Prt; --faz clear quando nao estiver a imprimir
Fn <= InputFinish;
decoder: decoderHex port map(A=>sDin,clear=>sClear, HEX0=>HEX0);

end behavioral;