library	IEEE;
use IEEE.std_logic_1164.all;

entity Add16_test is	
end entity;

architecture arch_test of Add16_test is

	component Add16
		port(
          A : in std_logic_vector(15 downto 0);
		    B : in std_logic_vector(15 downto 0);
		    C : in std_logic;
		    sum : out std_logic_vector(15 downto 0);
		    carry : out std_logic
		);
	end component;
	
	signal A_test : std_logic_vector(15 downto 0);
	signal B_test : std_logic_vector(15 downto 0);
	signal C_test : std_logic;
	signal sum_test : std_logic_vector(15 downto 0);
	signal carry_test : std_logic;
	signal x1_test	: std_logic_vector(15 downto 0);
	begin
	
	dut1	: Add16 
		port map (
			A => A_test,
			B => B_test,
			C => C_test,
			sum => sum_test,
			carry => carry_test
		);
	Stimulus	: process
	begin
	  
	   report "Inicio del test para Add16"	  
		severity note;
		
		A_test 	<= "0000000000000000";
		B_test 	<= "0000000000000000";
		C_test   <= '0';
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = '0')
		  report "Falla para A=0000000000000000, B=0000000000000000 y C=0"
		  severity failure;
		
		A_test 	<= "1111111111111111";
		B_test 	<= "1111111111111111";		
		C_test	<= '0';
		wait for 1 ns;
		assert (sum_test = "0000000000000000") and (carry_test = '1')
		  report "Falla para A=1111111111111111, B=1111111111111111 y C=0"
		  severity failure;
		 
		report "Test exitoso"
		severity note;
		wait;
    end process;
end architecture;