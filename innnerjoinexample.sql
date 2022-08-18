select a.emp_no, a.dept_no, b.first_name, b.last_name, b.hire_date
from dept_manager a
join employees b on a.emp_no = b.emp_no
order by a.emp_no;