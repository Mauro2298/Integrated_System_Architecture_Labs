LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE dictionary IS

	CONSTANT NBIT : INTEGER := 32;
	CONSTANT NBIT_INST : INTEGER := 32;
	

	CONSTANT NBIT_OPCODE : INTEGER := 7;
	CONSTANT NBIT_ALU_OPCODE : INTEGER := 3;
	CONSTANT NBIT_RF_ADD : INTEGER := 5;
	
	CONSTANT IMML : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0000011";
	CONSTANT IMMA : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0010011";
	CONSTANT B : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "1100011";
	CONSTANT J : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "1101111";
	CONSTANT LUI : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0110111";
	CONSTANT AUIPC : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0010111";
	CONSTANT S : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0100011";
	CONSTANT RA : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0110011";
	CONSTANT IMMS : STD_LOGIC_VECTOR (NBIT_OPCODE-1 DOWNTO 0) := "0010011";

	CONSTANT SUM : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "000";
	CONSTANT LESS_THAN : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "001";
	CONSTANT EQUAL : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "010";
	CONSTANT BITW_AND : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "011";
	CONSTANT BITW_XOR : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "100";
	CONSTANT ARIT_RIGHT_SH : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "101";

	CONSTANT ABS_AOPC : STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0) := "110";


	TYPE DATA_BUS_32 IS ARRAY (0 TO (2**NBIT_RF_ADD)-1) OF STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);

END PACKAGE dictionary;