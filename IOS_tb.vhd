LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY IOS_tb IS
END IOS_tb;

ARCHITECTURE behavior OF IOS_tb IS 

-- Component Declaration for the Unit Under Test (UUT)
COMPONENT IOS IS
 Port( 
	MCLK, SCLK, SDX, NOT_SS, Fsh, Reset : in STD_LOGIC;
	busy : out STD_LOGIC;
	WrT,WrL : out STD_LOGIC;
	Dout : out STD_LOGIC_VECTOR(8 downto 0)	
	);
END COMPONENT;

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;
--Inputs
SIGNAL MCLK_tb, SCLK_tb, SDX_tb, notSS_tb, Reset_tb, Fsh_tb : STD_LOGIC := '0';
--Outputs
SIGNAL busy_tb, wrt_tb, wrl_tb : STD_LOGIC := '0';
signal Dout_tb : STD_LOGIC_VECTOR(8 downto 0) := "000000000";

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: IOS PORT MAP(
	MCLK => MCLK_tb,
	SCLK => SCLK_tb,
	SDX => SDX_tb,
	NOT_SS => notSS_tb,
	Fsh => Fsh_tb,
	busy => busy_tb,
	wrt => wrt_tb,
	wrl => wrl_tb,
	Reset => Reset_tb,
	Dout => Dout_tb
	);


CLK_gen : process
begin
	MCLK_tb <= '0';
	wait for MCLK_HALF_PERIOD;
	MCLK_tb <= '1';
	wait for MCLK_HALF_PERIOD;
end process;


tb : PROCESS
BEGIN
			Reset_tb <= '1';
            wait for MCLK_PERIOD * 2;
			SCLK_tb <= '1';
            wait for MCLK_PERIOD;
			
			-- 1 0 0010 1110 1
            -- 1 (TnL)
            Reset_tb <= '0';
            notSS_tb <= '1';
            SCLK_tb <= '0';
            SDX_tb <= '1';
            wait for MCLK_PERIOD * 2;

            SCLK_tb <= '1';
            wait for MCLK_PERIOD;
			
            
            -- 2 (RT)
			Reset_tb <= '0';
			notSS_tb <= '0';
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;


            -- 3 (D0)
			notSS_tb <= '0';
            SCLK_tb <= '0';
			SDX_tb <= '0';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 4 (D1)
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 5 (D2)
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 6 (D3)
            SCLK_tb <= '0';
			SDX_tb <= '0';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 7 (O0)
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 8 (O1)
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 9 (O2)
            SCLK_tb <= '0';
			SDX_tb <= '1';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- 10 (O3)
            SCLK_tb <= '0';
			SDX_tb <= '0';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';
            wait for MCLK_PERIOD;

            -- Parity
            SCLK_tb <= '0';
            SDX_tb <= '0';
            wait for MCLK_PERIOD;
            SCLK_tb <= '1';


            notSS_tb <= '0';
            wait for MCLK_PERIOD;
            SCLK_tb <= '0';

			wait for MCLK_PERIOD * 25;

			Fsh_tb <= '1';

			wait for MCLK_PERIOD * 2;

			Fsh_tb <= '0';

	wait;

END PROCESS;

END;