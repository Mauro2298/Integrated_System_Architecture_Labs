LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY int_adder IS
        GENERIC (N : INTEGER);
        PORT (
            INT_ADD_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            INT_ADD_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            INT_ADD_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE behavioral OF int_adder IS


BEGIN

    INT_ADD_OUT <= STD_LOGIC_VECTOR( SIGNED(INT_ADD_IN_A) + SIGNED(INT_ADD_IN_B) );

END behavioral;