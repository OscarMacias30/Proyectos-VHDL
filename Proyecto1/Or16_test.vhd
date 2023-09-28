library	IEEE;
use IEEE.std_logic_1164.all;

entity Or16_test is
end entity;


architecture arch of Or16_test is 

     component Or16
	  port(
	       A : in std_logic_vector(15 downto 0);
			 B : in std_logic_vector(15 downto 0);
			 X : out std_logic_vector(15 downto 0)
	  );
	  end component;
	  
	  signal A_test : std_logic_vector(15 downto 0) := "0000000000000000";
	  signal B_test : std_logic_vector(15 downto 0) := "0000000000000000";
	  signal X_test : std_logic_vector(15 downto 0);
	  
	  
	  begin 
	  
	  dut1 : Or16
	        port map(
			          A => A_test,
						 B => B_test,
						 X => X_test
			  );
			  
		Stimulus : process
		begin
		    report "Inicio del test para Or16"
		        severity note;
		
		        A_test <= "0000000000000000";
			     B_test <= "0000000000000000";
			     wait for 1 ns;
			     assert X_test = "0000000000000000"
			           report "Falla en A=0000000000000000 y B=0000000000000000"
				        severity failure;
				 
			     A_test <= "0000000000000000";
			     B_test <= "1111111111111111";
			     wait for 1 ns;
			     assert X_test = "1111111111111111"
			           report "Falla en A=0000000000000000 y B=1111111111111111"
				        severity failure;
				 	 
			     A_test <= "1111111111111111";
			     B_test <= "0000000000000000";
			     wait for 1 ns;
			     assert X_test = "1111111111111111"
			           report "Falla en A=1111111111111111 y B=0000000000000000"
				        severity failure;
			  
			     A_test <= "1111111111111111";
			     B_test <= "1111111111111111";
			     wait for 1 ns;
			     assert X_test = "1111111111111111"
			           report "Falla en A=1111111111111111 y B=1111111111111111"
				        severity failure;
				 
			     report "Test exitoso"
			     severity note;
			     wait;
		end process;
		
end architecture;