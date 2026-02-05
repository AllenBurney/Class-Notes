--PLSQL_PROG_3.SQL: WAP IN PL/SQL TO TAKE C=10,20,...,100 INPUT 'C' AND CALCULATE 'F' FROM C/5=(F-32)/9. PRINT C,F;
DECLARE
	C NUMBER;
	F NUMBER;
BEGIN
C:=10;
WHILE (C<=100)
	LOOP 
	F:=9*(C/5)+32;
	dbms_output.put_line('Celcius=' ||C); 
	dbms_output.put_line('Fahrenhite=' ||F);
	C:=C+10;
	END LOOP;
END;
/