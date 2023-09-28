library	IEEE;
use IEEE.std_logic_1164.all;

entity Inc16_test is	
end entity;

architecture arch_test of Inc16_test is

	component Inc16
		port(
		    A : in std_logic_vector(15 downto 0);
		    B : in std_logic_vector(15 downto 0);
		    sum : out std_logic_vector(15 downto 0);
		    carry : out std_logic_vector(15 downto 0)
		);
	end component;
	

	signal A_test : std_logic_vector(15 downto 0);
	signal B_test : std_logic_vector(15 downto 0);
	signal sum_test : std_logic_vector(15 downto 0);
	signal carry_test : std_logic_vector(15 downto 0);
	
	begin
	

	dut1	: Inc16 
		port map (
			A 		=> A_test,
			B 		=> B_test,
			sum 	=> sum_test,
			carry	=> carry_test
		);

	Stimulus	: process
	begin
	   report "Inicio de test para Inc16"	  
		     severity note;
		
		A_test <= "0000000000000000";
		B_test <= "0000000000000000";	
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = "0000000000000000")
		  report "Falla para A=0000000000000000 y B=0000000000000000"
		  severity failure;
		
		A_test <= "0000000000000000";
		B_test <= "1111111111111111";		
		wait for 1 ns;
		assert (sum_test = "1111111111111111") and (carry_test = "0000000000000000")
		  report "Falla para A=0000000000000000 y B=1111111111111111"
		  severity failure;
		
		A_test <= "1111111111111111";
		B_test <= "0000000000000000";		
		wait for 1 ns;
		assert (sum_test = "1111111111111111") and (carry_test = "0000000000000000")
		  report "Falla para A=1111111111111111 y B=0000000000000000"
		  severity failure;
		
		A_test 	<= "1111111111111111";
		B_test 	<= "1111111111111111";		
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = "1111111111111111")
		  report "Falla para A=1111111111111111 y B=1111111111111111"
		  severity failure;
		 
		report "Test exitoso"
		severity note;
		wait;
		
	end process;

end architecture;