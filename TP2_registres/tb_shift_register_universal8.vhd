library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

architecture tb of tb_shift_register_universal8 is
	signal PI : std_logic_vector (7 downto 0) := (others => '0');
	signal SEL : std_logic_vector (2 downto 0) := (others => '0');
	signal QO : std_logic_vector (7 downto 0);
	signal SSR, CLK, RSTN, SOR, SOL : std_logic := '1';
	signal SETN, SSL : std_logic := '0';
begin 
	UUT : entity work.shift_register_universal8 port map (
		ssr => SSR,
		ssl => SSL,
		pi => PI,
		sel => SEL,
		clk => CLK,
		setn => SETN,
		rstn => RSTN,
		sor => SOR,
		sol => SOL,
		qo => QO
	);
	
	process
		begin
			CLK <= not(CLK);
			wait for 5ns;
	end process;
	
	process
		  begin
		  wait for 7ns;
		  PI <= PI + '1';
	 end process;

	stimuli1 : process
		begin
			SEL <= "111";
			wait for 10ns;
		  
			SEL <= "001";
			wait for 10ns;
			
			SEL <= "010";
			wait for 10ns;
		  
			SEL <= "101";
			wait for 10ns;
		  
			SEL <= "110";
			wait for 10ns;
		  
			SEL <= "000";
			wait;
		
		wait; 

	end process;
end tb ;
