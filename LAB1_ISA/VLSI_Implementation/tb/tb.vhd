library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use work.packa.all;

entity tb is
end entity;

architecture beh of tb is

component data_maker is  
  port (
    CLK     : in  std_logic;
    RST_n   : in  std_logic;
--for testbench image
	simDisc : in std_logic;
	
    VOUT    : out std_logic;
    DOUT    : out std_logic_vector(12 downto 0);
	H0 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H1 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H2 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H3 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H4 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H5 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H6 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H7 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H8 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H9 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
	H10 : OUT STD_LOGIC_VECTOR ( 12 DOWNTO 0);
    END_SIM : out std_logic);
end component;

component clk_gen is
  port (
    END_SIM : in  std_logic;
    CLK     : out std_logic;
    RST_n   : out std_logic);
end component;

component myfir is
	 
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
end component;

signal CLK, VIN, RST_N, END_SIM, VOUT: std_logic;
signal DOUT, DIN, H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10: std_logic_vector(12 downto 0);
constant Nt : integer := 11;
constant Nb : integer := 13;



file Results_File : text;

signal simDisc : std_logic;

begin

simDisc <= '0', '1' after 80 ns, '0' after 90 ns;


DUT: myfir

	port map(
		CLK => CLK,
		RST_N => RST_N,
		DIN => DIN,
		VIN => VIN,
		H0 => H0,
		H1 => H1,
		H2 => H2,
		H3 => H3,
		H4 => H4,
		H5 => H5,
		H6 => H6,
		H7 => H7,
		H8 => H8,
		H9 => H9,
		H10 => H10,
 		DOUT => DOUT,
		VOUT => VOUT
	);
Clock: clk_gen 
		port map(CLK => CLK, RST_n => RST_N, END_SIM => END_SIM);
Data: data_maker
		port map(CLK => CLK, RST_n => RST_N,simDisc => simDisc, VOUT => VIN, DOUT => DIN, H0 => H0, H1 => H1, H2 =>H2, H3 => H3, H4 => H4, H5 => H5, H6 => H6, H7 => H7, H8 => H8, H9 => H9, H10 => H10, END_SIM => END_SIM);
			


file_open(Results_File, "sim_res.txt",write_mode);

Save_Results: process(CLK)
	
	variable resLine: line;	

	begin
		if RISING_EDGE(CLK) AND VOUT = '1' then		
			write(resLine, to_integer(signed(DOUT)));

			writeline(Results_File, resLine);
		end if;
end process Save_Results;

	file_close(Results_File);

end beh;
