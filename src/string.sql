--문자열 함수

select lower('Database Management System' ) from dual;

select first_name from employees where lower(first_name) like 'al%';

select upper('Database Management System')from dual;

select last_name, upper(last_name) from employees;

select initcap('Database Management System') from dual;

select first_name || ' ' || last_name from employees;

select length ('Database Management System') from dual;

select instr('Database Management System', 'base') from dual;

select employee_id, lpad(salary,10,'*') from employees;

select employee_id, rpad(salary,10,'*') from employees;

select trim('#' from '####data#base####') from dual;

select '---' || trim(' ' from ' data base ') || '---' from dual;

select '---' || ltrim(' data  base ',' ') || '---' from dual;

select '---' || rtrim(' data  base ',' ') || '---' from dual;

select '---' || replace(' data  base ', ' ', '') || '---' from dual;

