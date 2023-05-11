library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_priority_encoder4 is
end tb_priority_encoder4;

architecture tb of tb_priority_encoder4 is
	signal X: std_logic_vector(3 downto 0);
	signal Y: std_logic_vector(1 downto 0);

begin
	UUT : entity work.priority_encoder4 port map (
		  X => X,
		  Y => Y
	);


	stimuli1 : process
		begin
		X <= "0000";
		wait for 5ns;
		X <= "0001";
		wait for 5ns;
		X <= "0010";
		wait for 5ns;
		X <= "0011";
		wait for 5ns;
		X <= "0100";
		wait for 5ns;
		X <= "0101";
		wait for 5ns;
		X <= "0110";
		wait for 5ns;	
		X <= "0111";
		wait for 5ns;
		X <= "1000";
		wait for 5ns;
		X <= "1001";
		wait for 5ns;
		X <= "1010";
		wait for 5ns;
		X <= "1011";
		wait for 5ns;
		X <= "1100";
		wait for 5ns;
		X <= "1101";
		wait for 5ns;
		X <= "1110";
		wait for 5ns;
		X <= "1111";
		wait for 5ns;

	end process;
end tb ;
