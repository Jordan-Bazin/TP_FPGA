library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity clock_divider is
	port (
		clkin : in std_logic;
		n : in std_logic_vector(4 downto 0);
		rst : in std_logic;
		clkout : out std_logic
	);
end clock_divider;

architecture behavioral of clock_divider is
	signal cpt : std_logic_vector(23 downto 0);
begin
	process(clkin, rst)
	begin
		clkout <= cpt(to_integer(unsigned(n)));
		if(rst = '0') then
			cpt <= "000000000000000000000000";
			clkout <= '0';
		elsif(clkin' event and clkin = '1') then
			cpt <=  cpt + 1;
		end if;
	end process;
end behavioral;
