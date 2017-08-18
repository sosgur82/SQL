--연습문제 조인편
--1번
select a.employee_id,a.first_name,b.department_name,a.first_name from employees a, departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID;
--2번
select a.region_name,b.country_name from regions a, countries b where a.REGION_ID=b.REGION_ID;
--3번
select a.department_id, a.department_name, b.first_name,c.city,d.country_name,e.region_name 
from departments a, employees b, locations c, countries d, regions e 
WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID 
and a.LOCATION_ID=c.LOCATION_ID 
and d.REGION_ID = e.REGION_ID;

--4번
select b.EMPLOYEE_ID,c.FIRST_NAME||c.LAST_NAME "이름"
from jobs a, JOB_HISTORY b, EMPLOYEES c
where a.JOB_ID = b.JOB_ID
	and a.JOB_TITLE = 'Public Accountant'
	and b.EMPLOYEE_ID = c.EMPLOYEE_ID;
	
--5번
select a.employee_id, a.first_name, a.last_name, b.department_name 
from employees a, departments b
where a.DEPARTMENT_ID = b.DEPARTMENT_ID order by a.LAST_NAME;

--6번
select a.employee_id, a.last_name, 
to_char(a.HIRE_DATE,'yyyy-mm-dd') 
from employees a, employees b
where a.manager_id = b.EMPLOYEE_ID
and a.HIRE_DATE < b.HIRE_DATE
order by a.hire_date;
