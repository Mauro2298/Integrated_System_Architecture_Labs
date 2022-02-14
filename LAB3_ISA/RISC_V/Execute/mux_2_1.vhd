library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1 is
  port(x,y,s: in std_logic;
    m: out std_logic );
end mux_2_1;

architecture beh of mux_2_1 is
  
  
  begin
    
    m <= ((x and (not (s))) or (y and s));
end beh;
