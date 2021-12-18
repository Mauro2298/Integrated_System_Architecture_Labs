LIBRARY ieee;
USE ieee.std_logic_1164.all;

--

ENTITY A_coeff is
	generic (Nbit : INTEGER);
	port (
		A : IN std_logic_vector (Nbit-1 downto 0);
		A2 : OUT std_logic_vector (Nbit downto 0);
		AN : OUT std_logic_vector (Nbit downto 0);
		A2N : OUT std_logic_vector (Nbit downto 0);
		A_out : OUT std_logic_vector (Nbit downto 0)
	);

end ENTITY;


ARCHITECTURE beh of A_coeff is

begin

A_out <= '0' & A; --A must be on 33 bits like the other outputs
A2 <= A & '0'; --shift 
AN <= not('0' & A);
A2N<= not (A & '0');


end beh;
