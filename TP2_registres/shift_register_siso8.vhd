library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_register_siso8 is
	port (
		Si : in std_logic;
		CLK : in std_logic;
		SETn : in std_logic;
		RSTn : in std_logic;
		So : out std_logic
	);
end shift_register_siso8;

architecture behavioral of shift_register_siso8 is
	signal registre : std_logic_vector(7 downto 0) := "11111111";
begin
	process(CLK, Si, SETn, RSTn)
	begin
		if(RSTn = '0') then
			registre <= "00000000";
		elsif( SETn = '0') then
		 registre <= "11111111";
		elsif(CLK' event and CLK = '1') then 
			registre(0) <= registre(1); 
			registre(1) <= registre(2); 
			registre(2) <= registre(3); 
			registre(3) <= registre(4); 
			registre(4) <= registre(5); 
			registre(5) <= registre(6); 
			registre(6) <= registre(7);
			registre(7) <= Si; 	
		end if;
	end process;
	So <= registre(0);
end behavioral;
