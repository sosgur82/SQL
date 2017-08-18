--앞에서 5개 뽑는 경우 (top-k)
select rownum, employee_id, salary
from(select employee_id, salary
from employees
where hire_date like '06%'
order by salary desc)
where rownum <= 5;

select * 
from(select rownum as rn, employee_id, salary
from (select employee_id, salary from employees where hire_date like '06%' order by salary desc))
where 6 <= rn and rn <=10;