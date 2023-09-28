library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Or8Way_test is
end entity;

architecture arch of Or8Way_test is

      component Or8Way
		Port (
		     A : in std_logic;
			  B : in std_logic;
			  C : in std_logic;
			  D : in std_logic;
			  E : in std_logic;
			  F : in std_logic;
			  G : in std_logic;
			  H : in std_logic;
			  X : out std_logic 
		
		);
		end component;
	   
		signal A_test : std_logic := '0';
		signal B_test : std_logic := '0';
		signal C_test : std_logic := '0';
		signal D_test : std_logic := '0';
		signal E_test : std_logic := '0';
		signal F_test : std_logic := '0';
		signal G_test : std_logic := '0';
		signal H_test : std_logic := '0';
		signal X_test : std_logic;
		
		begin
		
		     dut1 : Or8Way
			  port map(
			           A => A_test,
						  B => B_test,
						  C => C_test,
						  D => D_test,
						  E => E_test,
						  F => F_test,
						  G => G_test,
						  H => H_test,
						  X => X_test
						  
			  );
			  
			  Stimulus : process
			  
			  begin 
			  
			  report "Inicio de test para Orgate"
			  severity note;
			  
			      A_test <= '0';
	            B_test <= '0';
	            C_test <= '0';
	            D_test <= '0';
	            E_test <= '0';
	            F_test <= '0';
	            G_test <= '0';
	            H_test <= '0';
               wait for 1 ns;
	            assert X_test = '0'
	                report "Failure en a=0, b=0, c=0, d=0, e=0, f=0, g=0 y h=0"
	                severity failure;
						 
		         A_test <= '1';
	            B_test <= '0';
	            C_test <= '0';
	            D_test <= '0';
	            E_test <= '0';
	            F_test <= '0';
	            G_test <= '0';
	            H_test <= '0';
               wait for 1 ns;
	            assert X_test = '1'
	                report "Failure en a=1, b=0, c=0, d=0, e=0, f=0, g=0 y h=0"
	                severity failure;
						 
					A_test <= '1';
	            B_test <= '1';
	            C_test <= '1';
	            D_test <= '1';
	            E_test <= '1';
	            F_test <= '1';
	            G_test <= '1';
	            H_test <= '1';
               wait for 1 ns;
	            assert X_test = '1'
	                report "Failure en a=1, b=1, c=1, d=1, e=1, f=1, g=1 y h=1"
	                severity failure;
						 
					report "Test exitoso"
					severity note;
					wait;
					
			end process;
			
end architecture;
			  
			  
           