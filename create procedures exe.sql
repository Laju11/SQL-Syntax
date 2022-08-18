drop procedure if exists  average_salary;
delimiter //
create procedure average_salary()
begin
select avg(salary) as Average_salary
from 
salaries;
end//
delimiter ;