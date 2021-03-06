--연습문제 혼합
--1번
select a.first_name || ' ' || a.last_name 이름, a.salary 연봉, b.department_name 부서명 
from employees a , DEPARTMENTS b
where a.hire_date = (select max(hire_date)from EMPLOYEES) 
and a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--2번
select a.department_id,a.last_name,a.salary,b.avg_salary
  from employees a,
  (select department_id,avg(salary) as avg_salary from employees group by department_id ) b
 where a.department_id = b.department_id and a.salary > b.avg_salary;
 
 --3번
select a.EMPLOYEE_ID, a.first_name ||' '||a.last_name 이름, a.job_id, a.salary
from EMPLOYEES a, (select round(avg(salary),0) 연봉, department_id 부서명 from employees group by department_id) b
where b.연봉 = (select max(연봉) 
from(select round(avg(salary),0) 연봉, department_id 부서명 from employees group by department_id))
and a.department_id = b.부서명;

--4번
select b.department_id, a.avg_salary, b.DEPARTMENT_NAME
from (select department_id,avg(salary) as avg_salary
		from employees
		group by department_id) a, DEPARTMENTS b
where a.department_id = b.department_id 
and a.avg_salary = (select max(avg_salary) from (select avg(salary) as avg_salary from employees group by department_id));
--5번 
select a.department_id, a.avg_salary, b.LOCATION_ID, c.CITY
from (select department_id,avg(salary) as avg_salary
		from employees
		group by department_id) a, DEPARTMENTS b, locations c
where a.department_id = b.department_id 
and a.avg_salary = (select max(avg_salary) from (select avg(salary) as avg_salary from employees group by department_id))
and b.LOCATION_ID = c.LOCATION_ID;
--6번
select b.job_id, a.avg_salary, b.job_title
from (select job_id,avg(salary) as avg_salary
		from employees
		group by job_id) a, jobs b
where a.job_id = b.job_id 
and a.avg_salary = (select max(avg_salary) from (select avg(salary) as avg_salary from employees group by job_id));