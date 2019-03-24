LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY checkOutput IS
PORT( x: in std_logic_vector(0 to 3);out1 : out integer range 0 to 45); 
END checkOutput;
ARCHITECTURE behavioural OF checkOutput IS
BEGIN
process(x)
begin
CASE x IS
	WHEN "0000" => 
	out1 <= 1;
	WHEN OTHERS =>
		out1 <=0;
	END CASE;	
	end process;
END behavioural;
