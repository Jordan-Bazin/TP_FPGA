library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_half_adder is
end tb_half_adder;

architecture tb of tb_half_adder is
	signal a,b,s,c : std_logic;
begin
	UUT : entity work.half_adder port map (
		a => a,
		b => b,
		s => s,
		c => c
   
	);

	stimuli1 : process
		begin
			a <= '0';
			b <= '0';
			wait for 10ns;
			a <= '0';
			b <= '1';
			wait for 10ns;
			a <= '1';
			b <= '0';
			wait for 10ns;
			a <= '1';
			b <= '1';
			wait for 10ns;
	

		wait; -- Wait indefinitely

	end process;
end tb ;
