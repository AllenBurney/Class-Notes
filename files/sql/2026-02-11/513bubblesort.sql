--bubble sort in SQL

DECLARE
	TYPE numbers IS VARRAY(5) OF NUMBER;
	a numbers;
	a1 NUMBER :=&a1;
	a2 NUMBER :=&a2;
	a3 NUMBER :=&a3;
	a4 NUMBER :=&a4;
	a5 NUMBER :=&a5;
	n NUMBER;
	i NUMBER;
	m NUMBER;
	flag NUMBER;
	x NUMBER;
	temp NUMBER;
	BEGIN
	a:=numbers(a1,a2,a3,a4,a5);
	n:=a.COUNT;
	dbms_output.put_line('UNSORTED LIST');
	x:=0;
	FOR i in 1..n 
	LOOP
		dbms_output.put(a(i)||' ');
	END LOOP;
	dbms_output.new_line;
	--BUBBLE SORT ROUTINE
	flag:=0;
	m:=n;
	WHILE(flag=0)
	LOOP
		flag:=1;
		m:=m-1;
		FOR i in 1..m
		LOOP
			IF(a(i)>a(i+1))
			THEN
				temp:=a(i);
				a(i):=a(i+1);
				a(i+1):=temp;
				flag:=0;
				x:=x+1;
				FOR i in 1..n 
				LOOP
					dbms_output.put(a(i)||' ');
				END LOOP;
				dbms_output.new_line;
			END IF;
		END LOOP;
	END LOOP;
	dbms_output.put_line('Sorted List');
	FOR i in 1..n 
	LOOP
		dbms_output.put(a(i)||' ');
	END LOOP;
	dbms_output.new_line;
	x:=x+1;
	
	dbms_output.put_line('The no of comparisons are : '||x);
END;
/