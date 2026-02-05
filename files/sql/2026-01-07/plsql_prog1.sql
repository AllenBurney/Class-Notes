--plsql_program_1.sql: Write a program in PL/SQL to input
--A,B. Calculate and print (i) A+B,(ii) A-B,(iii) A*B, (iv) A/B

DECLARE
	A NUMBER :=&A;
	B NUMBER :=&B;
	S NUMBER;
	DIFF NUMBER;
	PROD NUMBER;
	DIV1 NUMBER;
	DIV2 NUMBER;
	BEGIN
	S:=A+B;
	DIFF:=A-B;
	PROD:=A*B;
	DIV1:=A/B;
	DIV2 :=TRUNC(DIV1);
	dbms_output.put_line(A||'+' || B || '=' || S);	
	dbms_output.put_line(A||'-' || B || '=' || DIFF);
	dbms_output.put_line(A||'*' || B || '=' || PROD);
	dbms_output.put_line(A||'/' || B || '=' || DIV1);
	dbms_output.put_line(A||'//' || B || '=' || DIV2);
	END;
	/