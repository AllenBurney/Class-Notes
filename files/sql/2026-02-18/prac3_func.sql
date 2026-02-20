--sin FUNCTION
CREATE OR REPLACE FUNCTION sine(X in NUMBER)
RETURN NUMBER
IS
y NUMBER;
xrad NUMBER(15,12);
sf NUMBER;
fact1 NUMBER(20);
csin NUMBER(18,15);
term NUMBER(18,15);
eps NUMBER(18,15);
n NUMBER;
	BEGIN
	y:=x;
	xrad:=y*3.14/180;
	csin:=xrad;
	eps:=ABS(csin);
	sf:=-1;
	n:=3;
	while(eps>1e-16)
	LOOP
	fact1:=fact(n);
	term:=sf*xrad**n/fact1;
	csin:=csin+term;
	eps:=ABS(term);
	n:=n+2;
	sf:=-sf;
	END LOOP;
return csin;
end;
/
