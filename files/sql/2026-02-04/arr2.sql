--plsql_array_program_1.sql:WAP in PL/SQL to calculate frequency in an array
DECLARE
	TYPE mylist is VARRAY(5) of NUMBER;
	a mylist;
	b mylist;
	i NUMBER;
	j NUMBER;
	a1 NUMBER:=&a1;
	a2 NUMBER:=&a2;
	a3 NUMBER:=&a3;
	a4 NUMBER:=&a4;
	a5 NUMBER:=&a5;
	a6 NUMBER:=&a6;
	a7 NUMBER:=&a7;
	a8 NUMBER:=&a8;
	BEGIN
		a:=mylist(a1,a2,a3,a4,a5,a6,a7,a8);
		FOR j in 1..n
		LOOP
			b(i):=0;
		END LOOP
		FOR i in 1..n
		LOOP
		
		--DO IT YOURSELF.