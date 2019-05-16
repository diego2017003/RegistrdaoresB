LIBRARY ieee;
use ieee.std_logic_1164.all;
ENTITY registradoresv2 IS
	PORT(rw,clk,load,edr2,edr1,edr0:IN STD_LOGIC;
		fil:IN STD_LOGIC_VECTOR(3 Downto 0);
		Sout:OUT STD_LOGIC_VECTOR(3 Downto 0));
END registradoresv2;
Architecture registra of registradoresv2 is
SIGNAL Ri,E0,S0,r0,r1,r2,r3,r4,r5,r6,r7:STD_LOGIC_VECTOR(3 Downto 0);
SIGNAL l0,l1,l2,l3,l4,l5,l6,l7:STD_LOGIC;
COMPONENT ffd4b IS
	port(Dff4: IN STD_LOGIC_VECTOR(3 downto 0);
		clkff4,CLRN4: IN STD_LOGIC;
		Qff4:OUT STD_LOGIC_VECTOR(3 downto 0));
	END COMPONENT;
BEGIN
l0<=(NOT(edr2))AND(NOT(edr1))AND(NOT(edr0))AND(load); 
l1<=(NOT(edr2))AND(NOT(edr1))AND((edr0))AND(load);
l2<=(NOT(edr2))AND((edr1))AND(NOT(edr0))AND(load);
l3<=(NOT(edr2))AND((edr1))AND((edr0))AND(load);
l4<=(edr2)AND(NOT(edr1))AND(NOT(edr0))AND(load);
l5<=((edr2))AND(NOT(edr1))AND((edr0))AND(load);
l6<=((edr2))AND((edr1))AND(NOT(edr0))AND(load);
l7<=((edr2))AND((edr1))AND((edr0))AND(load);
	T0:ffd4b port map(Dff4=>fil,clkff4=>(clk AND load),CLRN4=>'0',Qff4=>E0);
	g0:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l0),CLRN4=>'0',Qff4=>r0);
	g1:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l1),CLRN4=>'0',Qff4=>r1);
	g2:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l2),CLRN4=>'0',Qff4=>r2);
	g3:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l3),CLRN4=>'0',Qff4=>r3);
	g4:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l4),CLRN4=>'0',Qff4=>r4);
	g5:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l5),CLRN4=>'0',Qff4=>r5);
	g6:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l6),CLRN4=>'0',Qff4=>r6);
	g7:ffd4b port map(Dff4=>fil,clkff4=>((rw)AND clk AND l7),CLRN4=>'0',Qff4=>r7);
Ri(0)<=NOT(rw) and((l0 AND r0(0))OR(l1 AND r1(0))OR(l2 AND r2(0))OR(l3 AND r3(0))OR(l4 AND r4(0))OR(l5 AND r5(0))OR(l6 AND r6(0))OR(l7 AND r7(0)));
Ri(1)<=NOT(rw) and((l0 AND r0(1))OR(l1 AND r1(1))OR(l2 AND r2(1))OR(l3 AND r3(1))OR(l4 AND r4(1))OR(l5 AND r5(1))OR(l6 AND r6(1))OR(l7 AND r7(1)));
Ri(2)<=NOT(rw) and((l0 AND r0(2))OR(l1 AND r1(2))OR(l2 AND r2(2))OR(l3 AND r3(2))OR(l4 AND r4(2))OR(l5 AND r5(2))OR(l6 AND r6(2))OR(l7 AND r7(2)));
Ri(3)<=NOT(rw) and((l0 AND r0(3))OR(l1 AND r1(3))OR(l2 AND r2(3))OR(l3 AND r3(3))OR(l4 AND r4(3))OR(l5 AND r5(3))OR(l6 AND r6(3))OR(l7 AND r7(3)));
	Sa0:ffd4b port map(Dff4=>Ri,clkff4=>(NOT(rw)AND clk),CLRN4=>'0',Qff4=>S0);
	Sout<=S0;
END registra; 