--평균연봉이 가장 높은 부서

select a.department_id, a.avg_salary
from (select department_id,avg(salary) as avg_salary
		from employees
		group by department_id) a, DEPARTMENTS b
where a.department_id = b.department_id 
and a.avg_salary = (select max(avg_salary) from (select avg(salary) as avg_salary from employees group by department_id));

select max(avg_salary)
from (select avg(salary) as avg_salary from employees group by department_id);