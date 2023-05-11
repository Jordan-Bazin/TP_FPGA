library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity shift_register_universal8 is
	port (
		ssr : in std_logic;
		ssl : in std_logic;
		pi : in std_logic_vector(7 downto 0);
		sel : in std_logic_vector(2 downto 0);
		clk : in std_logic;
		setn : in std_logic;
		rstn : in std_logic;
		sor : out std_logic;
		sol : out std_logic;
		qo : out std_logic_vector(7 downto 0)
	);
end shift_register_universal8;

architecture behavioral of shift_register_universal8 is
	signal reg : std_logic_vector(7 downto 0) := (others => '0');
begin
   process(ssr, ssl, pi, sel, clk, setn, rstn)
	begin
		if rstn = '0' then
			reg <= "00000000";
		elsif setn = '0' then
			reg <= "11111111";
		elsif clk'event and clk = '1' then
			if sel(1 downto 0) = "11" then
				reg <= pi;
			elsif sel = "001" then
				sor <= reg(0);
				reg <= ssr & reg(7 downto 1);
			elsif sel = "010" then
				sol <= reg(7);
				reg <= reg(6 downto 0) & ssl;
			elsif sel = "101" then
				reg <= reg(0) & reg(7 downto  1);
			elsif sel = "110" then
				reg <= reg(6 downto 0) & reg(7);
			end if;
			qo <= reg;
		end if;
	end process;
end behavioral;
