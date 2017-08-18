--서브쿼리 문제
--문제 1
select count(employee_id) from employees
where salary < (select avg(salary) from employees); 

--문제 2
select employee_id,salary,last_name
from employees a
where salary = (select max(salary) from employees where a.department_id=department_id)
order by salary desc;

--문제 3
select a.job_title 업무명 , b.max_salary
from jobs a,(select job_id, sum(salary) max_salary from employees group by job_id) b
where a.job_id = b.job_id
order by b.MAX_SALARY desc;

--문제 4
select a.department_id,a.last_name,a.salary,b.avg_salary
  from employees a,
  (select department_id,avg(salary) as avg_salary from employees group by department_id ) b
 where a.department_id = b.department_id and a.salary > b.avg_salary;