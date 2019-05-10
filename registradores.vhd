LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY REGISTRADORES IS 
	PORT(E:IN STD_LOGIC_vector(3 downto 0);
	Sr0,Sr1,Sr2,Sr3,ld,clkr:IN STD_logic);
END REGISTRADORES;
ARCHITECTURE registrador OF REGISTRADORES IS
COMPONENT ffd4b
			port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
			clkff4:IN STD_LOGIC;
		   Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
		END COMPONENT;
SIGNAL R0,R1,R2,R3,R4,R5,R6,R7:STD_LOGIC_vector(3 DOWNTO 0);
SIGNAL Ei:STD_LOGIC_vector(3 DOWNTO 0);
BEGIN
Ei<="0000";
u0: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R0);
u1: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R1);
u2: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R2);
u3: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R3);
u4: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R4);
u5: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R5);
u6: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R6);
u7: ffd4b PORT MAP(Dff4=>Ei,clkff4=>clkr,Qff4=>R7);

END registrador;