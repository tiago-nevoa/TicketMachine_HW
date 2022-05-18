library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Dispatcher is
port(
		Reset : in  std_logic;
		Fsh: in std_logic;
		Dval: in std_logic;
		Din: in STD_LOGIC_VECTOR (9 downto 0);
		WrT: out std_logic;
		Dout: out STD_LOGIC_VECTOR (8 downto 0);
		WrL: out std_logic;
		MCLK: in std_logic;
		done: out std_logic		
);
end Dispatcher;

architecture behavioral of Dispatcher is


type STATE_TYPE is (STATE_waitValidData, STATE_sendTicket, STATE_prtProtocol, STATE_sendLCD, STATE_finishProcess);

signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_waitValidData when Reset = '1' else NextState when rising_edge(MCLK); 

-- Generate Next State
GenerateNextState:
process (CurrentState, Fsh, Dval, Din)
	begin
		case CurrentState is
			when STATE_waitValidData	=> if (Dval = '1' AND Din(0) = '1') then
											NextState <= STATE_sendTicket;
										elsif (Dval = '1' AND Din(0) = '0') then
											NextState <= STATE_sendLCD;
										else
											NextState <= STATE_waitValidData;
										end if;
			when STATE_sendTicket => if (Fsh = '1') then
											NextState <= STATE_prtProtocol;
										else
											NextState <= STATE_sendTicket;
										end if;
			when STATE_prtProtocol => if (Fsh = '0') then
											NextState <= STATE_finishProcess;
										else
											NextState <= STATE_prtProtocol;
										end if;
			when STATE_sendLCD => NextState <= STATE_finishProcess;										
			when STATE_finishProcess	=>	NextState <= STATE_waitValidData;						
		end case;
end process;
									
-- Generate outputs
WrL <= '1' when (CurrentState = STATE_sendLCD) else '0';
WrT <= '1' when (CurrentState = STATE_sendTicket) else '0';
done <= '1' when (CurrentState = STATE_finishProcess) else '0';
--Dout(0..8) <= Din(1..9)
Dout(0) <= Din(1);
Dout(1) <= Din(2);
Dout(2) <= Din(3);
Dout(3) <= Din(4);
Dout(4) <= Din(5);
Dout(5) <= Din(6);
Dout(6) <= Din(7);
Dout(7) <= Din(8);
Dout(8) <= Din(9);
				
end behavioral;
		