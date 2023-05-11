library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture tb of tb_flipflop_JKrs is
	signal J : std_logic;
	signal K : std_logic;
	signal CLK : std_logic := '0';
	signal Q : std_logic := '0';
	signal Qn : std_logic := '1';
	signal SETn : std_logic := '1';
	signal RSTn : std_logic := '1';
begin
	UUT : entity work.flipflop_JKrs port map (
			  J => J,
			  K => K,
			  CLK => CLK,
			  Q => Q,
			  Qn => Qn,
			  SETn => SETn,
			  RSTn => RSTn
		);
		
		process
		begin
			CLK <= not(CLK);
			wait for 5ns;
		end process;
		
		process
		begin 
			wait for 13ns;
			RSTn <= '0';
			wait for 0.1ns;
			RSTn <= '1';
		end process;
		
		process
		begin
			wait for 8ns;
			SETn <= '0';
			wait for 0.1ns;
			SETn <= '1';
		end process;
		
		stimuli : process
		begin
			J <= '0';
			K <= '0';
			wait for 3ns;
			J <= '1';
			K <= '0';
			wait for 10ns;
			J <= '1';
			K <= '1';
			wait for 5ns;
			J <= '1';
			K <= '1';
			wait for 5ns;
			J <= '1';
			K <= '0';
			wait for 2ns;
		end process ;
end tb ;
