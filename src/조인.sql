--inner join (equi join)

select a.employee_id,
       b.DEPARTMENT_ID,
       a.FIRST_NAME,
       b.DEPARTMENT_NAME
from employees a, departments b 
where a.DEPARTMENT_ID = b.DEPARTMENT_ID --join조건 
and a. salary > 5000;

--inner join(self join, equi join)
select emp.first_name as "직원이름",
	   man.first_name as "매니저 이름"
from employees emp, employees man where emp.manager_id = man.employee_id;