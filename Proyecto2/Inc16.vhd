library ieee;
use ieee.std_logic_1164.all;

-- Entidad
entity Inc16 is
	Port(
		A : in std_logic_vector(15 downto 0);
		B : in std_logic_vector(15 downto 0);
		sum : out std_logic_vector(15 downto 0);
		carry : out std_logic_vector(15 downto 0)
	);
end entity;

-- Arquitectura
architecture arch_Inc16 of Inc16 is
begin

   sum(15) <= A(15) xor B(15);
	sum(14) <= A(14) xor B(14);
	sum(13) <= A(13) xor B(13);
	sum(12) <= A(12) xor B(12);
	sum(11) <= A(11) xor B(11);
	sum(10) <= A(10) xor B(10);
	sum(9)  <= A(9) xor B(9);
	sum(8)  <= A(8) xor B(8);
	sum(7)  <= A(7) xor B(7);
	sum(6)  <= A(6) xor B(6);
	sum(5)  <= A(5) xor B(5);
	sum(4)  <= A(4) xor B(4);
	sum(3)  <= A(3) xor B(3);
	sum(2)  <= A(2) xor B(2);
	sum(1)  <= A(1) xor B(1);
	sum(0)  <= A(0) xor B(0);
	
	carry(15) <= A(15) and B(15);
	carry(14) <= A(14) and B(14);
	carry(13) <= A(13) and B(13);
	carry(12) <= A(12) and B(12);
	carry(11) <= A(11) and B(11);
	carry(10) <= A(10) and B(10);
	carry(9)  <= A(9) and B(9);
	carry(8)  <= A(8) and B(8);
	carry(7)  <= A(7) and B(7);
	carry(6)  <= A(6) and B(6);
	carry(5)  <= A(5) and B(5);
	carry(4)  <= A(4) and B(4);
	carry(3)  <= A(3) and B(3);
	carry(2)  <= A(2) and B(2);
	carry(1)  <= A(1) and B(1);
	carry(0)  <= A(0) and B(0);
	
end architecture;