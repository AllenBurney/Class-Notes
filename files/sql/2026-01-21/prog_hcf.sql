--main_program_hcf_lcm.sql : Write main program to call hcf(),lcm() funtion
-- to get hcf and lcm of 2 numbers.
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
