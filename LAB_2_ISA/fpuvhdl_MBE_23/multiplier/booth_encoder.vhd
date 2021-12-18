LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY booth_encoder IS 
    GENERIC(N : INTEGER );
    PORT(
        BOOTH_IN_NUMBER : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        BOOTH_IN_SEL : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        BOOTH_OUT_S : OUT STD_LOGIC;
        BOOTH_OUT_NUMBER : OUT STD_LOGIC_VECTOR(N DOWNTO 0)
    );
END ENTITY;

architecture structural of booth_encoder is

    COMPONENT sign_extension IS
        port(
	    	b_triplete : IN std_logic_vector(2 downto 0);
		    S : OUT std_logic
	    );
    END COMPONENT;


    component A_coeff is
        generic (Nbit : integer);
        port (
            A : IN std_logic_vector (Nbit-1 downto 0);
            A2 : OUT std_logic_vector (Nbit downto 0);
            AN : OUT std_logic_vector (Nbit downto 0);
            A2N : OUT std_logic_vector (Nbit downto 0);
            A_out : OUT std_logic_vector (Nbit downto 0)
        );
    
    end component;

        SIGNAL selected_output : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        SIGNAL A2, AN, A2N, A : STD_LOGIC_VECTOR(N DOWNTO 0);
        
begin

--Sign extension

    EXT_BLOCK: sign_extension
                        port map (
                            b_triplete => BOOTH_IN_SEL,
                            S => BOOTH_OUT_S
                            );

--Partial multiplicand selection

    A_BLOCK: A_coeff 
                    generic map(
                        Nbit => N
                    )
                    port map(
                        A => BOOTH_IN_NUMBER,
                        A2 => A2,
                        AN => AN,
                        A2N => A2N,
                        A_out => A
                    );

    BOOTH_OUT_NUMBER <= (OTHERS => '0') WHEN ( ( BOOTH_IN_SEL = "000" ) OR ( BOOTH_IN_SEL = "111" ) ) ELSE
                        A WHEN ( ( BOOTH_IN_SEL = "001" ) OR ( BOOTH_IN_SEL = "010" ) ) ELSE
                        AN WHEN ( ( BOOTH_IN_SEL = "101" ) OR ( BOOTH_IN_SEL = "110" ) ) ELSE
                        A2 WHEN ( BOOTH_IN_SEL = "011" ) ELSE 
                        A2N WHEN ( BOOTH_IN_SEL = "100" ) ELSE
                        (OTHERS => '0');

end structural;