-- sine main program
DECLARE
x NUMBER;
a NUMBER:=&a;
i NUMBER;
BEGIN
	i:=0;
	while(i!=180)
	LOOP
		x:=sine(i);
		DBMS_OUTPUT.PUT(x || ' ');
	end loop;
	DBMS_OUTPUT.NEW_LINE;
	end;
/