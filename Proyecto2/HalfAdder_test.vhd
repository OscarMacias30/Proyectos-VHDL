library	IEEE;
use IEEE.std_logic_1164.all;

entity HalfAdder_test is	
end entity;

architecture arch_test of HalfAdder_test is

	component HalfAdder
		port(
			A		:	in 	std_logic;
			B		:	in		std_logic;
			sum	:	out 	std_logic;
			carry :	out	std_logic
		);
	end component;
	
	signal A_test : std_logic := '0';
	signal B_test : std_logic := '0';
	signal sum_test : std_logic;
	signal carry_test : std_logic;
	
	begin
	
	dut1	: HalfAdder 
		port map (
			A 		=> A_test,
			B 		=> B_test,
			sum 	=> sum_test,
			carry	=> carry_test
		);

	Stimulus	: process
	begin
	  
	   report "Start of the test of HalfAdder"	  
		severity note;
		
		A_test 	<= '0';
		B_test 	<= '0';		
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '0'
		  report "Falla para A=0 y B=0"
		  severity failure;
		  
		A_test 	<= '0';
		B_test 	<= '1';		
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Falla para A=0 y B=1"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '0';		
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Falla para A=1 y B=0"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '1';		
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Falla para A=1 y B=1"
		  severity failure;

		 
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;