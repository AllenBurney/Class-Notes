--WAP in PL/SQL to display all triads.A triad nos comprises of 3 numbers (n1,n2,n3)
--where n2=2*n1 n3=3*n1.n1,n2,n3 contains all digits 1,2,3,4,5,6,7,8,9.
--The first triad is (192,384,576).To start use n=123

SET SERVEROUTPUT ON;

DECLARE
    n1 NUMBER := 123;
    n2 NUMBER;
    n3 NUMBER;
    str VARCHAR2(20);
    i   NUMBER;
    flag BOOLEAN;
BEGIN
    FOR n1 IN 123..329 LOOP   -- 329 is upper limit (since 330*3 > 999)
        
        n2 := 2 * n1;
        n3 := 3 * n1;
        
        -- Ensure all are 3-digit numbers
        IF n2 <= 999 AND n3 <= 999 THEN
        
            -- Combine numbers into one string
            str := TO_CHAR(n1) || TO_CHAR(n2) || TO_CHAR(n3);
            
            -- Check if length is 9
            IF LENGTH(str) = 9 THEN
                flag := TRUE;
                
                -- Check digits 1 to 9
                FOR i IN 1..9 LOOP
                    IF INSTR(str, TO_CHAR(i)) = 0 THEN
                        flag := FALSE;
                        EXIT;
                    END IF;
                END LOOP;
                
                -- Display triad if valid
                IF flag THEN
                    DBMS_OUTPUT.PUT_LINE('(' || n1 || ', ' || n2 || ', ' || n3 || ')');
                END IF;
                
            END IF;
            
        END IF;
        
    END LOOP;
END;
/
