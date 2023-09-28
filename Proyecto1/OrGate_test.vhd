library IEEE;
use IEEE.std_logic_1164.all;

entity OrGate_test is
end entity;

architecture arch_test of OrGate_test is
      
		component OrGate
		port(
		     A : in std_logic;
			  B : in std_logic;
			  X : out std_logic
		
		);
		end component
		
		signal A_test : std_logic := '0';
		signal B_test : std_logic := '0';
		signal X_test : std_logic;
		
		dut1 : OrGate
		      port map(
				         A => A_test,
							B => B_test,
							X => X_test
				);
		Stimulus : process
		begin
		
		report "Inicio del test de Orgate"
		      severity note;
				
				A_test <= '0';
				B_test <= '0';
				wait for 1 ns;
				assert X_test = '1'
				  report "Falla en {A,B}={0,0}"
				  severity failure;
				  				
				A_test <= '0';
				B_test <= '1';
				wait for 1 ns;
				assert X_test = '0'
				  report "Falla en {A,B}={0,1}"
				  severity failure;
				  
				A_test <= '1';
				B_test <= '0';
				wait for 10 ns;
				assert X_test = '0'
				  report "Falla en {A,B}={1,0}"
				  severity failure;
				  
				A_test <= '1';
				B_test <= '1';
				wait for 10 ns;
				assert X_test = '0'
				  report "Falla en {A,B}={1,1}"
				  severity failure;
				report "Test completado"
				severity note;
				wait;
				
		end process;
end architecture;