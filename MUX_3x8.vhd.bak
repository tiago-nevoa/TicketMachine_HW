LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MUX_2x4 IS
    PORT(    Data_In: IN STD_LOGIC_VECTOR(3 downto 0);
            S: IN STD_LOGIC;
            OUT_MUX: OUT STD_LOGIC_VECTOR (3 downto 0)
            );
END Mux_2x4;

ARCHITECTURE MUX_2x4_LOGIC OF MUX_2x4 IS

BEGIN

    OUT_MUX(0) <= (Data_In(0) and S) or ('0' and not S);
    OUT_MUX(1) <= (Data_In(1) and S) or ('1' and not S);
    OUT_MUX(2) <= (Data_In(2) and S) or ('0' and not S);
    OUT_MUX(3) <= (Data_In(3) and S) or ('0' and not S);

END MUX_2x4_LOGIC;