library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- 1) --------------
--		A | B | S | C |
--    --------------
--		0 | 0 | 0 | 0 |
--		0 | 1 | 1 | 0 |  -> S = XOR et C = AND
--		1 | 0 | 1 | 0 |
--		1 | 1 | 0 | 1 |

entity half_adder is
	port (
		a : in std_logic;
		b : in std_logic;
		s : out std_logic;
		c : out std_logic
	);
end half_adder;

architecture behavioral of half_adder is
begin
	s <= (a xor b);
	c <= (a and b);
end behavioral;
