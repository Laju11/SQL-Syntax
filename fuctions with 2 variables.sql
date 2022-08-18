use employees;
drop function if exists f.emp_info1;

delimiter //
create function emp_info1(P_first_name varchar(50), p_last_name varchar(50)) returns decimal(10,2)
deterministic no sql reads sql data
begin
declare v_max_from_date date;
declare v_salary decimal(10,2);
select
max(from_date)
into v_max_from_date
from
employees e
join
salaries s on e.emp_no = s.emp_no
where
e.first_name = P_first_name and e.last_name = p_last_name;
select
s.salary
into
v_salary
from employees e
join salaries s on e.emp_no = s.emp_no
where
e.first_name = p_first_name and
e.last_name = p_last_name and
s.from_date = v_max_from_date;
return v_salary;
end//
delimiter;