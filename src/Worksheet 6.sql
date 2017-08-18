--연습문제 집계
--1번
select max(salary) as "최고임금",min(salary)as"최저임금",max(salary) - min(salary)as "최고임금 - 최저임금" from employees;
--2번
select max(hire_date) from employees;
--3번
select avg(salary)"평균임금", max(salary)"최고임금", min(salary)"최저임금", department_id from employees group by department_id order by "평균임금","최고임금","최저임금" desc;
--4번
select avg(salary)"평균임금", max(salary)"최고임금", min(salary)"최저임금", job_id from employees group by job_id order by "평균임금","최고임금","최저임금" desc;
--5번
select to_char(min(hire_date),'yyyy"년"mm"월"dd"일"') "입사일" from employees;
--6번
select avg(salary)"평균임금", min(salary)"최저임금",avg(salary)-min(salary), department_id from employees 
having avg(salary)-min(salary) < 2000 group by department_id;