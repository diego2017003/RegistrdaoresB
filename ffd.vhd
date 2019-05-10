LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY ffd is 
	port(Dff,clkff:IN STD_LOGIC;
		Qff:OUT STD_LOGIC);
END ffd;
ARCHITECTURE behaviorffd of ffd is
		begin	
			process(clkff)
				begin
					if clkff'EVENT and clkff='1' then
						Qff<=(Dff);
					END if;
			END process;
END behaviorffd;