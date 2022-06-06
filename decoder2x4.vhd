library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity decoder2x4 is
	port(
		S : in STD_LOGIC_VECTOR(1 downto 0);
		decoderOut : out STD_LOGIC_VECTOR(2 downto 0)
	);
end decoder2x4;

architecture behavioral of decoder2x4 is
begin 
	process(S)
	begin
		case S is
			when "00" => decoderOut <= "110";
			when "01" => decoderOut <= "101";
			when "10" => decoderOut <= "011";
			when others => decoderOut <= "111"; -- active low!!
			--- when "00" => decoderOut <= "001"; when "01" => decoderOut <= "010"; when "10" => decoderOut <= "100"; when "11" => decoderOut <= "000"; -- confirmar pois temos dupla negação
		end case;
	end process;
 
end behavioral;