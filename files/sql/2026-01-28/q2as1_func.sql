--q2as1_func.sql: WA function in PL/SQL to calculate lcm(a,b)
CREATE OR REPLACE function lcm(a in NUMBER,b in NUMBER)
RETURN NUMBER IS
lc NUMBER;
h NUMBER;
x NUMBER;
y NUMBER;
	BEGIN
	x:=a;
	y:=b;
	h:=hcf(x,y);
	lc:=x*y/h;
	RETURN lc;
	end;
/