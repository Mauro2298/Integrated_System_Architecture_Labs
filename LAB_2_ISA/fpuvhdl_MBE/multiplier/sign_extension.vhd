LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY sign_extension is
	port(
		b_triplete : IN std_logic_vector(2 downto 0);
		S : OUT std_logic
	);


end ENTITY;


ARCHITECTURE beh of sign_extension is

begin

--	case b_triplete(2) is
--		when '0' => S <= '0';
--		when '1' => S <= '1';
--		when others => S <= 'Z';

--S <= '0' WHEN b_triplete(2) = '0' else
--	 '1' WHEN b_triplete(2) = '1' else
--	 '0'; --for debug might be put at z

S<= '1' WHEN b_triplete = "100" OR b_triplete = "101" OR b_triplete = "110" ELSE
	'0';

end beh;
