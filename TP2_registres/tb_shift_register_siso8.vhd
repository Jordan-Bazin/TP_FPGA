library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_shift_register_siso8 is
end tb_shift_register_siso8;

architecture tb of tb_shift_register_siso8 is
		signal Si : std_logic;
		signal CLK : std_logic := '0';
		signal SETn : std_logic := '1';
		signal RSTn : std_logic := '1';
		signal So : std_logic;

begin
	UUT : entity work.shift_register_siso8 port map (
		Si => Si,
		CLK => CLK,
		SETn => SETn,
		RSTn => RSTn,
		So => So
	);
	
	process
	begin
		CLK <= not(CLK);
		wait for 2ns;
	end process;

	process
	begin
		RSTn <= '0';
		wait for 20ns;
		RSTn <= '1';
		Si <= '0';
		wait for 60ns;
		Si <= '1';
		wait;
	end process;
end tb ;
