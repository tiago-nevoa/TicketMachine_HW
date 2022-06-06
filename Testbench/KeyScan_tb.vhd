LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyScan_tb IS
END KeyScan_tb;
 
ARCHITECTURE behavior OF KeyScan_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyScan IS
    Port (  Kscan, Clr, MCLK, Ksave : in  STD_LOGIC;
				KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
				KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
				Kpress : out  STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0));
	END COMPONENT;
    
    --Inputs
    signal Kscan, Clr, MCLK, Ksave : std_logic := '0';
	signal KEYPAD_LIN  : STD_LOGIC_VECTOR (3 downto 0):= "1111";

 	--Outputs
	signal Kpress : std_logic;
	signal K : STD_LOGIC_VECTOR (3 downto 0);
	signal KEYPAD_COL : STD_LOGIC_VECTOR (2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 	
	-- Instantiate the Unit Under Test (UUT)
   vm: KeyScan PORT MAP (
			Kscan => Kscan,
			Clr => Clr,
			MCLK => MCLK,
			Ksave => Ksave,
			KEYPAD_LIN => KEYPAD_LIN,
			KEYPAD_COL => KEYPAD_COL,
			Kpress => Kpress,
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
		Kscan <= '1';
		
		wait for 10 ns;	
		KEYPAD_LIN <= "1101";	-- tecla #5 pressionada. Contador tem 01
		Kscan <= '0'; -- parar contagem
		
		wait for 100 ns;
		Ksave <= '1'; -- gravar. K fica com 0101. Linha 1 coluna 1
		
		-- NOVA TECLA --------------------------
		wait for 20 ns;
		Ksave <= '0';
		Clr <= '1';	
				
		wait for 20 ns;
		Clr <= '0';	
		Kscan <= '1';	
		
		wait for 80 ns;	
		KEYPAD_LIN <= "0111";	-- tecla * pressionada. Contador tem 00.
		Kscan <= '0'; -- parar contagem
		
		wait for 100 ns;
		Ksave <= '1'; -- gravar. K fica com 1100. Linha 3 coluna 0
		
		
		wait;
		
   end process;

END behavior;
