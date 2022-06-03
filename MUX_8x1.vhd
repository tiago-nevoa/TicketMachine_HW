LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity MUX_8x1 is
	port(
		Data_In : in STD_LOGIC_VECTOR(7 downto 0);
		S : in STD_LOGIC_VECTOR(2 downto 0);
		Data_Out: out STD_LOGIC
	);
	
end MUX_8x1;

architecture arq_mux of MUX_8x1 is
	begin
		process(Data_In, S)
			begin
				case S is
					when "000" => Data_Out <= Data_In(0);
					when "001" => Data_Out <= Data_In(1);
					when "010" => Data_Out <= Data_In(2);
					when "011" => Data_Out <= Data_In(3);
					when "100" => Data_Out <= Data_In(4);
					when "101" => Data_Out <= Data_In(5);
					when "110" => Data_Out <= Data_In(6);
					when "111" => Data_Out <= Data_In(7);
					when others => Data_Out <= '0';
				end case;
			end process;
end arq_mux;