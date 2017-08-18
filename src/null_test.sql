--null test

select employee_id, salary, commission_pct from employees;

SELECT employee_id,salary,salary + salary * commission_pct from employees;

--nvl 함수
select nvl(null, 10) from dual;
select nvl(20, 10) from dual;

SELECT employee_id,salary,salary + salary * nvl(commission_pct,0) from employees;

select employee_id, nvl(manager_id,0) from employees;