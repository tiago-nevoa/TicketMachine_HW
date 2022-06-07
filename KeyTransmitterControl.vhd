library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyTransmitterControl is
	port(
		DAV, TCount, CLK, Reset : in STD_LOGIC;
		DAC, EnTXD, EnReg, EnCounter, RstCounter : out STD_LOGIC
	);
end KeyTransmitterControl;

architecture behaviour of KeyTransmitterControl is
	type STATE_TYPE is (STATE_WAIT_DATA, STATE_DATA_ACCEPTED, STATE_TRANSMIT_DATA, STATE_RESET_COUNTER);
	
	signal CurrentState, NextState : STATE_TYPE;
	
	begin

	CurrentState <= STATE_WAIT_DATA when Reset = '1' else NextState when rising_edge(clk);
	
	GenerateNextState:
		process (CurrentState, DAV, TCount)
			begin				
				case CurrentState is
					when STATE_WAIT_DATA		=>  if (DAV = '1') then
														NextState <= STATE_DATA_ACCEPTED;
													else
														NextState <= STATE_WAIT_DATA;
													end if;
					when STATE_DATA_ACCEPTED =>  if (DAV = '0') then
														NextState <= STATE_TRANSMIT_DATA;
													else
														NextState <= STATE_DATA_ACCEPTED;
													end if;
					
					when STATE_TRANSMIT_DATA =>  if (TCount = '1') then
														NextState <= STATE_RESET_COUNTER;
													else
														NextState <= STATE_TRANSMIT_DATA;
													end if;
					when STATE_RESET_COUNTER =>  NextState <= STATE_WAIT_DATA;

				end case;				
		end process;
				
	EnTXD <= '1' when (CurrentState = STATE_WAIT_DATA or CurrentState = STATE_DATA_ACCEPTED or CurrentState = STATE_RESET_COUNTER) else '0';
	EnReg <= '1' when CurrentState = STATE_DATA_ACCEPTED else '0';
	DAC <= '1' when CurrentState = STATE_DATA_ACCEPTED else '0';
	EnCounter <= '1' when CurrentState = STATE_TRANSMIT_DATA else '0';
	RstCounter <= '1' when (CurrentState = STATE_WAIT_DATA or CurrentState = STATE_RESET_COUNTER) else '0';
	
end behaviour;