--main_program_factorial
DECLARE
n NUMBER:=&n;
h NUMBER;
BEGIN	
	h:=fact(n);
	dbms_output.put_line('Factorial of ' || n ||'is ='|| h);
	END;
	/