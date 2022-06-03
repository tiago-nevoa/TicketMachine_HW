library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyControl is
	port(
		CLK, Kack, Kpress, Reset : in STD_LOGIC;
		Kval, Kscan, Ksave : out STD_LOGIC
	);
end KeyControl;

architecture behaviour of KeyControl is
	type STATE_TYPE is (STATE_WAIT, STATE_SAVING, STATE_SAVED, STATE_SAVE_CHECKED);
	
	signal CurrentState, NextState : STATE_TYPE;
	
	begin

	CurrentState <= STATE_WAIT when Reset = '1' else NextState when rising_edge(clk);
	
	GenerateNextState:
		process (CurrentState, Kack, Kpress, Reset)
			begin				
				case CurrentState is
					when STATE_WAIT		=>  if (Kpress = '1') then
														NextState <= STATE_SAVING;
													else
														NextState <= STATE_WAIT;
													end if;
					when STATE_SAVING		=>  NextState <= STATE_SAVED;
					
					when STATE_SAVED	   =>  if (Kack = '1') then
														NextState <= STATE_SAVE_CHECKED;
													else
														NextState <= STATE_SAVED;
													end if;
					when STATE_SAVE_CHECKED =>  if (Kack = '0' and Kpress = '0') then
														NextState <= STATE_WAIT;
													else
														NextState <= STATE_SAVE_CHECKED;
													end if;

				end case;				
		end process;
				
	Kscan <= '1' when CurrentState = STATE_WAIT else '0';
	Ksave <= '1' when CurrentState = STATE_SAVING else '0';
	Kval <= '1' when CurrentState = STATE_SAVED else '0';
	
end behaviour;