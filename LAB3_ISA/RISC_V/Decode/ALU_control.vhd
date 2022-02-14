LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE WORK.dictionary.ALL;

ENTITY ALU_control IS
	
	PORT(
		
		ALU_CTRL_IN_IMML : IN STD_LOGIC;
		ALU_CTRL_IN_IMMA : IN STD_LOGIC;
		ALU_CTRL_IN_S : IN STD_LOGIC;
		ALU_CTRL_IN_RA : IN STD_LOGIC;
		ALU_CTRL_IN_B : IN STD_LOGIC;
		ALU_CTRL_IN_IMMS : IN STD_LOGIC;
		ALU_CTRL_IN_AUIPC : IN STD_LOGIC;
		
		ALU_CTRL_IN_F3 : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		ALU_CTRL_IN_B30 : IN STD_LOGIC;
		ALU_CTRL_OUT : OUT STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0)
	);

END ENTITY ALU_control;

ARCHITECTURE behavioral OF ALU_control IS

BEGIN

	ALU_CTRL_OUT <= 
						SUM WHEN ((ALU_CTRL_IN_IMML='1' OR  ALU_CTRL_IN_S='1' ) AND ALU_CTRL_IN_F3 = "010") 
								OR ((ALU_CTRL_IN_IMMA='1' OR  ALU_CTRL_IN_RA='1' ) AND ALU_CTRL_IN_F3 = "000")
								OR (ALU_CTRL_IN_AUIPC='1') ELSE

						LESS_THAN WHEN (ALU_CTRL_IN_RA='1' AND ALU_CTRL_IN_F3 = "010") ELSE

						EQUAL WHEN (ALU_CTRL_IN_B='1' AND ALU_CTRL_IN_F3 = "000") ELSE

						BITW_AND WHEN (ALU_CTRL_IN_IMMA='1' AND ALU_CTRL_IN_F3 = "111") ELSE

						BITW_XOR WHEN (ALU_CTRL_IN_RA='1' AND ALU_CTRL_IN_F3 = "100") ELSE

						ARIT_RIGHT_SH WHEN (ALU_CTRL_IN_IMMS='1' AND ALU_CTRL_IN_F3 = "101" AND ALU_CTRL_IN_B30 = '1') ELSE

						(OTHERS=>'1');

END ARCHITECTURE behavioral;