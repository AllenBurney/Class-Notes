--q4_as1_expx_func.sql: Write a program in PL/SQL to calculate exp(x)
CREATE OR REPLACE FUNCTION expx( x in NUMBER)
RETURN NUMBER IS
cexp NUMBER;
f NUMBER;
n NUMBER;
term NUMBER;
eps NUMBER;
BEGIN
	cexp:=1;
	eps:=cexp;
	n:=1;
	while(eps > 1e-16)
	LOOP
		f:=fact(n);
		term:=x**n/term;
		cexp=cexp+term;
		n:=n+1;
		eps:=ABS(term);
		end LOOP;
	RETURN cexp;
	end;
	/