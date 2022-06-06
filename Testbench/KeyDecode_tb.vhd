LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyDecode_tb IS
END KeyDecode_tb;
 
ARCHITECTURE behavior OF KeyDecode_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyDecode IS
	Port(	MCLK : in STD_LOGIC;
			KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
			KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
			Kack : in STD_LOGIC;
			Clr : in STD_LOGIC;
			Kval : out STD_LOGIC;
			K : out STD_LOGIC_VECTOR (3 downto 0)
			);
	END COMPONENT;
    
    --Inputs
    signal MCLK, Kack, Clr : std_logic := '0';
	signal KEYPAD_LIN  : STD_LOGIC_VECTOR (3 downto 0):= "1111";

 	--Outputs
	signal Kval : std_logic;
	signal K : STD_LOGIC_VECTOR (3 downto 0);
	signal KEYPAD_COL : STD_LOGIC_VECTOR (2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 	
	-- Instantiate the Unit Under Test (UUT)		
   vm: KeyDecode PORT MAP (
			MCLK => MCLK,
			KEYPAD_LIN => KEYPAD_LIN,
			KEYPAD_COL => KEYPAD_COL,
			Kack => Kack,
			Clr => Clr,
			Kval => Kval,
			K => K
        );

	MCLK <= not MCLK after 10 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
		
		wait for 20 ns;
		Clr <= '1';	
		
		wait for 20 ns;
		Clr <= '0';
		
		wait for 10 ns;	
		KEYPAD_LIN <= "1101";	-- tecla #5 pressionada. Contador tem 01
		
		wait for 100 ns;
		Kack <= '1';
		
		wait for 20 ns;
		Kack <= '0';
		
		wait for 20 ns;
		KEYPAD_LIN <= "1111"; -- para KeyPress = false. GS do PENC		

		-- NOVA TECLA --------------------------
		wait for 20 ns;
		Clr <= '1';	
				
		wait for 20 ns;
		Clr <= '0';	
		
		wait for 80 ns;	
		KEYPAD_LIN <= "0111";	-- tecla * pressionada. Contador tem 00.
		
		wait for 100 ns;
		Kack <= '1';
		
		wait for 20 ns;
		Kack <= '0';
		
		wait for 20 ns;
		KEYPAD_LIN <= "1111"; -- para KeyPress = false. GS do PENC
		wait;
		
   end process;

END behavior;
