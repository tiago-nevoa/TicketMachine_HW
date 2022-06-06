LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyTransmitterControl_tb IS
END KeyTransmitterControl_tb;
 
ARCHITECTURE behavior OF KeyTransmitterControl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyTransmitterControl IS
	port(
		DAV, TCount, MCLK : in STD_LOGIC;
		DAC, EnTXD, EnReg, EnCounter, RstCounter : out STD_LOGIC
	);
	END COMPONENT;
    
    --Inputs
    signal DAV, TCount, MCLK : std_logic := '0';

 	--Outputs
	signal DAC, EnTXD, EnReg, EnCounter, RstCounter : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 	
	-- Instantiate the Unit Under Test (UUT)
   vm: KeyTransmitterControl PORT MAP (
			MCLK => MCLK,
			DAV => DAV,
			TCount => TCount,
			DAC => DAC,
			EnTXD => EnTXD,
			EnReg => EnReg,
			EnCounter => EnCounter,
			RstCounter => RstCounter
        );

	CLK <= not CLK after 10 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
		
		wait for 20 ns;
		Reset <= '1';	
		
		wait for 20 ns;
		Reset <= '0';	
		
		wait for 20 ns;
		DAV <= '1';

		wait for 60 ns;
		DAV <= '0';
		
		wait for 60 ns;
		TCount <= '1';
		
		wait for 30 ns;
		
		wait;
		
   end process;

END behavior;
