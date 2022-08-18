use employees;
drop function if exists f_emp_info;

delimiter //
create function f_emp_info(p_first_name varchar(50), p_Last_name varchar(50)) returns varchar(50)
deterministic no sql reads sql data
begin
declare v_emp_info varchar(50);
select
e.emp_no
into v_emp_info
from employees e
where e.first_name =  P_first_name and e.last_name = P_last_name;
return v_emp_info;
end//
delimiter ;