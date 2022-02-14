library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity DataMem is
	generic(M: NATURAL := 5;
		N: NATURAL := 32);
	port(Address: in std_logic_vector(M-1 downto 0);
		RST,WE,RE : in std_logic;
		Data: in std_logic_vector(N-1 downto 0);
		Qout: out std_logic_vector(N-1 downto 0));
end entity DataMem;

architecture beh of DataMem is
 
 
 type ram_array is array (0 to 2**M-1) of std_logic_vector(N-1 downto 0);
 signal mem: ram_array;
 
begin
p0: process (RST,WE,RE,Address) is
 begin
 if RST = '0' then
    mem(0) <= std_logic_vector(to_signed(10, N));
    mem(1) <= std_logic_vector(to_signed(-47, N));
    mem(2) <= std_logic_vector(to_signed(22, N));
    mem(3) <= std_logic_vector(to_signed(-3, N));
    mem(4) <= std_logic_vector(to_signed(15, N));
    mem(5) <= std_logic_vector(to_signed(27, N));
    mem(6) <= std_logic_vector(to_signed(-4, N));
    mem(7 to 2**M-1) <= (others => (others => '0' ));
    
    
	elsif (WE = '1' AND RE = '0') then
        mem(to_integer(unsigned(Address))) <= Data;
	elsif (RE = '1' AND WE = '0') then
		Qout <= mem(to_integer(unsigned(Address)));
   end if;


 end process;
end architecture beh;