LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY VendingMachine_tb IS
END VendingMachine_tb;
 
ARCHITECTURE behavior OF VendingMachine_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VendingMachine IS
port(
		SCLK, SDX, NOT_SS, TicketFinish, Reset : in std_logic;
		busy, Fn : out std_logic;
		HEX0 : out  STD_LOGIC_VECTOR (7 downto 0)
		);
	END COMPONENT;
    

    --Inputs
    signal SCLK, SDX, NOT_SS, TicketFinish, Reset : std_logic := '0';

 	--Outputs
	signal busy, Fn : std_logic;
	signal HEX0 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 	
	-- Instantiate the Unit Under Test (UUT)
   vm: VendingMachine PORT MAP (
          SCLK => SCLK,
		  SDX => SDX,
          NOT_SS => NOT_SS,
		  TicketFinish => TicketFinish,
          Reset => Reset,
          busy => busy,
		  Fn => Fn,
		  HEX0 => HEX0
        );

	SCLK <= not SCLK after 10 ns; 

   -- Stimulus process
   stim_proc: process
   begin		
		
		wait for 20 ns;
		SDX <= '0';
		NOT_SS <= '0';
		TicketFinish <= '0';
		Reset <= '1';	
		
		wait for 20 ns;
		SDX <= '1';
		NOT_SS <= '1';
		TicketFinish <= '0';
		Reset <= '1';	
		
		wait for 20 ns;
		SDX <= '1';
		NOT_SS <= '1';
		TicketFinish <= '0';
		Reset <= '1';	

		wait for 20 ns;
		SDX <= '0';
		NOT_SS <= '1';
		TicketFinish <= '1';
		Reset <= '1';	

		wait;
		
   end process;

END behavior;
