--is_prime main
DECLARE
a NUMBER :=&a;
i NUMBER;
x NUMBER;
BEGIN
FOR i in 2..a
LOOP
	x:=is_prime(i);
	if(x=1)
	THEN
		DBMS_OUTPUT.PUT(i||' ');
	end if;
end loop;
DBMS_OUTPUT.NEW_LINE;
end;
/