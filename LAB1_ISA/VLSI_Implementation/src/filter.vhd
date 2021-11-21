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
		DIN: IN STD_LOGIC_VECTOR( 13 - 1 downto 0);
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
 		DOUT : OUT STD_LOGIC_VECTOR (13 - 1 downto 0);
		VOUT : OUT STD_LOGIC
		
	);
end myfir;


architecture Structural of myfir is
--generic (NBIT: integer := 13; 
--			NCOEFF: integer := 11;
--		 	NKEPT:integer := 8);
constant NBIT: integer := 13; 
constant NCOEFF: integer := 11;
constant NKEPT:integer := 8;

SIGNAL SAMPLES : STAGE;


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

SIGNAL SUM_RESULTS: STAGE;

component Adder is
generic (Nbit : integer := 13);
port(
	A: in std_logic_vector(Nbit-1 downto 0);
	B: in std_logic_vector(Nbit-1 downto 0);
	O: out std_logic_vector(Nbit-1 downto 0)
);

end component;

type mult_stage is array (0 to NCOEFF - 1) of std_logic_vector(2 * NBIT - 1 downto 0);
SIGNAL MULT_RESULTS: mult_STAGE;

type TRUNC_STAGE is array (0 to NCOEFF - 1) of std_logic_vector(NBIT - 1 downto 0);
SIGNAL TRUNCATED_MULT_RES : TRUNC_STAGE;
component Mult is
generic (Nbit : integer := 13);
port(
	A: in std_logic_vector(Nbit-1 downto 0);
	B: in std_logic_vector(Nbit-1 downto 0);
	O: out std_logic_vector(2 * Nbit-1 downto 0)
);
end component;

SIGNAL A: STAGE;
SIGNAL ENABLE : STD_LOGIC;

begin


MUL0 : Mult generic map (Nbit => NBIT) port map (
			A => SAMPLES(0),
			B => A(0),
			O => MULT_RESULTS(0)
			);

TRUNCATED_MULT_RES(0)(NKEPT - 1 downto 0) <= MULT_RESULTS(0) (2 * NBIT - 1 downto 2 * NBIT - NKEPT);
TRUNCATED_MULT_RES(0)(NBIT - 1 downto NKEPT) <= (OTHERS => MULT_RESULTS(0)(2 * NBIT - 1));

SUM_RESULTS(0)(NKEPT - 1 downto 0) <= MULT_RESULTS(0) (2 * NBIT - 1 downto 2 * NBIT - NKEPT);
SUM_RESULTS(0)(NBIT - 1 downto NKEPT) <= (OTHERS => MULT_RESULTS(0)(2 * NBIT - 1));

BASIC_CELL: for STAGE_INDEX in 1 to NCOEFF - 1 generate
	begin
		SAMPLE_REG: reg port map (
			DIN => SAMPLES(STAGE_INDEX - 1),
			CLK => CLK,
			VIN => VIN,
			RST_N => RST_N,
			DOUT => SAMPLES(STAGE_INDEX)
		);
		
		MUL : Mult generic map (Nbit => NBIT) port map (
			A => SAMPLES(STAGE_INDEX),
			B => A(STAGE_INDEX),
			O => MULT_RESULTS(STAGE_INDEX) 
		);
		
		TRUNCATED_MULT_RES(STAGE_INDEX)(NKEPT - 1 downto 0) <= MULT_RESULTS(STAGE_INDEX) (2 * NBIT - 1 downto 2 * NBIT - NKEPT);
		TRUNCATED_MULT_RES(STAGE_INDEX)(NBIT - 1 downto NKEPT) <= (OTHERS => MULT_RESULTS(STAGE_INDEX)(2 * NBIT - 1));	

		ADD: Adder generic map (Nbit => integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT)
		port map(
			A => TRUNCATED_MULT_RES(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0),
			B => SUM_RESULTS(STAGE_INDEX-1)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0),
			O => SUM_RESULTS(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0)
		);
		SUM_RESULTS(STAGE_INDEX)(NBIT - 1 downto integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT ) <= (others => SUM_RESULTS(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1));
	end generate;

Input_Registers: PROCESS (CLK, RST_N)
				BEGIN
					
					IF RST_N = '0' THEN
			
						A <= (OTHERS => (OTHERS => '0'));
						
						
						SAMPLES(0) <= (OTHERS => '0');

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
						SAMPLES(0) <= DIN;

					END IF;

				END PROCESS Input_Registers;

Output_Registers: PROCESS (CLK, RST_N)
				BEGIN

					IF RST_N = '0' THEN 

						DOUT <= (OTHERS => '0');
						VOUT <= '0';

					ELSIF RISING_EDGE(CLK) AND ENABLE = '1' THEN 

						DOUT <= SUM_RESULTS (NCOEFF-1);
						VOUT <= '1';
					ELSIF RISING_EDGE(CLK) AND ENABLE = '0' THEN
						VOUT <= '0';
					END  IF; 

				END PROCESS Output_Registers;

Enable_Register: PROCESS (CLK)--,RST_N)
				BEGIN

					IF RST_N = '0' THEN

						ENABLE <= '0';

					ELSIF RISING_EDGE(CLK) THEN

						ENABLE <= VIN;

					END IF; 

				END PROCESS Enable_Register;

END ARCHITECTURE Structural;
