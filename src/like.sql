--where 조건

--job_id 가 AD_pres 이거ㅏ나 AD_VP

select employee_id,job_id from employees WHERE job_id = 'AD_PRES' or job_id = 'AD_VP';

select employee_id,job_id from employees WHERE job_id IN ('AD_PRES','AD_VP');

select employee_id,salary from employees WHERE 10000 <salary and salary <20000;

select employee_id,salary from employees WHERE salary between 1000 and 2000;

--null 값을 가지는 커럼을 where절에 사용할대
select employee_id,commission_pct from employees where commission_pct is null;

select employee_id,commission_pct from employees where commission_pct is not null;

--like
select first_name from employees where first_name like 'A%';

select first_name from employees where first_name like '%a';

select first_name from employees where first_name like '%y%';

