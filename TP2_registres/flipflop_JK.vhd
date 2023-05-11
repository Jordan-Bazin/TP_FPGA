library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity flipflop_JK is
    port (
       J : in std_logic;
		 K : in std_logic;
		 CLK : in std_logic;
		 Q : out std_logic;
		 Qn : out std_logic
    );
end flipflop_JK;

architecture behavioral of flipflop_JK is
	signal tmpQ : std_logic;
	signal tmpQn : std_logic;
begin
	 Q <= tmpQ;
	 Qn <= tmpQn;
    process(CLK, J, K, tmpQ, tmpQn)
	 begin
		if(CLK' event and CLK = '1') then
			if(J = '1' and K = '0') then
				tmpQ <= '1';
				tmpQn <= '0';
			end if;
			if(J = '0' and k = '1') then
				tmpQ <= '0';
				tmpQn <= '1';
			end if;
			if(J = '1' and K = '1') then
				tmpQ <= not(tmpQ);
				tmpQn <= not(tmpQn);
			end if;	
			if(J = '0' and K = '0') then
				tmpQ <= tmpQ;
				tmpQn <= tmpQn;
			end if;	
		end if;
	end process;
end behavioral;