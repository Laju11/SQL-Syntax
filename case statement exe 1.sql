select
e.first_name,
e.last_name,
e.emp_no,
case
when dm.emp_no is not null then 'manager'
else 'employee'
end as is_manager
from employees e
left join
dept_manager dm on dm.emp_no = e.emp_no
where e.emp_no >109990;