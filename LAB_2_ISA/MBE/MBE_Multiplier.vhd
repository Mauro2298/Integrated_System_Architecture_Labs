LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE WORK.BF.ALL;

ENTITY MBE_Multiplier IS 
    --GENERIC (NBIT : INTEGER := 33);
    PORT(
        MBE_IN_MULTIPLICAND : IN STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
        MBE_IN_MULTIPLIER : IN STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
        MBE_OUT_RESULT : OUT STD_LOGIC_VECTOR(2*NBIT-2 DOWNTO 0)
    );
END MBE_Multiplier;

ARCHITECTURE structural OF MBE_Multiplier is

    COMPONENT booth_encoder IS 
        GENERIC(N : INTEGER );
        PORT(
            BOOTH_IN_NUMBER : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
            BOOTH_IN_SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            BOOTH_OUT_S : OUT STD_LOGIC;
            BOOTH_OUT_NUMBER : OUT STD_LOGIC_VECTOR(N DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT HA IS 
    port (
		A : IN std_logic;
		B : IN std_logic;
		Cout_HA : OUT std_logic;
		Sout_HA : OUT std_logic
	);
    END COMPONENT;

    COMPONENT FA IS 
    port(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;
		Cout_FA : OUT std_logic;
		Sout_FA : OUT std_logic
	);
    END COMPONENT;

    COMPONENT structure_constants IS
    port(
        element_mat: out mat_el;
        fa_mat: out mat_add;
        ha_mat: out mat_add
    );
    END COMPONENT;
--MESSO -2 PERCHE' IL CARRY DI UN HA SENNO' POTREBBE ANDARE FUORI RANGE
TYPE inter_arr IS ARRAY (0 TO ROW_NUMBER-1) OF STD_LOGIC_VECTOR(2*NBIT-2 DOWNTO 0);
TYPE std_mat IS ARRAY (0 TO STAGE_NUMBER+1) OF inter_arr;
SIGNAL inter_stage_sig : std_mat;

TYPE sel_arr IS ARRAY (0 TO ROW_NUMBER-1) OF STD_LOGIC_VECTOR(NBIT DOWNTO 0);
SIGNAL sel_par_mult : sel_arr;

SIGNAL S_FROM_BOOTH : STD_LOGIC_VECTOR(16 DOWNTO 0);

SIGNAL MULT_TO_BOOTH : STD_LOGIC_VECTOR (NBIT +2 DOWNTO 0);

--SIGNAL FA_MAT, HA_MAT: mat_add;
----------------------------------------------------------------------------------------------
BEGIN

--str_const: structure_constants port map(
--                                        fa_mat => FA_MAT,
--                                        ha_mat => HA_MAT
--                                        );

--Instantiation of the booth encoders

MULT_TO_BOOTH <= "00" & MBE_IN_MULTIPLIER & '0';

    BOOTH_GENERATION: FOR IND_BOOTH IN 0 TO ROW_NUMBER-1 GENERATE
    BEGIN 
        BOOTH_EN: booth_encoder 
                        generic map (
                            N => NBIT
                        )
                        port map (
                            BOOTH_IN_NUMBER => MBE_IN_MULTIPLICAND,
                            BOOTH_IN_SEL => MULT_TO_BOOTH( (2*IND_BOOTH) + 2 DOWNTO 2*IND_BOOTH),
                            BOOTH_OUT_S => S_FROM_BOOTH(IND_BOOTH),
                            BOOTH_OUT_NUMBER => sel_par_mult(IND_BOOTH)
                        );
    END GENERATE BOOTH_GENERATION;

-------------------------------------------------------------------------------------------

    --Begin of the dadda tree creation
    DADDA_TREE: FOR IND_STAGE IN 0 TO STAGE_NUMBER+1 GENERATE
    BEGIN

        --The first stage is used to assign the signals to be added. These will be the actual inputs of the dadda tree
        FIRST_STAGE: IF IND_STAGE = 0 GENERATE
        BEGIN
            
            ROW_ASSIGNMENT: FOR IND_ROW IN 0 TO ROW_NUMBER-1 GENERATE
            BEGIN

                FIRST_ROW: IF IND_ROW = 0 GENERATE
                BEGIN
                    --QUI SECONDO ME E' NBIT+3
                    --inter_stage_sig(0)(0)(NBIT+2 downto 0) <= ( NOT S_FROM_BOOTH(0)) & S_FROM_BOOTH(0) & S_FROM_BOOTH(0) & sel_par_mult(0);
                    inter_stage_sig(0)(0)(NBIT+3 downto 0) <= ( NOT S_FROM_BOOTH(0)) & S_FROM_BOOTH(0) & S_FROM_BOOTH(0) & sel_par_mult(0);                
                END GENERATE FIRST_ROW;

                GENERIC_ROW: IF (IND_ROW > 0) AND (IND_ROW < ROW_NUMBER -2) GENERATE
                BEGIN 
                    --QUI +2
                    --inter_stage_sig(0)(IND_ROW)(2*IND_ROW + NBIT+1 downto 2*IND_ROW-2) <= '1' & ( NOT S_FROM_BOOTH(IND_ROW)) & sel_par_mult(IND_ROW) & 'X' & S_FROM_BOOTH(IND_ROW-1);
                    inter_stage_sig(0)(IND_ROW)(2*IND_ROW + NBIT+2 downto 2*IND_ROW-2) <= '1' & ( NOT S_FROM_BOOTH(IND_ROW)) & sel_par_mult(IND_ROW) & 'X' & S_FROM_BOOTH(IND_ROW-1);
                END GENERATE GENERIC_ROW;

                SECOND_TO_LAST_ROW: IF  IND_ROW = ROW_NUMBER-2 GENERATE
                BEGIN 
                    --QUI +1
                    --inter_stage_sig(0)(IND_ROW)(2*IND_ROW + NBIT downto 2*IND_ROW-2) <= ( NOT S_FROM_BOOTH(IND_ROW)) & sel_par_mult(IND_ROW) & 'X' & S_FROM_BOOTH(IND_ROW-1);
                    inter_stage_sig(0)(IND_ROW)(2*IND_ROW + NBIT+1 downto 2*IND_ROW-2) <= ( NOT S_FROM_BOOTH(IND_ROW)) & sel_par_mult(IND_ROW) & 'X' & S_FROM_BOOTH(IND_ROW-1);
                END GENERATE SECOND_TO_LAST_ROW;

                LAST_ROW: IF  IND_ROW = ROW_NUMBER-1 GENERATE
                BEGIN 
                    --QUI GIUSTO
                    inter_stage_sig(0)(IND_ROW)(2*IND_ROW + NBIT-1 downto 2*IND_ROW-2) <= sel_par_mult(IND_ROW)(NBIT-1 DOWNTO 0) & 'X' & S_FROM_BOOTH(IND_ROW-1);
                END GENERATE LAST_ROW;

            END GENERATE ROW_ASSIGNMENT;

        END GENERATE FIRST_STAGE;
        --End of the first stage

        --The second stage is used to realign the input of the tree, allowing to apply the generalized placement of the adders in the first stage too
        SECOND_STAGE: IF IND_STAGE = 1 GENERATE
        BEGIN

            REALIGN_COLUMNS: FOR IND_COL IN 0 TO COLUMN_NUMBER-1 GENERATE
            BEGIN

                REALIGN_STD: IF IND_COL < NBIT+4 GENERATE
                BEGIN

                    THROUGH_ROWS: FOR IND_ROW IN 0 TO ROW_NUMBER-1 GENERATE
                    BEGIN
                        inter_stage_sig(1)(IND_ROW)(IND_COL) <= inter_stage_sig(0)(IND_ROW)(IND_COL);
                    END GENERATE THROUGH_ROWS;

                END GENERATE REALIGN_STD;


                REALIGN_ECCEPTION: IF IND_COL > NBIT+3 GENERATE
                BEGIN

                    THROUGH_ROWS: FOR IND_ROW IN 0 TO ROW_NUMBER-1 GENERATE
                    BEGIN
                        inter_stage_sig(1)(IND_ROW)(IND_COL) <= inter_stage_sig(0)(ROW_NUMBER-1 - IND_ROW)(IND_COL);
                    END GENERATE THROUGH_ROWS;

                END GENERATE REALIGN_ECCEPTION;

            END GENERATE;

        END GENERATE SECOND_STAGE;
        --End of the second stage


        --Instantiation of FAs and HAs
        GENERIC_STAGE: IF IND_STAGE > 1 AND IND_STAGE < STAGE_NUMBER+1 GENERATE
        BEGIN

            THROUGH_COLUMNS: FOR IND_COL IN 0 TO COLUMN_NUMBER-1 GENERATE
            BEGIN

                CREATE_FA: FOR IND_FA IN 0 TO FA_MAT(IND_STAGE-2)(IND_COL)-1 GENERATE
                BEGIN
					 
						EXCEPT_FIRST: IF IND_COL > 0 GENERATE
						BEGIN
							DADDA_FA: FA PORT MAP(
									A => inter_stage_sig(IND_STAGE-1)(3*IND_FA)(IND_COL),
									B => inter_stage_sig(IND_STAGE-1)(3*IND_FA + 1)(IND_COL),
									Cin => inter_stage_sig(IND_STAGE-1)(3*IND_FA + 2)(IND_COL),
									Cout_FA => inter_stage_sig(IND_STAGE)(IND_FA)(IND_COL + 1),
									Sout_FA => inter_stage_sig(IND_STAGE)(IND_FA + FA_MAT(IND_STAGE-2)(IND_COL-1) + HA_MAT(IND_STAGE-2)(IND_COL-1))(IND_COL)
							);
						END GENERATE EXCEPT_FIRST;
                END GENERATE CREATE_FA;

                CREATE_HA: FOR IND_HA IN 0 TO HA_MAT(IND_STAGE-2)(IND_COL)-1 GENERATE
                BEGIN
							EXCEPT_FIRST: IF IND_COL > 0 GENERATE
							BEGIN
								DADDA_HA: HA PORT MAP(
									A => inter_stage_sig(IND_STAGE-1)(2*IND_HA + 3*FA_MAT(IND_STAGE-2)(IND_COL))(IND_COL),
									B => inter_stage_sig(IND_STAGE-1)(2*IND_HA + 3*FA_MAT(IND_STAGE-2)(IND_COL) + 1)(IND_COL),
									Cout_HA => inter_stage_sig(IND_STAGE)(IND_HA + FA_MAT(IND_STAGE-2)(IND_COL))(IND_COL + 1),
									Sout_HA => inter_stage_sig(IND_STAGE)(IND_HA + FA_MAT(IND_STAGE-2)(IND_COL) + FA_MAT(IND_STAGE-2)(IND_COL-1) + HA_MAT(IND_STAGE-2)(IND_COL-1))(IND_COL)
								);
						  END GENERATE EXCEPT_FIRST;
                END GENERATE CREATE_HA;
					
					EXCEPT_FIRST: IF IND_COL > 0 GENERATE
					BEGIN
                --Connection of the spare signals after adder instantiations
                SPARE_SIGNALS: FOR IND_SIG IN 2*HA_MAT(IND_STAGE-2)(IND_COL) + 3*FA_MAT(IND_STAGE-2)(IND_COL) TO element_mat(IND_STAGE-2)(IND_COL)-1 GENERATE
                BEGIN
                    inter_stage_sig(IND_STAGE)(IND_SIG - (2*HA_MAT(IND_STAGE-2)(IND_COL) + 3*FA_MAT(IND_STAGE-2)(IND_COL)) +HA_MAT(IND_STAGE-2)(IND_COL) + FA_MAT(IND_STAGE-2)(IND_COL) + HA_MAT(IND_STAGE-2)(IND_COL-1) + FA_MAT(IND_STAGE-2)(IND_COL-1))(IND_COL) <= inter_stage_sig(IND_STAGE-1)(IND_SIG)(IND_COL); 

                END GENERATE SPARE_SIGNALS;
					END GENERATE EXCEPT_FIRST;
					
					FIRST: IF IND_COL = 0 GENERATE
					BEGIN
						--Connection of the spare signals after adder instantiations
                SPARE_SIGNALS: FOR IND_SIG IN 0 TO ROW_NUMBER-1 GENERATE
                BEGIN
                    inter_stage_sig(IND_STAGE)(IND_SIG)(IND_COL) <= inter_stage_sig(IND_STAGE-1)(IND_SIG)(IND_COL); 

                END GENERATE SPARE_SIGNALS;
					END GENERATE FIRST;
					 
					 
            END GENERATE THROUGH_COLUMNS;

        END GENERATE GENERIC_STAGE;
        --End of the generic stage


        --The last stage is used to instantiate the RCA
        LAST_STAGE: IF IND_STAGE = STAGE_NUMBER+1 GENERATE
        BEGIN

            RCA_HA_LSB0: HA PORT MAP(
                A => inter_stage_sig(IND_STAGE-1)(0)(0),
                B => inter_stage_sig(IND_STAGE-1)(1)(0),
                Cout_HA => inter_stage_sig(IND_STAGE)(0)(0),
                Sout_HA => MBE_OUT_RESULT(0)
            );

            RCA_HA_LSB1: HA PORT MAP(
                A => inter_stage_sig(IND_STAGE-1)(0)(1),
                B => inter_stage_sig(IND_STAGE)(0)(0),
                Cout_HA => inter_stage_sig(IND_STAGE)(0)(2),
                Sout_HA => MBE_OUT_RESULT(1)
            );
            CREATE_RCA_FA: FOR IND_COL IN 2 TO COLUMN_NUMBER-1 GENERATE
            BEGIN
                RCA_FA: FA PORT MAP(
                    A => inter_stage_sig(IND_STAGE-1)(0)(IND_COL),
                    B => inter_stage_sig(IND_STAGE-1)(1)(IND_COL),
                    Cin => inter_stage_sig(IND_STAGE)(0)(IND_COL),
                    Cout_FA => inter_stage_sig(IND_STAGE)(0)(IND_COL+1),
                    Sout_FA => MBE_OUT_RESULT(IND_COL)
                );
            END GENERATE CREATE_RCA_FA;

        END GENERATE LAST_STAGE;
        --End of the last stage

    END GENERATE DADDA_TREE;
    --End of the creation of the dadda tree

END structural;