LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY latchd is 
	port(Dl,clkl:IN STD_LOGIC;
		Ql:OUT STD_LOGIC);
END latchd;
ARCHITECTURE behavior1 of latchd is
		begin	
			process(clkl,Dl)
				begin
					if clkl='1' then
						Ql<=Dl;
					END if;
			END process;
END behavior1;			
