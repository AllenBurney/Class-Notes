--q1as1_func.sql : WA Pl/SQL function to calculate hcf(a,b)
CREATE OR REPLACE function hcf(a IN NUMBER, b IN NUMBER)
Return NUMBER 
IS
h NUMBER;
x NUMBER;
y NUMBER;
r NUMBER;
	BEGIN
	x:=a;
	y:=b;
	r:=MOD(x,y);
		WHILE (r!=0)
		LOOP
		x:=y;
		y:=r;
		r:=MOD(x,y);
		END LOOP;
	h:=y;
	Return h;
	END;
/