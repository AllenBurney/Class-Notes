-- is_prime(parameter).
CREATE OR REPLACE FUNCTION is_prime(a IN NUMBER)
RETURN NUMBER
IS
i NUMBER;
x NUMBER;
j NUMBER;
c NUMBER;
BEGIN
	x:=a;
	c:=0;
	for i in 2..a
	loop
		j:=MOD(a,i);
		if(j=0)
		THEN
			c:=c+1;
		end if;
	end loop;
	if(c=1)
	THEN
		return 1;
	end if;
	return 0;
	end;
	/
		