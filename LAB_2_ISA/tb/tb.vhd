library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity tb is
end entity;


architecture beh of tb is

component data_maker is
  port (
    CLK  : in  std_logic;
    DATA : out std_logic_vector(31 downto 0);
	END_SIM: out std_logic
);
end component;

component FPmul IS
   PORT( 
      FP_A : IN     std_logic_vector (31 DOWNTO 0);
      FP_B : IN     std_logic_vector (31 DOWNTO 0);
      clk  : IN     std_logic;
      FP_Z : OUT    std_logic_vector (31 DOWNTO 0)
   );
END component ;
component clk_gen is
  port (
    END_SIM : in  std_logic;
    CLK     : out std_logic;
    RST_n   : out std_logic);
end component;

signal CLK, RST_N, END_SIM, END_SIM_tmp: std_logic;
signal DOUT, DIN : std_logic_vector(31 downto 0);

file Results_File : text;
constant n : integer := 5;
begin



Clock: clk_gen 
		port map(CLK => CLK, RST_n => RST_N, END_SIM => END_SIM);
mult: FPmul
		port map (FP_A => DIN, FP_B => DIN, clk => CLK, FP_Z => DOUT);
maker: data_maker
 		port map (CLK => CLK, END_SIM => END_SIM_tmp, DATA => DIN);

END_SIM <= END_SIM_tmp;-- after n*10 ns;


file_open(Results_File, "sim_res_reg.txt",write_mode);

Save_Results: process(DOUT)
	
	variable resLine: line;	

	begin
		if DOUT >= "00000000000000000000000000000000" then		
			hwrite(resLine, DOUT);
			writeline(Results_File, resLine);
		end if;
end process Save_Results;

	file_close(Results_File);


end beh;
