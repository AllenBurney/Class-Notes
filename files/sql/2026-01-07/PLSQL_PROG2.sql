--PLSQL_PROG_2.SQL: WAP IN PL/SQL TO INPUT 'C' AND CALCULATE 'F' FROM C/5=(F-32)/9. PRINT C,F;
DECLARE
	C NUMBER :=&C;
	F NUMBER;
BEGIN
F:= ((9*C)/5)+32;
dbms_output.put_line('Celcius=' ||C); 
dbms_output.put_line('Fahrenhite=' ||F);
END;
/