library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity Control is
    Port (  Din : in  STD_LOGIC_VECTOR (8 downto 0);
				Reset : in  STD_LOGIC;
				Clk : in  STD_LOGIC;
				E : in  STD_LOGIC);
end Control;

architecture behavioral of Control is

signal RS : std_logic;
signal D : std_logic_vector (7 downto 0);

begin

RS <= Din(0); -- RS é 0 porque a trama já só tem 8 bits. O Tnl já desapareceu. O RS indica se é uma mensagem de controlo ou de dados
D(0) <= Din(1);
D(1) <= Din(2);
D(2) <= Din(3);
D(3) <= Din(4);
D(4) <= Din(5);
D(5) <= Din(6);
D(6) <= Din(7);
D(7) <= Din(8);

end behavioral;