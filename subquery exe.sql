select 
*
from  
dept_manager
where
emp_no in (select emp_no 
from 
employees
where hire_date between '1990-01-01' and '1995-01-01');
## extract the information about all deprtment managers who were hired between the 
## 1st of january 1990 and 1st of january 1995

select A.* from 
(select * from employees
where hire_date between '1990-01-01' and '1995-01-01') as A
where emp_no in (select emp_no from dept_manager);