library	IEEE;
use IEEE.std_logic_1164.all;


entity Not16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Not16_test is

	-- Component declaration
	component Not16
		port(
			A	:	in 	std_logic_vector(15 downto 0);
			X	:	out	std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
	signal A_test	: std_logic_vector(15 downto 0) := "0000000000000000";
	signal X_test	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Not16 
		port map (
			A => A_test,
			X => X_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Inicio del test para NotGate"	  
		severity note;
		
		A_test <= "0000000000000000"; 
		wait for 1 ns;
		assert X_test = "1111111111111111"
		  report "Failure para A = [0000000000000000]"
		  severity failure;
		  
		A_test <= "1111111111111111"; 
		wait for 1 ns;
		assert X_test = "0000000000000000"
		  report "Failure para A = [1111111111111111]"
		  severity failure;
		 
		A_test <= "0100110000000011"; 
		wait for 1 ns;
		assert X_test = "1011001111111100"
		  report "Failure para A = [0100110000000011]"
		  severity failure;
		  
		A_test <= "1111100001011110"; 
		wait for 1 ns;
		assert X_test = "0000011110100001"
		  report "Failure para A = [1111100001011110]"
		  severity failure;
		 
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;