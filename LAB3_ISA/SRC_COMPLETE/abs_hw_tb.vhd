library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

USE work.constants.ALL;
 
entity abs_hw_tb is
 
end abs_hw_tb;
 
 
architecture behave of abs_hw_tb is
 
  -- UUT declaration
component abs_hw IS
        GENERIC (N : INTEGER);
        PORT (
            ABS_IN : IN STD_LOGIC_VECTOR (N - 1 DOWNTO 0);
            ABS_OUT : OUT STD_LOGIC_VECTOR (N - 1 DOWNTO 0)
        );
END component;
 
 
  -- Internal signals definitions
  file file_VECTORS : text;
  file file_RESULTS : text;
  
  signal r_ABS_IN : std_logic_vector(N-1 downto 0) := (others => '0');
  
  signal w_ABS_OUT       : std_logic_vector(N-1 downto 0);
   
begin
 

-- UUT instance
abs_hw_INST : abs_hw
    generic map (
      N => N)
    port map (
      ABS_IN => r_ABS_IN,
      
      ABS_OUT => w_ABS_OUT
      );
 
 
-- Process for:
-- 1) Reading input stimuli from file
-- 2) Writing sum results to file
  process
    variable v_ILINE     : line;
    variable v_OLINE     : line;
    variable v_ABS_IN : std_logic_vector(N-1 downto 0);
    --variable v_EQUAL_IN_B : std_logic_vector(N-1 downto 0);
    variable v_SPACE     : character;
     
  begin
 
    -- Opening input and output files in read/write modes
    file_open(file_VECTORS, "input_vectors_abs.txt",  read_mode);
    file_open(file_RESULTS, "output_results_abs.txt", write_mode);
 
    -- Read input stimuli from file input_vectors.txt
    while not endfile(file_VECTORS) loop
      readline(file_VECTORS, v_ILINE);
      read(v_ILINE, v_ABS_IN);       -- get first input
      --read(v_ILINE, v_SPACE);           -- read in the space character
      --read(v_ILINE, v_EQUAL_IN_B);	-- get second input
 
      -- Pass the variable to a signal to allow the ripple-carry to use it
      r_ABS_IN <= v_ABS_IN;
      --r_EQUAL_IN_B <= v_EQUAL_IN_B;
 
      wait for 60 ns;
 
     -- Write output result to file output_results.txt
      write(v_OLINE, w_ABS_OUT, right, N);
      writeline(file_RESULTS, v_OLINE);
    end loop;
 
    -- Closin In/Out files
    file_close(file_VECTORS);
    file_close(file_RESULTS);
     
    wait;
  end process;
 
end behave;
