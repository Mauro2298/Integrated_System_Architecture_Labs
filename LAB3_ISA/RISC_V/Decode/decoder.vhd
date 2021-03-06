LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE WORK.dictionary.ALL;

ENTITY decoder IS
	PORT(
		DEC_IN : IN STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);
		DEC_OUT : OUT STD_LOGIC_VECTOR((2**NBIT_RF_ADD)-1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE behavioral OF decoder IS

BEGIN

	DEC_OUT <=
"00000000000000000000000000000001"WHEN DEC_IN = "00000" ELSE
                        "00000000000000000000000000000010"WHEN DEC_IN = "00001" ELSE
                        "00000000000000000000000000000100"WHEN DEC_IN = "00010" ELSE
                        "00000000000000000000000000001000"WHEN DEC_IN = "00011" ELSE
                        "00000000000000000000000000010000"WHEN DEC_IN = "00100" ELSE
                        "00000000000000000000000000100000"WHEN DEC_IN = "00101" ELSE
                        "00000000000000000000000001000000"WHEN DEC_IN = "00110" ELSE
                        "00000000000000000000000010000000"WHEN DEC_IN = "00111" ELSE
                        "00000000000000000000000100000000"WHEN DEC_IN = "01000" ELSE
                        "00000000000000000000001000000000"WHEN DEC_IN = "01001" ELSE
                        "00000000000000000000010000000000"WHEN DEC_IN = "01010" ELSE
                        "00000000000000000000100000000000"WHEN DEC_IN = "01011" ELSE
                        "00000000000000000001000000000000"WHEN DEC_IN = "01100" ELSE
                        "00000000000000000010000000000000"WHEN DEC_IN = "01101" ELSE
                        "00000000000000000100000000000000"WHEN DEC_IN = "01110" ELSE
                        "00000000000000001000000000000000"WHEN DEC_IN = "01111" ELSE
                        "00000000000000010000000000000000"WHEN DEC_IN = "10000" ELSE
                        "00000000000000100000000000000000"WHEN DEC_IN = "10001" ELSE
                        "00000000000001000000000000000000"WHEN DEC_IN = "10010" ELSE
                        "00000000000010000000000000000000"WHEN DEC_IN = "10011" ELSE
                        "00000000000100000000000000000000"WHEN DEC_IN = "10100" ELSE
                        "00000000001000000000000000000000"WHEN DEC_IN = "10101" ELSE
                        "00000000010000000000000000000000"WHEN DEC_IN = "10110" ELSE
                        "00000000100000000000000000000000"WHEN DEC_IN = "10111" ELSE
                        "00000001000000000000000000000000"WHEN DEC_IN = "11000" ELSE
                        "00000010000000000000000000000000"WHEN DEC_IN = "11001" ELSE
                        "00000100000000000000000000000000"WHEN DEC_IN = "11010" ELSE
                        "00001000000000000000000000000000"WHEN DEC_IN = "11011" ELSE
                        "00010000000000000000000000000000"WHEN DEC_IN = "11100" ELSE
                        "00100000000000000000000000000000"WHEN DEC_IN = "11101" ELSE
                        "01000000000000000000000000000000"WHEN DEC_IN = "11110" ELSE
                        "10000000000000000000000000000000"WHEN DEC_IN = "11111" ELSE
			(OTHERS => '0');
END behavioral;