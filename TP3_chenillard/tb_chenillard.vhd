library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_name is
end testbench_name;

architecture tb of testbench_name is
    -- Déclaration des signaux de test
	-- ex. signal A, S: std_logic;

begin
 
	UUT : entity work.entity_name port map (
        -- ex. A => A,
        -- ex. S => S
	);

	stimuli1 : process
		begin

		wait; 

	end process;
end tb ;
