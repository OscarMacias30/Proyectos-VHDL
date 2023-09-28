library	IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder_test is	
end entity;

architecture arch_test of FullAdder_test is

	component FullAdder
		port(
			A : in std_logic;
			B : in std_logic;
			C : in std_logic;
			sum :	out std_logic;
			carry : out std_logic
		);
	end component;
	
	-- Signal declaration
	signal A_test, B_test, C_test : std_logic := '0';
	signal sum_test		: std_logic;
	signal carry_test		: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: FullAdder 
		port map (
			A => A_test,
			B => B_test,
			C => C_test,
			sum => sum_test,
			carry => carry_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Inicio de test para FullAdder"	  
		severity note;
		
		A_test 	<= '0';
		B_test 	<= '0';	
	   C_test   <= '0';	
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '0'
		  report "Falla para A=0, B=0 y C=0"
		  severity failure;
		
		A_test 	<= '0';
		B_test 	<= '0';	
	   C_test   <= '1';	
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Falla para A=0, B=0 y C=1"
		  severity failure;
		
		A_test 	<= '0';
		B_test 	<= '1';	
	   C_test   <= '0';	
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Falla para A=0, B=1 y C=0"
		  severity failure;
		
		A_test 	<= '0';
		B_test 	<= '1';	
	   C_test   <= '1';	
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Falla para A=0, B=1 y C=1"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '0';	
	   C_test   <= '0';	
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '0'
		  report "Falla para A=1, B=0 y C=0"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '0';	
	   C_test   <= '1';	
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Falla para A=1, B=0 y C=1"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '1';	
	   C_test   <= '0';	
		wait for 1 ns;
		assert sum_test = '0' and carry_test = '1'
		  report "Falla para A=1, B=1 y C=0"
		  severity failure;
		
		A_test 	<= '1';
		B_test 	<= '1';	
	   C_test   <= '1';	
		wait for 1 ns;
		assert sum_test = '1' and carry_test = '1'
		  report "Falla para A=1, B=1 y C=1"
		  severity failure;
		  

		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;