LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY getResult IS
PORT( x: in std_logic_vector(0 to 3);out1 : out integer range 0 to 45); 
END getResult;
ARCHITECTURE behavioural OF getResult IS
BEGIN
PROCESS (x)
BEGIN
out1 <= to_integer(unsigned(x));
END PROCESS;
END behavioural;