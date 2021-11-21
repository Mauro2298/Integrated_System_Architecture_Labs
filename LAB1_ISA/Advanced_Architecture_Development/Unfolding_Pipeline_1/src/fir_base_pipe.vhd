library ieee;
use ieee.std_logic_1164.all;
use IEEE.math_real.all;
use work.packa.all;
entity fir_base_pipe is

	-- NBIT is the number of bit of the data in input and output
	-- NSTAGE is the number of coefficients
	-- NKEPT is the number of bit kept in after the multiplication 
	
	-- FILTER_IN_DATA is the data in input
	-- FILTER_IN_VIN is the validation signal in input
	-- FILTER_IN_RSTN is the negated reset signal
	-- FILTER_IN_CLK is the clock signal in input
	-- FILTER_IN_A_COEFF is an array of STD_LOGIC_VECTOR that contains A coefficients
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
end fir_base_pipe;


architecture Structural of fir_base_pipe is




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
SIGNAL MULT_RES_PIPE : TRUNC_STAGE;

component Mult is
generic (Nbit : integer := 13);
port(
	A: in std_logic_vector(Nbit-1 downto 0);
	B: in std_logic_vector(Nbit-1 downto 0);
	O: out std_logic_vector(2 * Nbit-1 downto 0)
);
end component;




begin


MUL0 : Mult generic map (Nbit => NBIT) port map (
			A => SAMPLES(0),
			B => A(0),
			O => MULT_RESULTS(0)
			);

TRUNCATED_MULT_RES(0)(NKEPT - 1 downto 0) <= MULT_RESULTS(0) (2 * NBIT - 1 downto 2 * NBIT - NKEPT);
TRUNCATED_MULT_RES(0)(NBIT - 1 downto NKEPT) <= (OTHERS => MULT_RESULTS(0)(2 * NBIT - 1));


	PIPE_REG0: reg port map (
		DIN => TRUNCATED_MULT_RES(0),
		CLK => CLK,
		VIN => ENABLE,
		RST_N => RST_N,
		DOUT => MULT_RES_PIPE(0)
	);


SUM_RESULTS(0) <= MULT_RES_PIPE(0);

BASIC_CELL: for STAGE_INDEX in 1 to NCOEFF - 1 generate
	begin
		
		MUL : Mult generic map (Nbit => NBIT) port map (
			A => SAMPLES(STAGE_INDEX),
			B => A(STAGE_INDEX),
			O => MULT_RESULTS(STAGE_INDEX) 
		);
		
		TRUNCATED_MULT_RES(STAGE_INDEX)(NKEPT - 1 downto 0) <= MULT_RESULTS(STAGE_INDEX) (2 * NBIT - 1 downto 2 * NBIT - NKEPT);
		TRUNCATED_MULT_RES(STAGE_INDEX)(NBIT - 1 downto NKEPT) <= (OTHERS => MULT_RESULTS(STAGE_INDEX)(2 * NBIT - 1));	

		
		PIPE_REG: reg port map (
			DIN => TRUNCATED_MULT_RES(STAGE_INDEX),
			CLK => CLK,
			VIN => ENABLE,
			RST_N => RST_N,
			DOUT => MULT_RES_PIPE(STAGE_INDEX)
		);
		
		ADD: Adder generic map (Nbit => integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT)
		port map(
			A => MULT_RES_PIPE(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0),
			B => SUM_RESULTS(STAGE_INDEX-1)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0),
			O => SUM_RESULTS(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1 downto 0)
		);
		SUM_RESULTS(STAGE_INDEX)(NBIT - 1 downto integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT ) <= (others => SUM_RESULTS(STAGE_INDEX)(integer(floor(log2(real(STAGE_INDEX)) )) + NKEPT - 1));
	end generate;

DOUT <= SUM_RESULTS(NCOEFF - 1);


END ARCHITECTURE Structural;
