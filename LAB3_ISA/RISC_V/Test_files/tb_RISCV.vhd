LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE WORK.dictionary.ALL;

ENTITY tb_RISCV IS

END ENTITY;

ARCHITECTURE behavioral OF tb_RISCV IS

	COMPONENT RISCV IS
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
	END COMPONENT;
	
--	COMPONENT IR IS
--	generic (
--			MEM_SIZE : integer := 50;
--			I_SIZE: integer := 32
--	);
--	port (
--		RST : IN std_logic;
--		ADDRESS: IN std_logic_vector(I_SIZE-1 downto 0);
--		DOUT: OUT std_logic_vector(I_SIZE-1 downto 0)
--		
--	);
--	END COMPONENT;

	COMPONENT InstrMemory IS
	port (address : in std_logic_vector (4 downto 0);
		data : out std_logic_vector (31 downto 0));

	END COMPONENT;
	
	
	COMPONENT DataMem IS
	generic(M: NATURAL := 5;
		N: NATURAL := 32);
	port(Address: in std_logic_vector(M-1 downto 0);
		RST : in std_logic;
		Data: in std_logic_vector(N-1 downto 0);
		WE, RE: in std_logic;
		Qout: out std_logic_vector(N-1 downto 0));
	END COMPONENT;

SIGNAL CLK, RST : STD_LOGIC;

SIGNAL INST, ADD_IM, ADD_DM, DT_TO_PR, DT_FROM_PR : STD_LOGIC_VECTOR(NBIT_INST-1 DOWNTO 0);

SIGNAL READ_DT, WRITE_DT : STD_LOGIC;

BEGIN

RST <= '0', '1' AFTER 40 ns; 

CLK_GEN : process
    begin
        CLK <= '1';
        wait for 10 ns;
        CLK <= '0';
        wait for 10 ns;
    end process CLK_GEN;

DUT: RISCV PORT MAP (
					RISCV_IN_CLK => CLK,
					RISCV_IN_RST => RST,
					
					RISCV_IN_INST => INST,
					RISCV_IN_DT => DT_TO_PR,
					
					RISCV_OUT_ADD_IM => ADD_IM,
					RISCV_OUT_ADD_DM => ADD_DM,
					
					RISCV_OUT_DM_DT => DT_FROM_PR,
					
					RISCV_OUT_DM_RD => READ_DT,
					RISCV_OUT_DM_WR => WRITE_DT
					
				);

--INST_MEM : IR GENERIC MAP (MEM_SIZE => 50, I_SIZE => NBIT_INST)
--				PORT MAP (
--						RST => RST,
--						ADDRESS => ADD_IM,
--						DOUT => INST
--				);
	
INST_MEM : InstrMemory PORT MAP(
							address => ADD_IM(6 DOWNTO 2),
							DATA => INST
						);
	
DT_MEM : DataMem GENERIC MAP(M => 5, N => NBIT_INST)
					PORT MAP(
							Address => ADD_DM(6 DOWNTO 2),
							RST => RST,
							Data => DT_FROM_PR,
							WE => WRITE_DT,
							RE => READ_DT,
							Qout => DT_TO_PR
					);

END ARCHITECTURE;