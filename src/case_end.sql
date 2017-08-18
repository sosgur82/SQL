--case ~ end

select job_id from jobs;

--AC_account => salary + salary * 0.5
--AC_MGR     => salary + salary * 0.3
--AD_VP      => salary + salary * 0.2

select employee_id,salary,job_id, 
	case job_id 
		when 'AC_ACCOUNT' THEN salary + salary * 0.5
		when 'AC_MGR' THEN salary + salary * 0.3
		when 'AC_VP' THEN salary + salary * 0.2
		else salary END as "이번달 월급" from employees;
	
--decord 변환
select employee_id,salary,job_id, 
	decode( job_id, 'AC_ACCOUNT',  salary + salary * 0.5,
		'AC_MGR' , salary + salary * 0.3,
		'AC_VP', salary + salary * 0.2,
		salary )as "이번달 월급" from employees;