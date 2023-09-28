library	IEEE;
use IEEE.std_logic_1164.all;


entity Mux8Way16_test is	
end entity;

architecture arch_test of Mux8Way16_test is

	component Mux8Way16
		port(
		A : in std_logic_vector(15 downto 0);	
		B : in std_logic_vector(15 downto 0);
		C :	in	std_logic_vector(15 downto 0);
		D :	in	std_logic_vector(15 downto 0);
		E :	in	std_logic_vector(15 downto 0);
		F :	in	std_logic_vector(15 downto 0);
		G :	in	std_logic_vector(15 downto 0);
		H :	in	std_logic_vector(15 downto 0);
		s1 : in std_logic;
		s2 : in std_logic;
		s3 : in std_logic;
		X : out std_logic_vector(15 downto 0)
		);
	end component;
	

			signal A_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal B_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal C_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal D_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal E_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal F_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal G_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal H_test 	: std_logic_vector(15 downto 0) := "0000000000000000";
			signal s1_test : std_logic := '0';	
			signal s2_test : std_logic := '0';	
			signal s3_test : std_logic := '0';	
			signal X_test 	: std_logic_vector(15 downto 0);
	
	begin
	
	dut1	: Mux8Way16 
		port map (
			A => A_test,
			B => B_test,
			C => C_test,
			D => D_test,
			E => E_test,
			F => F_test,
			G => G_test,
			H => H_test,
			s1 => s1_test,
			s2 => s2_test,
			s3 => s3_test,
			X => X_test
		);
		
		Stimulus : process
		begin 
		     report "Inicio de test para Mux8Way16"
			        severity note;
					  
		A_test <= "0000000000000000"; 
		B_test <= "0000000000000000";
		C_test <= "0000000000000000"; 
		D_test <= "0000000000000000";
		E_test <= "0000000000000000"; 
		F_test <= "0000000000000000";
		G_test <= "0000000000000000"; 
		H_test <= "0000000000000000";
		s1_test <= '0';
		s2_test <= '0';
		s3_test <= '0';
		wait for 1 ns;
		assert X_test = "0000000000000000"
		  report "Falla en  A=0000000000000000, B=0000000000000000, C=0000000000000000, D=0000000000000000, E=0000000000000000, F=0000000000000000, G=0000000000000000, H=0000000000000000, s1=0, s2=0 y s3=0"
		  severity failure;
		  
		A_test <= "0000000000000000"; 
		B_test <= "0000000000000000";
		C_test <= "0000000000000000"; 
		D_test <= "0000000000000000";
		E_test <= "0000000000000000"; 
		F_test <= "0000000000000000";
		G_test <= "0000000000000000"; 
		H_test <= "1111111111111111";
		s1_test <= '1';
		s2_test <= '1';
		s3_test <= '1';
		wait for 1 ns;
		assert X_test = "1111111111111111"
		  report "Falla en  A=0000000000000000, B=0000000000000000, C=0000000000000000, D=0000000000000000, E=0000000000000000, F=0000000000000000, G=0000000000000000, H=1111111111111111, s1=0, s2=0 y s3=0"
		  severity failure;
		  
		report "Test exitoso"
		severity note;
		wait;
		
	end process;
end architecture;