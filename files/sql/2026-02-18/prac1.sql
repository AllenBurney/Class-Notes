--WAP in PL/SQL to dipslay all Fibonacci Number(2-2000).Assume the first two numbers of fibo series are 1 and 1.
DECLARE 
	f1 Number;
	f2 Number;
	f3 Number;
	i Number;
	BEGIN
		f1:=1;
		f2:=1;
		f3:=f1+f2;
		DBMS_OUTPUT.PUT(f1 || ' ' || f2);
		while(f3<2000)
		LOOP
			DBMS_OUTPUT.PUT(f3||' ');
			f1:=f2;
			f2:=f3;
			f3:=f1+f2;
		end loop;
		DBMS_OUTPUT.NEW_LINE;
		end;
		/