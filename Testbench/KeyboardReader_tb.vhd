LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY KeyboardReader_tb IS
END KeyboardReader_tb;
 
ARCHITECTURE behavior OF KeyboardReader_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT KeyboardReader IS
	Port(	RXclk, MCLK, Clr : in STD_LOGIC;
			KEYPAD_LIN : in STD_LOGIC_VECTOR (3 downto 0);
			KEYPAD_COL : out STD_LOGIC_VECTOR (2 downto 0);
			TXD : out STD_LOGIC
			);
	END COMPONENT;
    
    --Inputs
    signal RXclk, MCLK, Clr : std_logic := '0';
	signal KEYPAD_LIN : STD_LOGIC_VECTOR (3 downto 0) := "1111";

 	--Outputs
	signal TXD : std_logic;
	signal KEYPAD_COL : STD_LOGIC_VECTOR (2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN	
	-- Instantiate the Unit Under Test (UUT)
   vm: KeyboardReader PORT MAP (
			RXclk => RXclk,
			MCLK => MCLK,
			Clr => Clr,
			KEYPAD_LIN => KEYPAD_LIN,
			KEYPAD_COL => KEYPAD_COL,
			TXD => TXD
        );

	MCLK <= not MCLK after 10 ns; 
	--RXclk <= not RXclk after 40 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
		RXclk <= '0';		
		
		wait for 40 ns;		
		Clr <= '1';	
		
		wait for 40 ns;
		Clr <= '0';	
		
		wait for 120 ns;
		--KEYPAD_LIN <= "1010"; -- simular pressionar 2 teclas ao mesmo tempo. Como temos priority encoder vai selecionar o de maior peso.
		KEYPAD_LIN <= "1011";
		
		-- 7 transiçoes
		wait for 20 ns;
		RXclk <= '1';		
		wait for 40 ns;
		RXclk <= '0';	
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		-- FIM 7 transiçoes
		
		wait for 120 ns;
		KEYPAD_LIN <= "1111";
	
		wait for 120 ns;
		Clr <= '0';	
		KEYPAD_LIN <= "1011"; -- resultado igual ao anterior mas pressionou-se apenas uma tecla.
		
		-- 7 transiçoes
		wait for 40 ns;
		RXclk <= '1';		
		wait for 40 ns;
		RXclk <= '0';	
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		
		wait for 40 ns;
		RXclk <= '1';			
		wait for 40 ns;
		RXclk <= '0';
		-- FIM 7 transiçoes
		
		wait;
		
   end process;

END behavior;