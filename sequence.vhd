library ieee;
use ieee.std_logic_1164.all;


entity sequence is
port(clk,x: in std_logic;
ain: in std_logic_vector(0 to 3);
aout: inout std_logic_vector(0 to 3);
z: out std_logic);

end sequence;

architecture stru of sequence is
component dff 
port( 
clk: in std_logic;
din: in std_logic;
dout: out std_logic);
end component;

 

signal da,db,dc,dd,t0,t1,t2,t3:std_logic;

begin
dc <= (not ain(0) and not ain(1) and ain(3)) or (ain(1) and ain(2) and not ain(3)) or (ain(0) and not ain(3));   
da <= (ain(1) and not ain(2) and not ain(3)) or (ain(0) and ain(3));
db <= (ain(0) and not ain(3)) or (not ain(1) and ain(2)) or (ain(2) and ain(3)); 
dd <= (x);
z <= ( ain(1) and ain(2)) or (ain(1) and ain(3)) or (ain(0));
g1:dff port map(clk,da,aout(0));
g2:dff port map(clk,db,aout(1));
g3:dff port map(clk,dc,aout(2));
g4:dff port map(clk,dd,aout(3));

    
end stru;  