CREATE TABLE EMPLOYEE519(
empid NUMBER PRIMARY KEY,
ename VARCHAR2(50),
basic_salary NUMBER(10,2),
pf NUMBER(10,2),
tax NUMBER(10,2),
gross_salary NUMBER(10,2),
net_salary NUMBER(10,2)
);


******Payslip calculation Rules******
DA=18% of basic_salary
HRA=12% of basic_salary(MAX=10000)
medical=Rs.500(fixed)
PF=10% of basic_salary
Tax=10% of gross_salary
gross_salary=basic_salary+DA+ HRA+medical+pf
net_salary=gross_salary-pf-tax
**************************************
DECLARE
v_empid NUMBER:=&empid;
v_ename VARCHAR2(30):='&ename';
v_basic NUMBER:=&basic;
v_da NUMBER;
v_hra NUMBER;
v_medical number:=500;
v_pf NUMBER;
v_tax NUMBER;
v_gross NUMBER;
v_net NUMBER;
v_total_net number;

BEGIN
	v_da:=v_basic*0.18;
	v_hra:=v_basic*0.12;
	if v_hra>10000 then 
	v_hra:=10000;
	end if;
	v_pf:=v_basic*0.10;
	v_gross:=v_basic+v_da+v_hra+v_medical+v_pf;
	v_tax:=v_gross*0.10;
	v_net:=v_gross-v_pf-v_tax;
	
	INSERT INTO Employee519 VALUES(v_empid,v_ename,v_basic,v_gross,v_pf,v_tax,v_net);
	COMMIT;
	
	DBMS_OUTPUT.PUT_LINE('------------------------');
	DBMS_OUTPUT.PUT_LINE('         PAY SLIP');
	DBMS_OUTPUT.PUT_LINE('------------------------');
	DBMS_OUTPUT.PUT_LINE('Employee ID   :'||v_empid);
	DBMS_OUTPUT.PUT_LINE('Employee name   :'||v_ename);
	DBMS_OUTPUT.PUT_LINE('Basic Salary   :'||v_basic);
	DBMS_OUTPUT.PUT_LINE('Dearness Allowance   :'||v_da);
	DBMS_OUTPUT.PUT_LINE('House Rent Allowance  :'||v_hra);
	DBMS_OUTPUT.PUT_LINE('Medical Allowance   :'||v_medical);
	DBMS_OUTPUT.PUT_LINE('Provident Fund   :'||v_pf);
	DBMS_OUTPUT.PUT_LINE('Gross Salary   :'||v_gross);
	DBMS_OUTPUT.PUT_LINE('Tax Deducted   :'||v_tax);
	DBMS_OUTPUT.PUT_LINE('Net Salary   :'||v_net);
	DBMS_OUTPUT.PUT_LINE('-------------------------');
	
	--Calculate total net salary of all employees
	
	SELECT SUM(net_salary)
	INTO v_total_net
	FROM Employee519;
	
	DBMS_OUTPUT.PUT_LINE('-------------------------');
	DBMS_OUTPUT.PUT_LINE('Total NET salary of all employees:'||v_total_net);
	DBMS_OUTPUT.PUT_LINE('-------------------------');
	
	EXCEPTION
	WHEN DUP_VAL_ON_INDEX then
	DBMS_OUTPUT.PUT_LINE('Error: Employee id already exists.');
	end;
	/