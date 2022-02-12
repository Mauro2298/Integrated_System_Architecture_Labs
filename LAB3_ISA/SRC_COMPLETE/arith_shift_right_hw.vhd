LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.MATH_REAL.ALL;

ENTITY arith_r_sh_hw IS
        GENERIC (N : INTEGER);
        PORT (
            ARITH_R_SH_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            ARITH_R_SH_IN_B : IN STD_LOGIC_VECTOR (INTEGER(FLOOR(LOG2(REAL(N))))-1 DOWNTO 0);    --Only five bits for shift selection
            ARITH_R_SH_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
        );
END ENTITY;

ARCHITECTURE behavioral OF arith_r_sh_hw IS


COMPONENT mux_2_1 IS
  PORT (x,y,s: IN std_logic;
    m: OUT std_logic );
END COMPONENT;

	TYPE MATRIX IS ARRAY (0 TO INTEGER(FLOOR(LOG2(REAL(N))))) OF STD_LOGIC_VECTOR (N-1 DOWNTO 0);
	SIGNAL INTER_STAGE_SIG : MATRIX;

BEGIN

	INTER_STAGE_SIG(0) <= ARITH_R_SH_IN_A;

	ARITH_R_SH_OUT <= INTER_STAGE_SIG(INTEGER(FLOOR(LOG2(REAL(N)))));

    MUX_TREE: FOR stage_index IN 0 TO INTEGER(FLOOR(LOG2(REAL(N))))-1 GENERATE
	BEGIN
		ROW_GEN: FOR col_index IN 0 TO N-1 GENERATE
		BEGIN
		
			MUX_SH: IF col_index < N-(2**stage_index) GENERATE
			BEGIN
				SH_MUX: mux_2_1 PORT MAP(
										x => INTER_STAGE_SIG(stage_index)(col_index),
										y => INTER_STAGE_SIG(stage_index)(col_index + (2**stage_index)),
										s => ARITH_R_SH_IN_B(stage_index),
										m => INTER_STAGE_SIG(stage_index+1)(col_index)
				);
			
			END GENERATE MUX_SH;

			MUX_EXT: IF col_index >= N-(2**stage_index) AND col_index < N GENERATE
			BEGIN
				EXT_MUX: mux_2_1 PORT MAP(
										x => INTER_STAGE_SIG(stage_index)(col_index),
										y => ARITH_R_SH_IN_A(N-1),
										s => ARITH_R_SH_IN_B(stage_index),
										m => INTER_STAGE_SIG(stage_index+1)(col_index)
				);				
			END GENERATE MUX_EXT;
		
		END GENERATE ROW_GEN;
	END GENERATE MUX_TREE; 
END behavioral;