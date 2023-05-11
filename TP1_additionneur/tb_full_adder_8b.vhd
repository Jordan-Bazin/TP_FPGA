library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity tb_full_adder_8b is
end tb_full_adder_8b;

architecture TB of tb_full_adder_8b is
--signaux de tests
signal cin : STD_LOGIC;
signal a :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal b :  STD_LOGIC_VECTOR(7 DOWNTO 0);
signal cout : STD_LOGIC;
signal s :  STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

    UUT : entity work.full_adder_8b port map(
    cin => cin,
    a => a,
    b => b,
    cout => cout,
    s => s
    );

-- stimulus process
stimulus : process
begin
for i in 0 to 255 loop
  for j in 0 to 255 loop
    -- Test case with Cin = '0'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '0';
    wait for 10 ns;

    -- Test case with Cin = '1'
    a <= std_logic_vector(to_unsigned(i, 8));
    b <= std_logic_vector(to_unsigned(j, 8));
    cin <= '1';
    wait for 10 ns;
  end loop;
end loop;

end process;

end TB;