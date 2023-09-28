library	IEEE;
use IEEE.std_logic_1164.all;

entity MuxGate_test is	
end entity;

-- Architecture (test process)
architecture arch_test of MuxGate_test is

	-- Component declaration
	component MuxGate
		port(
			A	:	in 	std_logic;
			B	:	in		std_logic;
			s  :	in 	std_logic;
			X	:	out	std_logic
		);
	end component;
	
	-- Signal declaration
	signal A_test	: std_logic := '0';
	signal B_test	: std_logic := '0';
	signal s_test	: std_logic := '0';
	signal X_test	: std_logic;
	
	begin
	
	-- DUT instantiation
	dut1	: MuxGate
		port map (
			A 	=> A_test,
			B 	=> B_test,
			s 	=> s_test,
			X 	=> X_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	   report "Inicio del test para Mux"	  
		severity note;
		
		A_test 	<= '0';
		B_test 	<= '1';
		s_test <= '0';
		wait for 1 ns;
		assert X_test = '0'
		  report "Falla en A=0, B=1 y s=0"
		  severity failure;
		  
		A_test 	<= '0';
		B_test 	<= '0';
		s_test <= '0';
		wait for 1 ns;
		assert X_test = '0'
		  report "Falla en A=0, B=0 y s=0"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '0';
		s_test <= '0';
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A=1, B=0 y s=0"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '1';
		s_test <= '0';
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A=1, B=1 y s=0"
		  severity failure;
		  
		A_test 	<= '0';
		B_test 	<= '0';
		s_test <= '1';
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A=0, B=0 y s=1"
		  severity failure;
		 
		A_test 	<= '0';
		B_test 	<= '1';
		s_test <= '1';
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A=0, B=1 y s=1"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '0';
		s_test <= '1';
		wait for 1 ns;
		assert X_test = '0'
		  report "Falla en A=1, B=0 y s=1"
		  severity failure;
		  
		A_test 	<= '1';
		B_test 	<= '1';
		s_test <= '1';
		wait for 1 ns;
		assert X_test = '1'
		  report "Falla en A=1, B=1 y s=1"
		  severity failure;
		  
 
		 
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;