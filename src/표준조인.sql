-- ansi join sql 문(1999 syntex)

-- natural join 테이블들의 칼럼이름이 동일한 경우
select count(*) from employees
natural join departments;

select count(*)
from employees
join departments
using (department_id);

select count(*)
from employees a
join departments b
on a.DEPARTMENT_ID=b.DEPARTMENT_ID
where a.salary > 5000;



