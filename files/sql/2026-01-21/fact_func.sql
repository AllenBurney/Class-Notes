--function_fact.
CREATE OR REPLACE FUNCTION fact(n IN NUMBER)
Return number
is
f number;
x number;
begin
	x:=1;
	f:=1;
	while(x!=n+1)
	loop
		f:=f*x;
		x:=x+1;
		end loop;
	return f;
	end;
	/