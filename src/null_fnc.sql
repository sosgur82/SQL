--null 함수

select nvl(null,0) from dual;

select nvl2(null, 10, 20),nvl2(0,10,20) from dual;

--nvl로 해결한 경우
SELECT employee_id,salary,salary + salary * nvl(commission_pct,0) from employees;

--nvl2로 해결
SELECT employee_id, nvl2(commission_pct, salary + salary*commission_pct, salary) from employees;

--nullif
select nullif(10,5+5)from dual;
select nullif(10,5+5)from dual;
--coalesce