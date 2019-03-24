library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
entity seqdetector is
port(clk:in std_logic;
x: in std_logic_vector(0 to 3);
dec : inout integer;
 output : inout std_logic_vector(0 to 3));
end seqdetector;

architecture stru of seqdetector is
component sequence
port(clk,x: in std_logic;
ain: in std_logic_vector(0 to 3);
aout: inout std_logic_vector(0 to 3);
z: out std_logic);
end component;

component checkOutput 
PORT( x: in std_logic_vector(0 to 3);out1 : out integer range 0 to 45); 
END component;
component getResult 
PORT( x: in std_logic_vector(0 to 3);out1 : out integer); 
end component;
component dff
port(clk,d: in std_logic;
x1,x2: inout std_logic);
end component;

SIGNAL s,t0,t1,t2,t3,t4,t5,t6,t7,t8,t9: std_logic_vector(0 TO 3);

signal temp_out: std_logic_vector(0 TO 3);

begin

 

s<="0000";



g0:sequence port map(clk,x(0),s,t0,output(0));
g1:sequence port map(clk,x(1),t0,t1,output(1));
g2:sequence port map(clk,x(2),t1,t2,output(2));
g3:sequence port map(clk,x(3),t2,t3,output(3));

g4 : getResult port map(t3,dec);

end stru;
