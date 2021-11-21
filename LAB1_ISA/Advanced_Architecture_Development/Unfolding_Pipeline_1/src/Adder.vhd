library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Adder is
generic (Nbit : integer := 13);
port(
	A: in std_logic_vector(Nbit-1 downto 0);
	B: in std_logic_vector(Nbit-1 downto 0);
	O: out std_logic_vector(Nbit-1 downto 0)
);
end entity;

architecture beh of Adder is

begin


O <= std_logic_vector(signed(A) + signed(B));

end beh;
