--lcm_function
CREATE OR REPLACE FUNCTION lcm(a IN NUMBER,b IN NUMBER)
RETURN NUMBER
IS
lc NUMBER;
BEGIN 
	lc:=a*b/(hcf(a,b));
	return lc;
	end;
	/