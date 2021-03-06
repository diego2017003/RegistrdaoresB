ENTITY MULTIPLEXADOR1BIT IS 
	PORT(
		Em1,Em2,Em3,Em4,Em5,Em6:IN BIT;
		S0,S1,S2,S3:IN BIT;
		Saida:OUT BIT);
END MULTIPLEXADOR1BIT;
ARCHITECTURE mux1BIT OF MULTIPLEXADOR1BIT IS
SIGNAL i1,i2,i3,i4,i5,i6,i7,i8:BIT;
BEGIN
i1<=(Em1)AND(NOT(s2))AND(NOT(s1))AND(NOT(s0))AND(NOT S3);	
i2<=(Em2)AND(NOT(s2))AND(NOT(s1))AND((s0))AND(NOT S3);
i3<=(Em3)AND(NOT(s2))AND((s1))AND(NOT(s0))AND(NOT S3);
i4<=(Em4)AND(NOT(s2))AND((s1))AND((s0))AND(NOT S3);
i5<=(Em5)AND((s2))AND(NOT(s1))AND(NOT(s0))AND(NOT S3);
i6<=(Em6)AND((s2))AND(NOT(s1))AND((s0))AND(NOT S3);
i7<=(Em5)AND((s2))AND((s1))AND(NOT(s0))AND(NOT S3);
i8<=(Em6)AND((s2))AND((s1))AND((s0))AND(NOT S3);
Saida<=(i1)OR(i2)OR(i3)OR(i4)OR(i5)OR(i6);
END mux1BIT;