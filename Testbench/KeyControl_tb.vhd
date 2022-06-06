LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyControl_tb IS
END KeyControl_tb;
 
ARCHITECTURE behavior OF KeyControl_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyControl IS
	port(
		CLK, Kack, Kpress, Reset : in STD_LOGIC;
		Kval, Kscan, Ksave : out STD_LOGIC
	);
	END COMPONENT;
    
    --Inputs
    signal CLK, Kack, Kpress, Reset : std_logic := '0';

 	--Outputs
	signal Kval, Kscan, Ksave : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 	
	-- Instantiate the Unit Under Test (UUT)
   vm: KeyControl PORT MAP (
			CLK => CLK,
			Kack => Kack,
			Kpress => KPress,
			Reset => Reset,
			Kval => Kval,
			Kscan => Kscan,
			Ksave => Ksave
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
		Kpress <= '1';

		wait for 60 ns;
		Kack <= '1';
		
		wait for 60 ns;
		Kack <= '0';
		
		wait for 30 ns;
		Kpress <= '0';
		
		wait;
		
   end process;

END behavior;
