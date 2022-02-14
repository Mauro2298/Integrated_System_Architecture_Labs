LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

USE WORK.dictionary.ALL;

ENTITY ALU IS
    PORT(
        ALU_IN_A : IN STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0);
        ALU_IN_B : IN STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0);
		ALU_IN_OPCODE : IN STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0);
        ALU_OUT : OUT STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE behavioral OF ALU IS 

    COMPONENT int_adder IS
    GENERIC (N : INTEGER);
    PORT (
        INT_ADD_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        INT_ADD_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        INT_ADD_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;

    
    COMPONENT int_comparator IS
    GENERIC (N : INTEGER);
    PORT (
        INT_CMP_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        INT_CMP_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        INT_CMP_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;
    
    COMPONENT equal_hw IS
    GENERIC (N : INTEGER);
    PORT (
        EQUAL_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        EQUAL_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        EQUAL_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;
    
    COMPONENT bitw_and_hw IS
    GENERIC (N : INTEGER);
    PORT (
        BITW_AND_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        BITW_AND_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        BITW_AND_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;
    
    COMPONENT bitw_xor_hw IS
    GENERIC (N : INTEGER);
    PORT (
        BITW_XOR_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        BITW_XOR_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        BITW_XOR_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;
    
    COMPONENT arith_r_sh_hw IS
    GENERIC (N : INTEGER);
    PORT (
        ARITH_R_SH_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
        ARITH_R_SH_IN_B : IN STD_LOGIC_VECTOR (4 DOWNTO 0);    --Only five bits for shift selection
        ARITH_R_SH_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
    );
    END COMPONENT;

SIGNAL RES_SUM, RES_LESS_THAN, RES_EQUAL, RES_BITW_AND, RES_BITW_XOR, RES_ARITH_RIGHT_SH : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);


BEGIN

		OP_SUM : int_adder GENERIC MAP ( N => NBIT)
							PORT MAP (
								INT_ADD_IN_A => ALU_IN_A,
								INT_ADD_IN_B => ALU_IN_B,
								INT_ADD_OUT => RES_SUM
							);
							
		OP_LESS_THAN : int_comparator GENERIC MAP ( N => NBIT)
							PORT MAP (
								INT_CMP_IN_A => ALU_IN_A,
								INT_CMP_IN_B => ALU_IN_B,
								INT_CMP_OUT => RES_LESS_THAN
							);

		OP_EQUAL : equal_hw GENERIC MAP ( N => NBIT)
							PORT MAP (
								EQUAL_IN_A => ALU_IN_A,
								EQUAL_IN_B => ALU_IN_B,
								EQUAL_OUT => RES_EQUAL
							);
		
		
		OP_BITW_AND : bitw_and_hw GENERIC MAP ( N => NBIT)
							PORT MAP (
								BITW_AND_IN_A => ALU_IN_A,
								BITW_AND_IN_B => ALU_IN_B,
								BITW_AND_OUT => RES_BITW_AND
							);
							
		
		OP_BITW_XOR : bitw_xor_hw GENERIC MAP ( N => NBIT)
							PORT MAP (
								BITW_XOR_IN_A => ALU_IN_A,
								BITW_XOR_IN_B => ALU_IN_B,
								BITW_XOR_OUT => RES_BITW_XOR
							);
		
		OP_ARITH_RIGHT_SH : arith_r_sh_hw GENERIC MAP (N => NBIT)
							PORT MAP (
								ARITH_R_SH_IN_A => ALU_IN_A,
								ARITH_R_SH_IN_B => ALU_IN_B(4 DOWNTO 0),
								ARITH_R_SH_OUT => RES_ARITH_RIGHT_SH
							);
		
		ALU_OUT <= 
					RES_SUM WHEN ALU_IN_OPCODE = SUM ELSE
		
					RES_LESS_THAN WHEN ALU_IN_OPCODE = LESS_THAN ELSE
					
					RES_EQUAL WHEN ALU_IN_OPCODE = EQUAL ELSE
					
					RES_BITW_AND WHEN ALU_IN_OPCODE = BITW_AND ELSE
					
					RES_BITW_XOR WHEN ALU_IN_OPCODE = BITW_XOR ELSE
					
					RES_ARITH_RIGHT_SH WHEN ALU_IN_OPCODE = ARIT_RIGHT_SH ELSE
					
					(OTHERS => '0');
		
		
END behavioral;