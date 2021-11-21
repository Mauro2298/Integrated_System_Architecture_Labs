library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
--use work.packa.all;

library std;
use std.textio.all;

entity data_maker is  
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
end data_maker;

architecture beh of data_maker is

  constant tco : time := 1 ns;

 signal sEndSim : std_logic;
  signal END_SIM_i : std_logic_vector(0 to 10);  

begin  -- beh
	H0 <= conv_std_logic_vector(-1 ,13);
	H1 <= conv_std_logic_vector( -52,13);
	H2 <= conv_std_logic_vector(-102 ,13);
	H3 <= conv_std_logic_vector( 260,13);
	H4 <= conv_std_logic_vector( 1125,13);
	H5 <= conv_std_logic_vector(1630 ,13);
	H6 <= conv_std_logic_vector(1125 ,13);
	H7 <= conv_std_logic_vector( 260,13);
	H8 <= conv_std_logic_vector(-102 ,13);
	H9 <= conv_std_logic_vector( -52,13);
	H10 <= conv_std_logic_vector( -1,13);  

	
  process (CLK, RST_n)
    file fp_in : text open READ_MODE is "../tb/samples.txt";
    variable line_in : line;
    variable x : integer;
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      DOUT <= (others => '0') after tco;      
      VOUT <= '0' after tco;
      sEndSim <= '0' after tco;
    elsif CLK'event and CLK = '1'then  -- rising clock edge
      
		if not endfile(fp_in) then
	        
			if simDisc = '0' then
				readline(fp_in, line_in);
		        read(line_in, x);
		        DOUT <= conv_std_logic_vector(x, 13) after tco;
		        VOUT <= '1' after tco;
		        sEndSim <= '0' after tco;
			
			else 

				VOUT <= '0' after tco;
				DOUT <= (OTHERS => '0') after tco;
			
			end if;

		else
	        VOUT <= '0' after tco;        
	        sEndSim <= '1' after tco;
		end if;
    end if;
  end process;

  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      END_SIM_i <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      END_SIM_i(0) <= sEndSim after tco;
      END_SIM_i(1 to 10) <= END_SIM_i(0 to 9) after tco;
    end if;
  end process;

  END_SIM <= END_SIM_i(10);  

end beh;
