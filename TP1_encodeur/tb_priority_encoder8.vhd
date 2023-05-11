library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_priority_encoder8 is
end tb_priority_encoder8;

architecture test of tb_priority_encoder8 is

    signal I : std_logic_vector(7 downto 0);
    signal Y : std_logic_vector(2 downto 0);

begin

    UUT : entity work.priority_encoder8 port map (
        I => I,
        Y => Y
    );
	 stimuli: process
    begin

		 -- Test case 1
		 I <= "00000001";
		 wait for 10 ns;
		 assert (Y = "000") report "Error: Test case 1 failed" severity error;

		 -- Test case 2
		 I <= "00000100";
		 wait for 10 ns;
		 assert (Y = "001") report "Error: Test case 2 failed" severity error;

		 -- Test case 3
		 I <= "00001000";
		 wait for 10 ns;
		 assert (Y = "010") report "Error: Test case 3 failed" severity error;

		 -- Test case 4
		 I <= "00010000";
		 wait for 10 ns;
		 assert (Y = "011") report "Error: Test case 4 failed" severity error;

		 -- Test case 5
		 I <= "00100000";
		 wait for 10 ns;
		 assert (Y = "100") report "Error: Test case 5 failed" severity error;

		 -- Test case 6
		 I <= "01000000";
		 wait for 10 ns;
		 assert (Y = "101") report "Error: Test case 6 failed" severity error;

		 -- Test case 7
		 I <= "10000000";
		 wait for 10 ns;
		 assert (Y = "110") report "Error: Test case 7 failed" severity error;

		 -- Test case 8
		 I <= "11111111";
		 wait for 10 ns;
		 assert (Y = "111") report "Error: Test case 8 failed" severity error;

		 report "Testbench finished" severity note;
		 wait;
	 end process;
end test;