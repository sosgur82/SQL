--subquery

--문) 이름이 (first_name)이 lex이 사원보다 많은 월급은 많은 직원들의 이름과 월급

select salary from employees where first_name = 'Lex';

select first_name,salary
from employees
where salary > 17000;

--서브쿼리 변환
select first_name,salary
from employees
where salary > (select salary from employees where first_name = 'Lex');

--from절로가면 하나의 가상테이블이됨 (세터조인)
select a.first_name,b.salary
from employees a,(select salary from employees where first_name = 'Lex') b
where a.salary > b.salary;

--where로 들어갈때 (single row subquery)
select first_name,salary
from employees
where salary > (select salary from employees where first_name = 'Lex');

select first_name,salary
from employees
where salary = (select salary from employees where first_name = 'Lex');

select first_name,salary
from employees
where salary < (select salary from employees where first_name = 'Lex');

select first_name,salary
from employees
where salary <> (select salary from employees where first_name = 'Lex');

--전체 직원의 평균 월급보다 많이 받고있는 직원들의 이름, 월급 출력
select first_name,salary
from employees
where salary > (select avg(salary) from employees ) order by salary ;

--multi row subquery

--문) job_id가 'IT_prog'인 직원이 받는 월급보다 많이 받는 직원의 이름과 월급 
select salary
from employees
where job_id='IT_PROG';

select first_name,salary
from employees
where salary> all (select salary
from employees
where job_id='IT_PROG');

--문) job_id가 'IT_prog'인 직원이 받는 월급보다 같은 직원의 이름과 월급

select first_name,salary
from employees
where salary in (select salary
from employees
where job_id='IT_PROG');

--다른방법
select first_name,salary
from employees
where salary =any (select salary
from employees
where job_id='IT_PROG');

