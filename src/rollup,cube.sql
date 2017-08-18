-- 탑쿼리
select rownum, employee_id from employees;

--start with ~ connect by절
select level, manager_id,employee_id from employees
start with manager_id is null 
connect by prior employee_id = manager_id
order by level,manager_id,employee_id;

--rollup, cube

--문 ) 부서별, 직책별 평균월급,사원수를 출력하세요 
select department_id,job_id,count(*), avg(salary) 
from employees
group by department_id, job_id
order by department_id,job_id;

select case grouping( department_id)
when 1 then '모든부서'
else nvl(to_char(department_id),'없음')
	end as "부서",
	
	case grouping(job_id)
	when 1 then '모든직책'
	else nvl(to_char(job_id),'없음')
	end as "직책",
	count(*),
	round(avg(salary),0)
	
from employees
group by rollup(department_id, job_id)
order by department_id,job_id;

--cube
select department_id,job_id,count(*), avg(salary) 
from employees
group by department_id, job_id
order by department_id,job_id;

select case grouping( department_id)
when 1 then '모든부서'
else nvl(to_char(department_id),'없음')
	end as "부서",
	
	case grouping(job_id)
	when 1 then '모든직책'
	else nvl(to_char(job_id),'없음')
	end as "직책",
	count(*),
	round(avg(salary),0)
	
from employees
group by cube(department_id, job_id)
order by department_id,job_id;
