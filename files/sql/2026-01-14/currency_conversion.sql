--currency conversion: Write a PL/SQL which will display a currency conversion table which will 
--display Indian Rupee(INR), US Dollar (USD) and Canadian Dollar(CAD) in a tabular form. Choose 1 usd=90INR
-- 1 cad=60INR.
DECLARE
    inr NUMBER;
    usd NUMBER(7,2);
    cad NUMBER(7,2);
    usd_conv NUMBER :=&usd_conv;
    cad_conv NUMBER :=&cad_conv;
    BEGIN
    dbms_output.put_line('INR     USD     CAD');
    inr:=1000;
    WHILE inr<=10000
    LOOP
    usd :=inr/usd_conv;
    cad:=inr/cad_conv;
    dbms_output.put_line(inr ||'     '||usd||'     '||cad);
    inr:=inr+1000;
    END LOOP;
    END;
    /
    

