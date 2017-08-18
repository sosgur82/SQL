--corelated subquery
--문)각 부서별로 최고 월급을 받는 직원의 이름과 월급 출력

select max(salary),department_id from employees group by department_id;

--where
select department_id, salary, first_name
from employees 
where(department_id, salary) 
in (select max(salary),department_id from employees group by department_id);

--from 
select a.first_name,a.salary,a.department_id 
from employees a ,
(select max(salary) as max_salary,
department_id from employees group by department_id) b
where a.DEPARTMENT_ID = b.department_id and a.SALARY = b.max_salary;

--corelated
select department_id,salary,first_name
from employees a
where salary = (select max(salary) from employees where a.department_id=department_id);

--문) 자기 부서의 평균 월급보다 적은 월급 받는 직원의 이름과 월급을 출력

select a.department_id,a.first_name,a.salary,b.avg_salary
  from employees a,
  (select department_id,avg(salary) as avg_salary from employees group by department_id ) b
 where a.department_id = b.department_id and a.salary < b.avg_salary;

select department_id, first_name, salary
  from employees a
 where salary < 
 (  select avg(salary)
      from employees
     where a.department_id=department_id);   		


