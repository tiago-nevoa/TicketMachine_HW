library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity KeyTransmitterControl is
	port(
		DAV, TCount : in STD_LOGIC;
		DAC, EnTxd, EnReg, EnCounter, RstCounter : out STD_LOGIC
	);
end KeyTransmitterControl;

architecture behaviour of KeyTransmitterControl is
	type STATE_TYPE is (STATE_WAIT_DATA, STATE_WRITE_DATA, STATE_DATA_ACCEPTED);
	
	signal CurrentState, NextState : STATE_TYPE;
	
	begin

	CurrentState <= STATE_WAIT_DATA when Reset = '1' else NextState when rising_edge(clk);
	
	GenerateNextState:
		process (CurrentState, DAV, TCount)
			begin				
				case CurrentState is
					when STATE_WAIT_DATA		=>  if (DAV = '1') then
														NextState <= STATE_WRITE_DATA;
													else
														NextState <= STATE_WAIT_DATA;
													end if;
					when STATE_WRITE_DATA	   =>  if (TCount = '1') then
														NextState <= STATE_DATA_ACCEPTED;
													else
														NextState <= STATE_WRITE_DATA;
													end if;
					
					when STATE_DATA_ACCEPTED	   =>  if (DAV = '1') then
														NextState <= STATE_WAIT_DATA;
													else
														NextState <= STATE_DATA_ACCEPTED;
													end if;

				end case;				
		end process;
				
	EnTxd <= '1' when CurrentState = STATE_WAIT_DATA else '0';
	EnReg <= '1' when CurrentState = STATE_WRITE_DATA else '0';
	EnCounter <= '1' when CurrentState = STATE_WRITE_DATA else '0';
	RstCounter <= '1' when CurrentState = STATE_DATA_ACCEPTED else '0';
	DAC <= '1' when CurrentState = STATE_DATA_ACCEPTED else '0';
	
end behaviour;