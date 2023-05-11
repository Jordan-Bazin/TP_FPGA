library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JK is

end tb_flipflop_JK;

architecture tb of tb_flipflop_JK is
	signal J : std_logic;
	signal K : std_logic;
	signal CLK : std_logic := '0';
	signal Q : std_logic := '0';
	signal Qn : std_logic := '1';
begin
	UUT : entity work.flipflop_JK port map (
			  J => J,
			  K => K,
			  CLK => CLK,
			  Q => Q,
			  Qn => Qn
		);
		
		process
		begin
			CLK <= not(CLK);
			wait for 5ns;
		end process;
		
		stimuli : process
		begin
			J <= '0';
			K <= '0';
			wait for 3ns;
			J <= '1';
			K <= '0';
			wait for 10 ns;
			J <= '1';
			K <= '1';
			wait for 5ns;
			J <= '1';
			K <= '1';
			wait for 5ns;
		end process ;
end tb ;
