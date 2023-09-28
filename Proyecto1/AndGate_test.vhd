library IEEE;
use IEEE.std_logic_1164.all;

entity AndGate_test is
end entity;

architecture arch_test of AndGate_test is
   
	   component AndGate
		          port(
					      A : in std_logic;  
					      B : in std_logic;
					      X : out std_logic
					 );
	    end component;
		 
		 signal A_test : std_logic := '0';
		 signal B_test : std_logic := '0';
		 signal X_test : std_logic;
		 
		 
		 begin
		 dut1   : AndGate
		         port map (
					          A => A_test,
								 B => B_test,
								 X => X_test
					
					);
		 
		 Stimulus : process
		 begin
		      
				report "Inicio del test de AndGate"
				       severity note;
						 
						 A_test <= '0';
						 B_test <= '0';
						 wait for 10 ns;
						 assert X_test = '0'
						        report "Falla para {A,B,X) = {0,0,0}"
								  severity failure;
						 
				       A_test <= '0';
						 B_test <= '1';
						 wait for 10 ns;
						 assert X_test = '0'
						        report "Falla para {A,B,X) = {0,0,1}"
								  severity failure;
		             
						 A_test <= '1';
						 B_test <= '0';
						 wait for 10 ns;
						 assert X_test = '0'
						        report "Falla para {A,B,X) = {0,1,0}"
								  severity failure;			 
		 
					    A_test <= '1';
						 B_test <= '1';
						 wait for 10 ns;
						 assert X_test = '1'
						        report "Falla para {A,B,X) = {0,0,0}"
								  severity failure;
						 
						 report "Test exitoso"
						 severity note;
						 wait;
						 
				end process;
end architecture;