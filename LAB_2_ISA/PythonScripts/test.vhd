library ieee;
use iee.std_logic_1164.all;
use ieee.numeric_std.all;
package bf is
	CONSTANT NBIT : INTEGER := 8;
	CONSTANT ROW_NUMBER : INTEGER := 5;
	CONSTANT STAGE_NUMBER : INTEGER := 4;
	CONSTANT COLUMN_NUMBER : INTEGER := 16;
	type stage is array (0 TO 15) of INTEGER;
	type mat_add is array (0 to 2) of stage;
	type mat_el is array (0 to 3) of stage;
	CONSTANT fa_mat : mat_add := (
(0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0),
(0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0),
(0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1));
	CONSTANT  ha_mat : mat_add := (
(0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0),
(0,0,0,0,1,1,0,0,0,0,0,0,0,0,1,0),
(0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0));
	CONSTANT  element_mat  : mat_el := (
(2,1,3,2,4,3,5,4,5,5,5,5,4,3,3,2),
(2,1,3,2,4,3,4,4,4,4,4,4,4,4,3,2),
(2,1,3,2,3,3,3,3,3,3,3,3,3,3,3,3),
(2,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2));
end bf;