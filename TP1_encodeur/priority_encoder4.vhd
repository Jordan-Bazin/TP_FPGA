library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- a | b | c | d || s1 | s2 
-- ------------------------
-- 0 | 0 | 0 | 0 || 0  | 0
-- 0 | 0 | 0 | 1 || 0  | 0
-- 0 | 0 | 1 | X || 0  | 1
-- 0 | 1 | X | X || 1  | 0
-- 1 | X | X | X || 1  | 1

entity priority_encoder4 is
	port (
		X : in STD_LOGIC_VECTOR(3 downto 0);
		Y : out STD_LOGIC_VECTOR(1 downto 0)
	);
end priority_encoder4;

architecture behavioral of priority_encoder4 is
begin
	process (X)
	begin
		if X(3) = '1' then
			Y <= "11";
		elsif	X(2) = '1' then
			Y <= "10";
		elsif X(1) = '1' then
			Y <= "01";
		else 
			Y <= "00";
		end if;
	end process;
		
end behavioral;
