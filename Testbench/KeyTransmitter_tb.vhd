LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyTransmitter_tb IS
END KeyTransmitter_tb;
 
ARCHITECTURE behavior OF KeyTransmitter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyTransmitter IS
    Port (  DAV, TXclk, MCLK, Clr : in  STD_LOGIC;
				Data_In : in STD_LOGIC_VECTOR (3 downto 0); 
				DAC, TXD : out  STD_LOGIC);
	END COMPONENT;
    
    --Inputs
    signal DAV, TXclk, MCLK, Clr : std_logic := '0';
	signal Data_In : STD_LOGIC_VECTOR (3 downto 0) := "0000";

 	--Outputs
	signal DAC, TXD : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN			
	-- Instantiate the Unit Under Test (UUT)
   vm: KeyTransmitter PORT MAP (
			DAV => DAV,
			TXclk => TXclk,
			MCLK => MCLK,
			Clr => Clr,
			Data_In => Data_In,
			DAC => DAC,
			TXD => TXD
        );

	MCLK <= not MCLK after 10 ns;
	TXclk <= not TXclk after 20 ns;

   -- Stimulus process
   stim_proc: process
   begin		
		
		wait for 20 ns;		
		Clr <= '1';	
		
		wait for 20 ns;
		Clr <= '0';	
		
		wait for 100 ns;
		Data_In <= "1010";
		DAV <= '1';

		wait for 200 ns;
		DAV <= '0';

		wait for 20 ns;
		
		wait;
		
   end process;

END behavior;