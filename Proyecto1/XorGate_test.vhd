library ieee;
use ieee.std_logic_1164.all;

entity XorGate_test is 
end entity;

architecture arch_test of XorGate_test is

    component XorGate
	         port(
				     A : in std_logic;
					  B : in std_logic;
					  X : out std_logic
				
				);
	 end component;
	 
	 signal A_test : std_logic := '0';
	 signal B_test : std_logic := '0';
	 signal X_test : std_logic := '0';
	 
	 begin 
	 
	 
	 dut1 : XorGate
	       port map(
			          A => A_test,
						 B => B_test,
						 x => X_test 
						 );
			 
	 Stimulus : process
	 begin 
	  report "Inicio de test para XorGate"	  
		severity note;
		
		A_test <= '0'; 
		B_test <= '0';
		wait for 1 ns;
		assert X_test = '0'
		  report "Falla para A = 0  and B = 0"
		  severity failure;
		  
		A_test <= '0'; 
		B_test <= '1'; 
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A = 0 and B = 1"
		  severity failure;
		 
		A_test <= '1'; 
		B_test <= '0'; 
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A = 1 and B = 0"
		  severity failure;
		  
		A_test <= '1'; 
		B_test <= '1'; 
		wait for 1 ns;
		assert X_test = '0'
		  report "Falla para A = 1 and B=1"
		  severity failure;
		  
		report "Test exitoso"
		severity note;
		wait;
	end process;

end architecture;
	