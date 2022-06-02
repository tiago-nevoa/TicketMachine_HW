library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity KeyScan is
    Port (  Kscan : in  STD_LOGIC;
				DataKeys : in STD_LOGIC_VECTOR (3 downto 0)
				MCLK : in STD_LOGIC;
				Kpress : in  STD_LOGIC;
				K : out STD_LOGIC_VECTOR (3 downto 0)
				);
end KeyScan;

architecture behavioral of KeyScan is

COMPONENT Counter
	PORT(CE, CLK, Clr: IN STD_LOGIC;
			Fcount: OUT STD_LOGIC_VECTOR(3 downto 0)
			);
END COMPONENT;

COMPONENT MUX_2x4
    PORT(Data_In: IN STD_LOGIC_VECTOR(3 downto 0);
            S: IN STD_LOGIC;
            OUT_MUX: OUT STD_LOGIC_VECTOR (3 downto 0)
            );
END COMPONENT;

signal sFCount : std_logic_vector(3 downto 0);

begin

Counter0: Counter PORT MAP (
	CE => Kscan,
	CLK => MCLK,
	Clr => '0', -- ERRADO?
	Fcount => sFCount);	

MUX2x4: MUX_2x4 PORT MAP (	
	Data_In => 



end behavioral;