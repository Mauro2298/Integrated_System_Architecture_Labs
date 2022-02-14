LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE WORK.dictionary.ALL;

ENTITY mux32to1 IS
	PORT(
		MUX32_IN_DT : IN DATA_BUS_32;
		MUX32_IN_SL : IN STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);
		MUX32_OUT : OUT STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavioral OF mux32to1 IS

BEGIN

	MUX32_OUT <=
		MUX32_IN_DT(0) WHEN MUX32_IN_SL = "00000" ELSE
        MUX32_IN_DT(1) WHEN MUX32_IN_SL = "00001" ELSE
        MUX32_IN_DT(2) WHEN MUX32_IN_SL = "00010" ELSE
        MUX32_IN_DT( 3 ) WHEN MUX32_IN_SL = "00011" ELSE
        MUX32_IN_DT( 4 ) WHEN MUX32_IN_SL = "00100" ELSE
        MUX32_IN_DT( 5 ) WHEN MUX32_IN_SL = "00101" ELSE
        MUX32_IN_DT( 6 ) WHEN MUX32_IN_SL = "00110" ELSE
        MUX32_IN_DT( 7 ) WHEN MUX32_IN_SL = "00111" ELSE
        MUX32_IN_DT( 8 ) WHEN MUX32_IN_SL = "01000" ELSE
        MUX32_IN_DT( 9 ) WHEN MUX32_IN_SL = "01001" ELSE
        MUX32_IN_DT( 10 ) WHEN MUX32_IN_SL = "01010" ELSE
        MUX32_IN_DT( 11 ) WHEN MUX32_IN_SL = "01011" ELSE
        MUX32_IN_DT( 12 ) WHEN MUX32_IN_SL = "01100" ELSE
        MUX32_IN_DT( 13 ) WHEN MUX32_IN_SL = "01101" ELSE
        MUX32_IN_DT( 14 ) WHEN MUX32_IN_SL = "01110" ELSE
        MUX32_IN_DT( 15 ) WHEN MUX32_IN_SL = "01111" ELSE
        MUX32_IN_DT( 16 ) WHEN MUX32_IN_SL = "10000" ELSE
        MUX32_IN_DT( 17 ) WHEN MUX32_IN_SL = "10001" ELSE
        MUX32_IN_DT( 18 ) WHEN MUX32_IN_SL = "10010" ELSE
        MUX32_IN_DT( 19 ) WHEN MUX32_IN_SL = "10011" ELSE
        MUX32_IN_DT( 20 ) WHEN MUX32_IN_SL = "10100" ELSE
        MUX32_IN_DT( 21 ) WHEN MUX32_IN_SL = "10101" ELSE
        MUX32_IN_DT( 22 ) WHEN MUX32_IN_SL = "10110" ELSE
        MUX32_IN_DT( 23 ) WHEN MUX32_IN_SL = "10111" ELSE
        MUX32_IN_DT( 24 ) WHEN MUX32_IN_SL = "11000" ELSE
        MUX32_IN_DT( 25 ) WHEN MUX32_IN_SL = "11001" ELSE
        MUX32_IN_DT( 26 ) WHEN MUX32_IN_SL = "11010" ELSE
        MUX32_IN_DT( 27 ) WHEN MUX32_IN_SL = "11011" ELSE
        MUX32_IN_DT( 28 ) WHEN MUX32_IN_SL = "11100" ELSE
        MUX32_IN_DT( 29 ) WHEN MUX32_IN_SL = "11101" ELSE
        MUX32_IN_DT( 30 ) WHEN MUX32_IN_SL = "11110" ELSE
        MUX32_IN_DT( 31 ) WHEN MUX32_IN_SL = "11111" ELSE
		(OTHERS => '0');

END behavioral;