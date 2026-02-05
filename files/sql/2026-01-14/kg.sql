create table studenttable
(student_id number primary key,
first_name varchar2(30),
last_name varchar2(30));

insert into studenttable values(120, 'Virendra', 'Sehwag');
insert into studenttable values(121, 'Virendra', 'Sehwag');
insert into studenttable values(122, 'Virendra', 'Sehwag');
insert into studenttable values(123, 'Virendra', 'Sehwag');

DECLARE v_student_id NUMBER:=&v_student_id;
v_first_name varchar2(35);
v_last_name varchar2(35);
BEGIN
    select first_name, last_name into v_first_name, v_last_name from student where
    studenttable student_id=v_student_id;
    dbms_output.put_line('Student name: '||v_first_name||' '||v_last_name);

EXCEPTION
when no_data_found then
dbms_output.put_line('There is no such student');
END;