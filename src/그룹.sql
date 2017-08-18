select avg(salary), max(salary) from employees;

--error
--집계함수 의외의 컬럽은 프로젝션 될수 없다.
--select employee_id, avg(salary), max(salary) from employees;

--단
--group by 절에 참여 하고있는 컴럼은 플젝션 할수 잇다.
select avg(salary), max(salary) from employees where manager_id is not null group by job_id;
