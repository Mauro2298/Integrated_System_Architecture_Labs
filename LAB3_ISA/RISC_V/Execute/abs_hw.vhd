library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY abs_hw IS
        GENERIC (N : INTEGER);
        PORT (
            ABS_IN : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            ABS_OUT : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0)
        );
END ENTITY;


ARCHITECTURE behavioral OF abs_hw IS


BEGIN
 
ABS_PROCESS: process (ABS_IN) is

 begin
    if ABS_IN(N-1) = '1' then
        ABS_OUT <= STD_LOGIC_VECTOR(0 - SIGNED(ABS_IN));
    else
        ABS_OUT <= ABS_IN;
    end if;
end process;
	
END behavioral;