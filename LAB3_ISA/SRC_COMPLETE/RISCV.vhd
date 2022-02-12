LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

USE WORK.dictionary.ALL;

ENTITY RISCV IS
	PORT(
	
		RISCV_IN_CLK : IN STD_LOGIC;
		RISCV_IN_RST : IN STD_LOGIC;
	
		RISCV_IN_INST : IN STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);
		RISCV_IN_DT : IN STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
		
		RISCV_OUT_ADD_IM : OUT STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);
		RISCV_OUT_ADD_DM : OUT STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);
		
		RISCV_OUT_DM_DT : OUT STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
		
		RISCV_OUT_DM_RD : OUT STD_LOGIC;
		RISCV_OUT_DM_WR : OUT STD_LOGIC
	);
END ENTITY;

ARCHITECTURE structural OF RISCV IS

	COMPONENT int_adder IS
	GENERIC (N : INTEGER);
        PORT (
            INT_ADD_IN_A : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            INT_ADD_IN_B : IN STD_LOGIC_VECTOR (N-1 DOWNTO 0);
            INT_ADD_OUT : OUT STD_LOGIC_VECTOR (N-1 DOWNTO 0)
        );
	END COMPONENT;

	COMPONENT CTRL_unit IS
	PORT(
		CTRL_IN_OPCODE : IN STD_LOGIC_VECTOR(NBIT_OPCODE-1 DOWNTO 0);
		
		CTRL_OUT_IMML : OUT STD_LOGIC;
		CTRL_OUT_IMMA : OUT STD_LOGIC;
		CTRL_OUT_IMMS : OUT STD_LOGIC;
		CTRL_OUT_B : OUT STD_LOGIC;
		CTRL_OUT_J : OUT STD_LOGIC;
		CTRL_OUT_LUI : OUT STD_LOGIC;
		CTRL_OUT_AUIPC : OUT STD_LOGIC;
		CTRL_OUT_S : OUT STD_LOGIC;
		CTRL_OUT_RA : OUT STD_LOGIC;
		
		CTRL_OUT_EX : OUT STD_LOGIC;
		CTRL_OUT_WB : OUT STD_LOGIC
	);
	END COMPONENT;
	
	COMPONENT RF IS
		PORT(
		RF_IN_RS1 : IN STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);
		RF_IN_RS2 : IN STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);
		RF_IN_RD : IN STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);
		RF_IN_WR_RD : IN STD_LOGIC;
		RF_IN_RD_DT : IN STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
		
		RF_IN_RST : IN STD_LOGIC;
		RF_IN_CLK : IN STD_LOGIC;
		
		RF_OUT_RS1_DT : OUT STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
		RF_OUT_RS2_DT : OUT STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0)
	);
	END COMPONENT;

	COMPONENT immediate_gen IS
		PORT(
		IMM_GEN_IN_INST : IN STD_LOGIC_VECTOR (NBIT_INST-1 DOWNTO 0);
		IMM_GEN_OUT_IMM : OUT STD_LOGIC_VECTOR (NBIT_INST-1 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT ALU_control IS
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
	END COMPONENT;
	
	COMPONENT FW_unit IS
	PORT(
		FW_IN_RS1_EX : IN STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);
		FW_IN_RS2_EX : IN STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);
		FW_IN_RD_M : IN STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);
		FW_IN_RD_WB : IN STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);
		
		FW_IN_WB_M : IN STD_LOGIC;
		FW_IN_WB_WB : IN STD_LOGIC;
		
		FW_OUT_FW_A_M : OUT STD_LOGIC;
		FW_OUT_FW_A_WB : OUT STD_LOGIC;
		FW_OUT_FW_B_M : OUT STD_LOGIC;
		FW_OUT_FW_B_WB : OUT STD_LOGIC
	);
	END COMPONENT;
	
	COMPONENT ALU IS
	PORT(
        ALU_IN_A : IN STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0);
        ALU_IN_B : IN STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0);
		ALU_IN_OPCODE : IN STD_LOGIC_VECTOR (NBIT_ALU_OPCODE-1 DOWNTO 0);
        ALU_OUT : OUT STD_LOGIC_VECTOR (NBIT-1 DOWNTO 0)
    );
	END COMPONENT;

--IF signals
SIGNAL NEXT_PC, IF_PC, IF_PC_PLUS_4, IF_INST : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);
SIGNAL PC_EN : STD_LOGIC;


--ID signals
SIGNAL JUMP : STD_LOGIC;
SIGNAL JUMP_TARGET : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);

SIGNAL IF_ID_RST, IF_ID_EN: STD_LOGIC;

SIGNAL ID_PC, ID_INST, ID_IMM_TO_J_SUM, ID_PC_TO_J_SUM : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);

SIGNAL ID_IMML, ID_IMMA, ID_IMMS, ID_B, ID_J, ID_LUI, ID_AUIPC, ID_S, ID_RA, ID_EX, ID_WB : STD_LOGIC;

SIGNAL ID_RS1_ADD, ID_RS2_ADD, ID_RD_ADD : STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);

SIGNAL ID_RS1_DT_FROM_RF, ID_RS2_DT_FROM_RF, ID_RS1_SEL, ID_RS2_SEL, ID_IMM_DT : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0); 

SIGNAL ID_USE_WB_AS_RS1, ID_USE_WB_AS_RS2 : STD_LOGIC;

SIGNAL ID_ALU_OPCODE : STD_LOGIC_VECTOR(NBIT_ALU_OPCODE-1 DOWNTO 0);

--EX signals

SIGNAL ID_EX_RST, ID_EX_EN : STD_LOGIC;

SIGNAL EX_IMML, EX_IMMA, EX_IMMS, EX_B, EX_LUI, EX_AUIPC, EX_S, EX_RA, EX_EX, EX_WB : STD_LOGIC;

SIGNAL EX_RS1_ADD, EX_RS2_ADD, EX_RD_ADD : STD_LOGIC_VECTOR (NBIT_RF_ADD-1 DOWNTO 0);

SIGNAL EX_RS1_DT, EX_RS2_DT, EX_IMM_DT, EX_ALU_RES : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);
SIGNAL EX_PC, EX_BRANCH_TGT : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);

SIGNAL EX_ALU_OPCODE : STD_LOGIC_VECTOR(NBIT_ALU_OPCODE-1 DOWNTO 0);

SIGNAL EX_FW_A_M, EX_FW_A_WB, EX_FW_B_M, EX_FW_B_WB : STD_LOGIC;
SIGNAL EX_RS1_REQ, EX_RS2_REQ, EX_IMM_REQ : STD_LOGIC;

SIGNAL EX_ALU_IN_A, EX_ALU_IN_B : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);

--M signals

SIGNAL EX_M_RST, EX_M_EN : STD_LOGIC;

SIGNAL BRANCH_TAKEN : STD_LOGIC;
SIGNAL BRANCH_TARGET : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);

SIGNAL M_B, M_IMML, M_S, M_WB : STD_LOGIC;

SIGNAL M_RD_ADD : STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);

SIGNAL M_ALU_RES, M_RS2_DT, M_MEM_OUT : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0); 

--WB signals

SIGNAL M_WB_RST, M_WB_EN : STD_LOGIC;

SIGNAL WB_RD_ADD : STD_LOGIC_VECTOR(NBIT_RF_ADD-1 DOWNTO 0);

SIGNAL WB_IMML, WB_WB : STD_LOGIC;

SIGNAL WB_ALU_RES, WB_MEM_OUT, WB_SEL_DT : STD_LOGIC_VECTOR(NBIT-1 DOWNTO 0);


--------------------------------------------------------------------------------------------------------------------------------------------------------
BEGIN

--Next PC selection
NEXT_PC <= 
			BRANCH_TARGET WHEN BRANCH_TAKEN = '1' ELSE
			
			JUMP_TARGET WHEN (JUMP = '1' AND BRANCH_TAKEN = '0') ELSE
			
			IF_PC_PLUS_4;


--------------------------------------------------------------------------------------------------------------------------------------------------------
--PC register
PC_REG: PROCESS (RISCV_IN_CLK, RISCV_IN_RST)
BEGIN
		IF RISCV_IN_RST = '0' THEN
		
			IF_PC <= (OTHERS => '0');
		
		ELSIF RISING_EDGE(RISCV_IN_CLK) THEN
		
			IF PC_EN = '1' THEN
				
				IF_PC <= NEXT_PC;
				
			END IF;
		
		END IF;
		
END PROCESS PC_REG;


--------------------------------------------------------------------------------------------------------------------------------------------------------
--IF

RISCV_OUT_ADD_IM <= IF_PC;

IF_INST <= RISCV_IN_INST;

PC4_ADDER: int_adder GENERIC MAP (N => NBIT_INST)
					PORT MAP (
							INT_ADD_IN_A => IF_PC,
							INT_ADD_IN_B => STD_LOGIC_VECTOR(TO_UNSIGNED(4,NBIT_INST)),
							INT_ADD_OUT => IF_PC_PLUS_4
					);

--------------------------------------------------------------------------------------------------------------------------------------------------------
--IF/ID register
IF_ID_REG: PROCESS (RISCV_IN_CLK, IF_ID_RST)
BEGIN

	IF IF_ID_RST = '0' THEN
	
		ID_PC <= (OTHERS => '0');
		ID_INST <= (OTHERS => '0');
	
	ELSIF RISING_EDGE(RISCV_IN_CLK) THEN
	
		IF IF_ID_EN = '1' THEN
		
			ID_PC <= IF_PC;
			ID_INST <= IF_INST;
		
		END IF;
	
	END IF;

END PROCESS IF_ID_REG;

--------------------------------------------------------------------------------------------------------------------------------------------------------
--ID


CONTROL: CTRL_unit PORT MAP(
							CTRL_IN_OPCODE => ID_INST(NBIT_OPCODE-1 DOWNTO 0),
							CTRL_OUT_AUIPC => ID_AUIPC,
							CTRL_OUT_B => ID_B,
							CTRL_OUT_EX => ID_EX,
							CTRL_OUT_IMMA => ID_IMMA,
							CTRL_OUT_IMML => ID_IMML,
							CTRL_OUT_IMMS => ID_IMMS,
							CTRL_OUT_J => ID_J,
							CTRL_OUT_LUI => ID_LUI,
							CTRL_OUT_RA => ID_RA,
							CTRL_OUT_S => ID_S,
							CTRL_OUT_WB => ID_WB
					);
JUMP <= ID_J;
					
--Avoid the reading from RF when not necessary
ID_USE_WB_AS_RS1 <= '1' WHEN (ID_INST(19 DOWNTO 15) = WB_RD_ADD) AND (WB_WB = '1') ELSE '0';

ID_USE_WB_AS_RS2 <= '1' WHEN (ID_INST(24 DOWNTO 20) = WB_RD_ADD) AND (WB_WB = '1') ELSE '0';

ID_RS1_ADD <= ID_INST(19 DOWNTO 15) WHEN (ID_IMMA='1' OR ID_IMMS='1' OR ID_RA='1' OR ID_B='1' OR ID_IMML='1' OR ID_S='1') AND (ID_USE_WB_AS_RS1 = '0')
				ELSE (OTHERS=>'0');

ID_RS2_ADD <= ID_INST(24 DOWNTO 20) WHEN (ID_RA= '1' OR ID_B='1') AND (ID_USE_WB_AS_RS2 = '0')
				ELSE (OTHERS=>'0');
				
ID_RD_ADD <= ID_INST(11 DOWNTO 7) WHEN (ID_B = '0' AND ID_S = '0') 
				ELSE (OTHERS => '0');

REGISTER_FILE: RF PORT MAP(
						RF_IN_RS1 => ID_RS1_ADD,
						RF_IN_RS2 => ID_RS2_ADD,
						RF_IN_RD => WB_RD_ADD,
						RF_IN_WR_RD => WB_WB,
						RF_IN_RD_DT => WB_SEL_DT,
						RF_IN_RST => RISCV_IN_RST,
						RF_IN_CLK => RISCV_IN_CLK,
						
						RF_OUT_RS1_DT => ID_RS1_DT_FROM_RF,
						RF_OUT_RS2_DT => ID_RS2_DT_FROM_RF
					);
--If the source register is beign written, use the data which is being loaded
ID_RS1_SEL <= WB_SEL_DT WHEN ((ID_USE_WB_AS_RS1 = '1')) ELSE 
				ID_RS1_DT_FROM_RF;

ID_RS2_SEL <= WB_SEL_DT WHEN ((ID_USE_WB_AS_RS2 = '1')) ELSE 
				ID_RS2_DT_FROM_RF;
				
				
IMMEDIATE: immediate_gen PORT MAP (
								IMM_GEN_IN_INST => ID_INST,
								IMM_GEN_OUT_IMM => ID_IMM_DT
							);

ID_PC_TO_J_SUM <= ID_PC WHEN (ID_J = '1' OR ID_B='1') ELSE (OTHERS=>'0');

ID_IMM_TO_J_SUM <= ID_IMM_DT WHEN (ID_J = '1' OR ID_B='1') ELSE (OTHERS => '0');

J_SUM: int_adder GENERIC MAP(N => NBIT_INST)
				PORT MAP (
						INT_ADD_IN_A => ID_PC_TO_J_SUM,
						INT_ADD_IN_B => ID_IMM_TO_J_SUM,
						INT_ADD_OUT => JUMP_TARGET
				);

CONTROL_ALU : ALU_control PORT MAP(
								ALU_CTRL_IN_IMML => ID_IMML,
								ALU_CTRL_IN_IMMA => ID_IMMA,
								ALU_CTRL_IN_S => ID_S,
								ALU_CTRL_IN_RA => ID_RA,
								ALU_CTRL_IN_B => ID_B,
								ALU_CTRL_IN_IMMS => ID_IMMS,
								ALU_CTRL_IN_AUIPC => ID_AUIPC,
								
								ALU_CTRL_IN_F3 => ID_INST(14 DOWNTO 12),
								ALU_CTRL_IN_B30 => ID_INST(30),
								
								ALU_CTRL_OUT => ID_ALU_OPCODE
							);

--------------------------------------------------------------------------------------------------------------------------------------------------------
--ID/EX register

ID_EX_REG: PROCESS (RISCV_IN_CLK, ID_EX_RST)
BEGIN

	IF ID_EX_RST = '0' THEN
	
			EX_ALU_OPCODE <= (OTHERS=>'0');
			
			EX_IMML <= '0';
			EX_IMMA <= '0';
			EX_IMMS <= '0';
			EX_B <= '0';
			EX_LUI <= '0';
			EX_AUIPC <= '0';
			EX_S <= '0';
			EX_RA <= '0';
			
			EX_EX <= '0';
			EX_WB <= '0';
			
			EX_PC <= (OTHERS=>'0');
			
			EX_RS1_DT <= (OTHERS=>'0');
			EX_RS2_DT <= (OTHERS=>'0');
			
			EX_IMM_DT <= (OTHERS=>'0');
			
			EX_RS1_ADD <= (OTHERS=>'0');
			EX_RS2_ADD <= (OTHERS=>'0');
			EX_RD_ADD <= (OTHERS=>'0');
		
			EX_BRANCH_TGT <= (OTHERS=>'0');
	
	ELSIF RISING_EDGE(RISCV_IN_CLK) THEN
	
		IF ID_EX_EN = '1' THEN
		
			EX_ALU_OPCODE <= ID_ALU_OPCODE;
			
			EX_IMML <= ID_IMML;
			EX_IMMA <= ID_IMMA;
			EX_IMMS <= ID_IMMS;
			EX_B <= ID_B;
			EX_LUI <= ID_LUI;
			EX_AUIPC <= ID_AUIPC;
			EX_S <= ID_S;
			EX_RA <= ID_RA;
			
			EX_EX <= ID_EX;
			EX_WB <= ID_WB;
			
			EX_PC <= ID_PC;
			
			EX_RS1_DT <= ID_RS1_SEL;
			EX_RS2_DT <= ID_RS2_SEL;
			
			EX_IMM_DT <= ID_IMM_DT;
			
			EX_RS1_ADD <= ID_RS1_ADD;
			EX_RS2_ADD <= ID_RS2_ADD;
			EX_RD_ADD <= ID_RD_ADD;
		
			EX_BRANCH_TGT <= JUMP_TARGET;
		
		END IF;
	
	END IF;

END PROCESS ID_EX_REG;
--------------------------------------------------------------------------------------------------------------------------------------------------------
--EX

FORWARDING: FW_unit PORT MAP(
							FW_IN_RS1_EX => EX_RS1_ADD,
							FW_IN_RS2_EX => EX_RS2_ADD,
							
							FW_IN_RD_M => M_RD_ADD,
							FW_IN_RD_WB => WB_RD_ADD,
							
							FW_IN_WB_M => M_WB,
							FW_IN_WB_WB => WB_WB,
							
							FW_OUT_FW_A_M => EX_FW_A_M,
							FW_OUT_FW_A_WB => EX_FW_A_WB,
							FW_OUT_FW_B_M => EX_FW_B_M,
							FW_OUT_FW_B_WB => EX_FW_B_WB
						);

EX_RS1_REQ <= EX_IMMA OR EX_IMMS OR EX_RA OR EX_IMML OR EX_S OR EX_B;

EX_RS2_REQ <= EX_RA OR EX_B;

EX_IMM_REQ <= EX_IMMA OR EX_IMMS OR EX_IMML OR EX_S OR EX_AUIPC;

EX_ALU_IN_A <= EX_RS1_DT WHEN (EX_EX='1' AND (EX_RS1_REQ='1' AND (EX_FW_A_M='0' AND EX_FW_A_WB='0'))) ELSE 
				M_ALU_RES WHEN (EX_EX='1' AND (EX_RS1_REQ='1' AND EX_FW_A_M='1')) ELSE
				WB_SEL_DT WHEN (EX_EX='1' AND (EX_RS1_REQ='1' AND (EX_FW_A_WB='1' AND EX_FW_A_WB='0'))) ELSE
				EX_PC WHEN (EX_EX='1' AND (EX_AUIPC='1')) ELSE
				(OTHERS=>'0');

EX_ALU_IN_B <= EX_RS2_DT WHEN (EX_EX='1' AND (EX_RS2_REQ='1' AND (EX_FW_B_M='0' AND EX_FW_B_WB='0'))) ELSE
				M_ALU_RES WHEN (EX_EX='1' AND (EX_RS2_REQ='1' AND EX_FW_B_M='1')) ELSE
				WB_SEL_DT WHEN (EX_EX='1' AND (EX_RS2_REQ='1' AND (EX_FW_B_WB='1' AND EX_FW_B_WB='0'))) ELSE
				EX_IMM_DT WHEN (EX_EX='1' AND (EX_IMM_REQ='1')) ELSE
				(OTHERS=>'0');

ARITMETIC_LOGIC_UNIT: ALU PORT MAP(
								ALU_IN_A => EX_ALU_IN_A,
								ALU_IN_B => EX_ALU_IN_B,
								ALU_IN_OPCODE => EX_ALU_OPCODE,
								ALU_OUT => EX_ALU_RES
							);



--------------------------------------------------------------------------------------------------------------------------------------------------------
--EX/M register

EX_M_REG: PROCESS (RISCV_IN_CLK, EX_M_RST)
BEGIN

	IF EX_M_RST = '0' THEN
	
		M_ALU_RES <= (OTHERS=>'0');
		
		BRANCH_TARGET <= (OTHERS=>'0');
		
		M_RS2_DT <= (OTHERS=>'0');
		M_RD_ADD <= (OTHERS=>'0');
		
		M_B <= '0';
		M_IMML <= '0';
		M_S <= '0';
		M_WB <= '0';
	
	ELSIF RISING_EDGE(RISCV_IN_CLK) THEN
	
		IF EX_M_EN = '1' THEN
		
			M_ALU_RES <= EX_ALU_RES;
			
			BRANCH_TARGET <= EX_BRANCH_TGT;
			
			M_RS2_DT <= EX_RS2_DT;	
			M_RD_ADD <= EX_RD_ADD;
			
			M_B <= EX_B;
			M_IMML <= EX_IMML;
			M_S <= EX_S;
			M_WB <= EX_WB;
		
		END IF;
	
	END IF;

END PROCESS EX_M_REG;


--------------------------------------------------------------------------------------------------------------------------------------------------------
--M

BRANCH_TAKEN <= M_B AND M_ALU_RES(0);

RISCV_OUT_ADD_DM <= M_ALU_RES;

RISCV_OUT_DM_DT <= M_RS2_DT;

M_MEM_OUT <= RISCV_IN_DT;

RISCV_OUT_DM_RD <= M_IMML;

RISCV_OUT_DM_WR <= M_S;

--------------------------------------------------------------------------------------------------------------------------------------------------------
--M/WB register

M_WB_REG: PROCESS (RISCV_IN_CLK, M_WB_RST)
BEGIN

	IF M_WB_RST = '0' THEN
	
		WB_ALU_RES <= (OTHERS=>'0');
		WB_MEM_OUT <= (OTHERS=>'0');
		
		WB_RD_ADD <= (OTHERS=>'0');
		
		WB_IMML <= '0';
		WB_WB <= '0';
	
	ELSIF RISING_EDGE(RISCV_IN_CLK) THEN
	
		IF M_WB_EN = '1' THEN
		
			WB_ALU_RES <= M_ALU_RES;
			WB_MEM_OUT <= M_MEM_OUT;
			
			WB_RD_ADD <= M_RD_ADD;
			
			WB_IMML <= M_IMML;
			WB_WB <= M_WB;
		
		END IF;
	
	END IF;

END PROCESS M_WB_REG;


--------------------------------------------------------------------------------------------------------------------------------------------------------
--WB

WB_SEL_DT <= WB_MEM_OUT WHEN (WB_IMML = '1') ELSE
			WB_ALU_RES;

--------------------------------------------------------------------------------------------------------------------------------------------------------
--HAZARD DETECTION UNIT

PC_EN <= '1';

IF_ID_EN <= NOT BRANCH_TAKEN;
IF_ID_RST <= RISCV_IN_RST AND (NOT BRANCH_TAKEN);

ID_EX_EN <= NOT BRANCH_TAKEN;
ID_EX_RST <= RISCV_IN_RST AND (NOT BRANCH_TAKEN);

EX_M_EN <= '1';
EX_M_RST <= RISCV_IN_RST;

M_WB_EN <= '1';
M_WB_RST <= RISCV_IN_RST;


END structural;