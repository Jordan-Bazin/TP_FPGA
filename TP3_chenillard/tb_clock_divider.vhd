library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_clock_divider is
end tb_clock_divider;

architecture tb of tb_clock_divider is
	signal clkin : std_logic:='0';
	signal rst : std_logic := '1';
	signal n : std_logic_vector(4 downto 0);
	signal clkout : std_logic:='0';

begin
	UUT : entity work.clock_divider port map (
			clkin => clkin,
			rst => rst,
			n => n,
			clkout => clkout
	);

	process
	begin
		clkin <= not(clkin);
		wait for 2ns;
	end process;
	
	stimuli1 : process
		begin
			n <= "00001";
			wait for 16ns;
			n <= "00010";
			wait for 16ns;
			n <= "00011";
			wait for 16ns;
			wait;
	end process;
end tb ;
