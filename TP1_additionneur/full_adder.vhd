library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;




entity full_adder is
	port (
		a : in std_logic;
		b : in std_logic;
		cin : in std_logic;
		s : out std_logic;
		cout : out std_logic
	);
end full_adder;	
	
	
architecture behavioral of full_adder is
-- (Optionnel) Ecrire ici la déclaration de signaux
-- ex. signal X : std_logic;
	signal s1 : std_logic;
	signal c1 : std_logic;
	signal c2 : std_logic;
begin
	hadder1 : entity work.half_adder port map (
		a => a,
		b => b,
		s => s1,
		c => c1
	);
	
	hadder2 : entity work.half_adder port map (
		a => s1,
		b => cin,
		s => s,
		c => c2
	);
	cout <= (c2 or c1);
	
end behavioral;
