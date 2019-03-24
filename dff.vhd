library ieee;
use ieee.std_logic_1164.all;

entity dff is
port( 
clk: in std_logic;
din: in std_logic;
dout: out std_logic);
end dff ;

architecture behavioral of DFF is
begin
process(clk,din)
begin
if(clk='1') then
dout <= din;
end if;
end process;

end behavioral;