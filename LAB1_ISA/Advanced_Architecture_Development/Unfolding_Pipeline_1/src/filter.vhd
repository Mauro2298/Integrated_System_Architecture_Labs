library ieee;
use ieee.std_logic_1164.all;
use IEEE.math_real.all;
use work.packa.all;
entity myfir is
	-- NBIT is the number of bit of the data in input and output
	-- NSTAGE is the number of coefficients
	-- NKEPT is the number of bit kept in after the multiplication 
	
	-- FILTER_IN_DATA is the data in input
	-- FILTER_IN_VIN is the validation signal in input
	-- FILTER_IN_RSTN is the negated reset signal
	-- FILTER_IN_CLK is the clock signal in input
	-- FILTER_IN_A_COEFF is an array of STD_LOGIC_VECTOR that contains A coefficients
	port (
		CLK : IN STD_LOGIC;
		RST_N: IN STD_LOGIC;
		DIN0: IN STD_LOGIC_VECTOR( 13 - 1 downto 0);
		DIN1: IN STD_LOGIC_VECTOR( 13 - 1 downto 0);
		DIN2: IN STD_LOGIC_VECTOR( 13 - 1 downto 0);
		VIN : IN STD_LOGIC;
		H0 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H1 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H2 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H3 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H4 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H5 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H6 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H7 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H8 : IN STD_LOGIC_VECTOR ( 13 -1 DOWNTO 0);
		H9 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
		H10 : IN STD_LOGIC_VECTOR ( 13 - 1 DOWNTO 0);
 		DOUT0 : OUT STD_LOGIC_VECTOR (13 - 1 downto 0);
		DOUT1 : OUT STD_LOGIC_VECTOR (13 - 1 downto 0);
		DOUT2 : OUT STD_LOGIC_VECTOR (13 - 1 downto 0);
		VOUT : OUT STD_LOGIC
		
	);
end myfir;


architecture Structural of myfir is
constant NBIT: integer := 13; 
constant NCOEFF: integer := 11;
constant NKEPT:integer := 8;



component reg is
	generic (NB : integer := 13);
	port (
			DIN : in std_logic_vector(NB - 1 downto 0);
			CLK : in std_logic;
			VIN : in std_logic;
			RST_N : in std_logic;
			DOUT : out std_logic_vector(NB-1 downto 0)
		);
end component;

SIGNAL A: STAGE;
SIGNAL ENABLE : STD_LOGIC;

type sample_stage is array (0 to 12) of std_logic_vector(NBIT - 1 downto 0);
SIGNAL SAMPLES : SAMPLE_STAGE; 

SIGNAL SAMPLES_FIR0 : STAGE;
SIGNAL SAMPLES_FIR1 : STAGE;
SIGNAL SAMPLES_FIR2 : STAGE;

SIGNAL OUT_RES0 : STD_LOGIC_VECTOR(NBIT - 1 downto 0);
SIGNAL OUT_RES1 : STD_LOGIC_VECTOR(NBIT - 1 downto 0);
SIGNAL OUT_RES2 : STD_LOGIC_VECTOR(NBIT - 1 downto 0);

SIGNAL VIN_PIPE : STD_LOGIC;


component fir_base_pipe is
	generic (NBIT: integer := 13; 
		NCOEFF: integer := 11;
	 	NKEPT:integer := 8);
	port (
		CLK : IN STD_LOGIC;
		RST_N: IN STD_LOGIC;
		A: IN STAGE;
		SAMPLES : IN STAGE;
		ENABLE : IN STD_LOGIC;
		DOUT : OUT STD_LOGIC_VECTOR (13 - 1 downto 0)
	);
end component;

begin


REG_GEN: for i in 3 to 12 generate
	REG_CMP: reg
	generic map (NB => NBIT)
	port map(
			DIN => SAMPLES(i-3),
			CLK => CLK,
			VIN => VIN,
			RST_N => RST_N,
			DOUT => SAMPLES(i)
		);
	
end generate;

GEN_SIGNAL_STAGE: for i in 0 to 10 generate
	SAMPLES_FIR0(i) <= SAMPLES(i+2);
	SAMPLES_FIR1(i) <= SAMPLES(i+1);
	SAMPLES_FIR2(i) <= SAMPLES(i);
end generate;

FIR_BASE_0: fir_base_pipe
	generic map (NBIT => NBIT, 
		NCOEFF => NCOEFF,
	 	NKEPT => NKEPT)
	port map(
		CLK => CLK,
		RST_N => RST_N,
		A => A,
		SAMPLES => SAMPLES_FIR0,
		ENABLE => ENABLE,
		DOUT =>  OUT_RES0
		
	);



FIR_BASE_1: fir_base_pipe
	generic map (NBIT => NBIT, 
		NCOEFF => NCOEFF,
	 	NKEPT => NKEPT)
	port map(
		CLK => CLK,
		RST_N => RST_N,
		A => A,
		SAMPLES => SAMPLES_FIR1,
		ENABLE => ENABLE,
		DOUT =>  OUT_RES1
		
	);


FIR_BASE_2: fir_base_pipe
	generic map (NBIT => NBIT, 
		NCOEFF => NCOEFF,
	 	NKEPT => NKEPT)
	port map(
		CLK => CLK,
		RST_N => RST_N,
		A => A,
		SAMPLES => SAMPLES_FIR2,
		ENABLE => ENABLE,
		DOUT =>  OUT_RES2
		
	);

Input_Registers: PROCESS (CLK, RST_N)
				BEGIN
					
					IF RST_N = '0' THEN
			
						A <= (OTHERS => (OTHERS => '0'));
						
						
						SAMPLES(0) <= (OTHERS => '0');
						SAMPLES(1) <= (OTHERS => '0');
						SAMPLES(2) <= (OTHERS => '0');

					ELSIF RISING_EDGE(CLK) AND VIN = '1' THEN
						A(0) <= H0;
						A(1) <= H1;
						A(2) <= H2;
						A(3) <= H3;
						A(4) <= H4;
						A(5) <= H5;
						A(6) <= H6;
						A(7) <= H7;
						A(8) <= H8;
						A(9) <= H9;
						A(10) <= H10;
						SAMPLES(2) <= DIN0;
						SAMPLES(1) <= DIN1;
						SAMPLES(0) <= DIN2;
						 

					END IF;

				END PROCESS Input_Registers;

Output_Registers: PROCESS (CLK, RST_N)
				BEGIN

					IF RST_N = '0' THEN 
						DOUT0 <= (OTHERS => '0');
						DOUT1 <= (OTHERS => '0');
						DOUT2 <= (OTHERS => '0');
						--VIN_PIPE <= '0';
						--VOUT <= '0';

					ELSIF RISING_EDGE(CLK) AND VIN_PIPE = '1' THEN 

						DOUT0 <= OUT_RES0;
						DOUT1 <= OUT_RES1;
						DOUT2 <= OUT_RES2;
						
				--		VOUT <= '1';

					END  IF; 

				END PROCESS Output_Registers;

Enable_Register: PROCESS (CLK,RST_N)
				BEGIN

					IF RST_N = '0' THEN

						ENABLE <= '0';
						VIN_PIPE <= '0';
						VOUT <= '0';

					ELSIF RISING_EDGE(CLK) THEN
						VOUT <= VIN_PIPE;
						VIN_PIPE <= ENABLE;
						ENABLE <= VIN;
						

					END IF; 

				END PROCESS Enable_Register;

END ARCHITECTURE Structural;
