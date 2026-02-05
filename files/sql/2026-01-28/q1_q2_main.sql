--q1_q2_as1_pl_sql_main.sql: Write MAin program to call hcf(a,b), lcm(a,b) to obtain hf, lcm of 2 numbers
DECLARE
a NUMBER :=&a;
b NUMBER :=&b;
h NUMBER;
lc NUMBER;
	BEGIN
	h:=hcf(a,b);
	lc:=lcm(a,b);
	dbms_output.put_line('HCF(' || a ||','|| b ||')='|| h);
	dbms_output.put_line('LCM(' || a ||','|| b ||')='|| lc);
	END;
	/