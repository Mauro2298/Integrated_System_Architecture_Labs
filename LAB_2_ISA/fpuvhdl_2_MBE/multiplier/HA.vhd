LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY HA is
	port (
		A : IN std_logic;
		B : IN std_logic;
		Cout_HA : OUT std_logic;
		Sout_HA : OUT std_logic
	);
end ENTITY;


ARCHITECTURE Struct of HA is

begin

Sout_HA <= A xor B;
Cout_HA <= A and B;


end Struct;
