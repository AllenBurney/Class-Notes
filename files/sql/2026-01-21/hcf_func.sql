--function_hcf.sql : Wap in pl/sql to
-- create a function called as hcf().
CREATE OR REPLACE FUNCTION hcf(a IN NUMBER,b IN NUMBER)
RETURN NUMBER
IS
x NUMBER;
y NUMBER;
r NUMBER;
h NUMBER;
	BEGIN
	x:=a;
	y:=b;
	r:=MOD(x,y);
	while(r!=0)
		LOOP
		x:=y;
		y:=r;
		r:=MOD(x,y);
		end loop;
	h:=y;
	return h;
	end;
	/