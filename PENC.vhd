library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

entity PENC is --- priority encoder
--- se houverem duas saídas ativas, dá prioridade ao bit mais alto
    Port ( INPUT : in STD_LOGIC_VECTOR (3 downto 0);
           OUTPUT : out STD_LOGIC_VECTOR (1 downto 0);
			  GS : out STD_LOGIC); -- Kpress
end PENC;

architecture Behavioral of PENC is

begin
   process(INPUT)
   begin
      if (INPUT(3)='0') then
         OUTPUT <= "11";
			GS <= '1';
      elsif (INPUT(2)='0') then
         OUTPUT <= "10";
			GS <= '1';
      elsif (INPUT(1)='0') then
         OUTPUT <= "01";
			GS <= '1';
      elsif (INPUT(0)='0') then
         OUTPUT <= "00";
			GS <= '1';
      else
         OUTPUT <= "00";
			GS <= '0';
   end if;
end process;

end Behavioral;