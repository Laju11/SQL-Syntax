select
year(d.from_date) as Calender_year,
e.gender,
count(e.emp_no) as number_of_employees
from
t_employees e
join
t_dept_emp d on e.emp_no = d.emp_no
group by calender_year, gender 
having calender_year >= 1990
order by calender_year 
;

-- a scripts that provides a breakdown between the male and employees
-- working in the company each year starting from 1990