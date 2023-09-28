library	IEEE;
use IEEE.std_logic_1164.all;

-- Entity (empty)
entity Mux16_test is	
end entity;

-- Architecture (test process)
architecture arch_test of Mux16_test is

	-- Component declaration
	component Mux16
		port(
			A 	: in std_logic_vector(15 downto 0);
			B 	: in std_logic_vector(15 downto 0);
			s  : in std_logic;	
			X 	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	-- Signal declaration
			signal A_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal B_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal s_test : std_logic := '0';	
			signal X_test 	: std_logic_vector(15 downto 0);
	
	begin
	
	-- DUT instantiation
	dut1	: Mux16 
		port map (
			A => A_test,
			B => B_test,
			s => s_test,
			X => X_test
		);

	-- Stimulus generation
	Stimulus	: process
	begin
	  
	  report "Inicio del test para Mux16"	  
		severity note;
		
		A_test <= "0000000000000000"; 
		B_test <= "1111111111111111";
		s_test <= '0';
		wait for 1 ns;
		assert X_test = "0000000000000000"
		  report "Falla en A=0000000000000000, B=1111111111111111, s=0"
		  severity failure;
		  
		A_test <= "0000000000000000"; 
		B_test <= "1111111111111111";
		s_test <= '1';
		wait for 1 ns;
		assert X_test = "1111111111111111"
		  report "Falla en A=0000000000000000, B=1111111111111111, s=1"
		  severity failure;
		 
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;