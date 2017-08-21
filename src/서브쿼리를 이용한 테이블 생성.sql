select * from EMPLOYEES where job_id = 'FI_ACCOUNT';

--데이터 백업용 쿼리(개인키, 낫널 등 조건은 옮겨지지않음)
create table employees_bak01 as ( select employee_id, first_name, last_name from EMPLOYEES where job_id = 'FI_ACCOUNT');

drop table employees_bak01;
select * from employees_bak01;