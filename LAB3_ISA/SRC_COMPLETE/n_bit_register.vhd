LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

ENTITY n_bit_register IS
	generic (n_bit: INTEGER);
	port (data_in: IN STD_LOGIC_VECTOR(n_bit - 1 DOWNTO 0);
		    CLK, reset, enable: IN std_logic;
		    data_out: OUT STD_LOGIC_VECTOR(n_bit - 1 DOWNTO 0));
END ENTITY n_bit_register;

ARCHITECTURE beh OF n_bit_register IS

BEGIN

	PROCESS(CLK)
	BEGIN
		
		IF(CLK'EVENT AND CLK = '1') THEN
			
			IF (reset = '0') THEN
			   
			   data_out <= (others => '0');
			
			elsif enable = '1' THEN
			
			   data_out <= data_in;
			   
			END IF;
		END IF;
	END PROCESS;

END ARCHITECTURE beh;