library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder is
end tb_full_adder;

architecture tb of tb_full_adder is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;
	signal a, b, cin, s, cout : std_logic;
begin
	UUT : entity work.full_adder port map (
		  a => a,
		  b => b,
		  cin => cin,
		  s => s,
		  cout => cout
	);

	stimuli1 : process
		begin
		a <= '0';
		b <= '0';
		cin <= '0';
		wait for 5ns;
		a <= '0';
		b <= '0';
		cin <= '1';
		wait for 5ns;
		a <= '0';
		b <= '1';
		cin <= '0';
		wait for 5ns;
		a <= '0';
		b <= '1';
		cin <= '1';
		wait for 5ns;
		a <= '1';
		b <= '0';
		cin <= '0';
		wait for 5ns;
		a <= '1';
		b <= '0';
		cin <= '1';
		wait for 5ns;
		a <= '1';
		b <= '1';
		cin <= '0';
		wait for 5ns;
		a <= '1';
		b <= '1';
		cin <= '1';
		wait for 5ns;


		wait; -- Wait indefinitely

	end process;
end tb ;
