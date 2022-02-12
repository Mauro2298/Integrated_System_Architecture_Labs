library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
use std.textio.all;
use IEEE.std_logic_textio.all;

ENTITY IR is
	generic (
			MEM_SIZE : integer := 50;
			I_SIZE: integer := 32
	);
	port (
		RST : IN std_logic;
		ADDRESS: IN std_logic_vector(I_SIZE-1 downto 0);
		DOUT: OUT std_logic_vector(I_SIZE-1 downto 0)
		
	);
end IR;


ARCHITECTURE BEH of IR is

type MEMtype is array (0 to MEM_SIZE-1) of integer;
signal IR_MEM : MEMtype;

BEGIN
	DOUT <= conv_std_logic_vector(IR_MEM(conv_integer(unsigned(ADDRESS))/4), I_SIZE);
	MEM_PROC: process (RST)
		file hex_file : text;
		variable file_line : line;
		variable index : integer := 0;
		variable line_unsigned : std_logic_vector(I_SIZE -1 downto 0);
	begin
		if (RST = '0') then
			IR_MEM <= (others => 0);
		else
			file_open(hex_file, "./main_rv.hex", READ_MODE); --insert file name after Test_files/
			while (not endfile(hex_file)) loop
				readline(hex_file, file_line);
				hread(file_line, line_unsigned);
				IR_MEM(index) <= conv_integer(unsigned(line_unsigned));
				index := index +1;
			end loop;
			file_close(hex_file);
		end if;
	end process;


end BEH;
