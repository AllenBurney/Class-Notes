--plsql_array_program_1.sql: WAP in PL/SQL to define 1-dim array and store some numbers.
--Calculate and print (i) sum of all elements, (ii) average of all elements,(iii) largest value
DECLARE
	TYPE mylist is VARRAY(5) of NUMBER;
	a mylist;
	i NUMBER;
	s NUMBER; --s=sum of all elements of array a()
	a1 NUMBER:=&a1;
	a2 NUMBER:=&a2;
	a3 NUMBER:=&a3;
	a4 NUMBER:=&a4;
	a5 NUMBER:=&a5;
	n NUMBER;
	av NUMBER(10,4);
	big NUMBER;
	small NUMBER;
	sdev NUMBER;
	BEGIN
		a:=mylist(a1,a2,a3,a4,a5);
		n:=a.count(); --n=size of our list a()
		s:=0;
		FOR i in 1..n
		LOOP
		s:=s+a(i);
		END LOOP;
		av:=s/n; --average
		--To Calculate largest value
		big:=a(1);
			For i in 2..n
			LOOP
				IF(a(i) > big)
				THEN
					big:=a(i);
				End if;
			END LOOP;
		--To Calculate Smallest value
		small:=a(1);
			For i in 2..n
			LOOP
				IF(a(i) < small)
				THEN
					small:=a(i);
				End if;
			END LOOP;
		av:=s/n;
		--TO Calculate Standard Deviation
		sdev:=0;
		For i in 1..n
		LOOP
		sdev:=sdev+(a(i)-av)*(a(i)-av);
		END LOOP;
		sdev:=SQRT(sdev/n);
		dbms_output.put_line('Elements entered-->');
		FOR i in 1..n
		LOOP
		dbms_output.put_line(a(i));
		END LOOP;
		dbms_output.put_line('SUM=' || s);
		dbms_output.put_line('Largest=' || big);
		dbms_output.put_line('Smallest=' || small);
		dbms_output.put_line('Average=' || av);
		dbms_output.put_line('Standard Deviation=' || sdev);
		END;
		/
		