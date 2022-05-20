library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

-- temos decoderhex e int7seg.
-- destino, origem e ida e volta
-- finish mapeada num botao
-- mapeamos pinos nos displays. pelo menos 16 + simbolo ida e volta

entity TicketDispenser is
    Port (  Prt : in  STD_LOGIC;
				--InputFinish : in STD_LOGIC; -- assigned to a switch. human input to confirm the ticket was printed. Metemos diretamente como input do vending machine
				Din : in  STD_LOGIC_VECTOR (8 downto 0); -- vai ser dividido em 3 signals (RT, DI, OI)
				HEX0 : out  STD_LOGIC_VECTOR (7 downto 0); -- 3 HEXs para origem destino e ida e volta (cada um 8 bits)
				HEX1 : out  STD_LOGIC_VECTOR (7 downto 0);
				HEX2 : out  STD_LOGIC_VECTOR (7 downto 0)				
				);
end TicketDispenser;

architecture behavioral of TicketDispenser is

component decoderHex
PORT (A: in std_logic_vector(3 downto 0);		
		clear : in std_logic;
		HEX0 : out std_logic_vector(7 downto 0));	
END component;

signal sClear : std_logic;
signal RT, DId, OId : std_logic_vector(3 downto 0);

begin

RT(0) <= Din(0);
RT(1) <= '0';
RT(2) <= '0';
RT(3) <= '0';

DId(0) <= Din(1);
DId(1) <= Din(2);
DId(2) <= Din(3);
DId(3) <= Din(4);

OId(0) <= Din(5);
OId(1) <= Din(6);
OId(2) <= Din(7);
OId(3) <= Din(8);


sClear <= NOT Prt; --faz clear quando nao estiver a imprimir
--Fn <= InputFinish;

decoder0: decoderHex port map(A=>OId,clear=>sClear, HEX0=>HEX0);
decoder1: decoderHex port map(A=>DId,clear=>sClear, HEX0=>HEX1);
decoder2: decoderHex port map(A=>RT,clear=>sClear, HEX0=>HEX2);

end behavioral;