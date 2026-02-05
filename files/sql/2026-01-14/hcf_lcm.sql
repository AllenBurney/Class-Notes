--HCF/LCM: WAP in PL/SQL which will input 2 integers a,b. Calculate the hcf and lcm of a and b.
DECLARE
    a INTEGER:=&a;
    b INTEGER:=&b;
    x INTEGER;
    y INTEGER;
    r INTEGER;
    h INTEGER;
    lc INTEGER;
    BEGIN
    --TO calculate the hcf
    x:=a;
    y:=b;
    r:=MOD(x,y);
    WHILE(r!=0)
    LOOP
    x:=y;
    y:=r;
    r:=MOD(x,y);
    END LOOP;
    h:=y;
    --Calculating lcm from hcf
    lc:=a*b/h;
    --TO display
    dbms_output.put_line('HCF('||a||','||b||')='||h);
    dbms_output.put_line('LCM('||a||','||b||')='||lc);
    END;
    /
