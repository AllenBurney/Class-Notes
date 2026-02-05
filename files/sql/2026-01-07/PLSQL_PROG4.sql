--PLSQL_PROG4.SQL: WAP IN PL/SQL TO INPUT ROLL,P1,P2,P3. CALC TOTAL=SUM OF BEST 2 PAPERS. AVG=TOTAL/2. CALCULATE GRADE
DECLARE
	ROLL NUMBER(2) :=&ROLL;
	P1 NUMBER(3):=&P1;
	P2 NUMBER(3):=&P2;
	P3 NUMBER(3):=&P3;
	SMALL NUMBER;
	TOTAL NUMBER;
	GRADE VARCHAR2(5);
	AV NUMBER;
	BEGIN
	SMALL :=P2;
		IF(P1<P2)
			THEN 
				SMALL:=P1;
		END IF;
		IF(P3<SMALL)
			THEN 
				SMALL:=P3;
		END IF;
		TOTAL :=P1+P2+P3-SMALL;
		AV :=TOTAL/2;
		dbms_output.put_line('ROLL NO.-' ||ROLL); 
		dbms_output.put_line('P1-' ||P1); 
		dbms_output.put_line('P2-' ||P2); 
		dbms_output.put_line('P3-' ||P3); 
		dbms_output.put_line('TOTAL-' ||TOTAL);
		dbms_output.put_line('AVERAGE-' ||AV);
	END;
	/		
		
		
	