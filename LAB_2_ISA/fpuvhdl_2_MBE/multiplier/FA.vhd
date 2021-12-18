LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FA is
	port(
		A : IN std_logic;
		B : IN std_logic;
		Cin : IN std_logic;
		Cout_FA : OUT std_logic;
		Sout_FA : OUT std_logic
	);
end ENTITY;



ARCHITECTURE Struct of FA is

begin

	Sout_FA <= A xor B xor Cin;
	Cout_FA <= (A and B) or (A and Cin) or (B and Cin);


end Struct;
