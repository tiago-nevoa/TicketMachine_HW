library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity SerialControl is
port(
		NOT_SS, accept, pFlag, dFlag, RXError: in std_logic;
		Reset: in std_logic; -- reset global ligado a todos os componentes, vem de fora
		CLK: in std_logic; --
		Wr, Init, DXVal, Busy: out std_logic
		);
end SerialControl;

architecture behavioral of SerialControl is

type STATE_TYPE is (STATE_Dwait, STATE_DReceive, STATE_PCheck, STATE_DEndReception, STATE_DConfirm);

signal CurrentState, NextState : STATE_TYPE;

begin

-- Flip-Flop's
CurrentState <= STATE_DWait when reset = '1' else NextState when rising_edge(clk);

-- Generate Next State
GenerateNextState:
process (CurrentState, NOT_SS, dFlag, pFlag, RXError, Accept)
	begin
		case CurrentState is
			when STATE_DWait	=> if (NOT_SS = '1') then
											NextState <= STATE_DWait;
										else
											NextState <= STATE_DReceive;
										end if;
			when STATE_DReceive => if (NOT_SS = '1') then
											NextState <= STATE_DWait;
										elsif (NOT_SS = '0' and dFlag = '0') then
											NextState <= STATE_DReceive;
										elsif (NOT_SS = '0' and dFlag = '1') then
											NextState <= STATE_PCheck;
										else
											NextState <= STATE_DWait;
										end if;
			when STATE_PCheck	=>	if (NOT_SS = '1') then
											NextState <= STATE_DWait;
										elsif (NOT_SS = '0' and pFlag = '0') then
											NextState <= STATE_PCheck;
										elsif (NOT_SS = '0' and pFlag = '1' and Rxerror ='0') then
											NextState <= STATE_DEndReception;
										else
											NextState <= STATE_DWait;
										end if;
			when STATE_DEndReception =>if (Accept = '1') then
											NextState <= STATE_DConfirm;
										else
											NextState <= STATE_DEndReception;
										end if;
			when STATE_DConfirm	=>	if (Accept = '1') then
											NextState <= STATE_DConfirm;									
										else
											NextState <= STATE_Dwait;
										end if;
									end case;
									end process;
									
					-- Generate outputs
					Init <= '1' when CurrentState = STATE_Dwait
										else '0';
					Wr <= '1' when CurrentState = STATE_DReceive
										else '0';
					Busy <= '1' when CurrentState = STATE_DEndReception OR CurrentState = STATE_DConfirm 
										else '0';
					Dxval <= '1' when CurrentState = STATE_DEndReception
										else '0';
					
end behavioral;