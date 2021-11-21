library ieee;
use ieee.std_logic_1164.all;

entity reg is
	generic (NB : integer := 13);
	port (
			DIN : in std_logic_vector(NB - 1 downto 0);
			CLK : in std_logic;
			VIN : in std_logic;
			RST_N : in std_logic;
			DOUT : out std_logic_vector(NB-1 downto 0)
		);
end entity;


architecture beh of reg is
begin
	process(CLK)
		begin
		if RST_N = '0' then 
			DOUT <= (others => '0');
		else
			if CLK'event and CLK = '1' then
				if VIN = '1' then
					DOUT <= DIN;
				end if;
			end if;
		end if;
	end process;
end beh;
