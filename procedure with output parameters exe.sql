use employees;
drop procedure if exists emp_info;

delimiter $$
create procedure emp_info(in p_first_name varchar(255), in p_last_name varchar(255), out P_emp_no integer)
begin
select e.emp_no
into p_emp_no
from employees e
where 
e.first_name = p_first_name and e.last_name = p_last_name
;
end $$
delimiter;