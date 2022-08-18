select
e.first_name, e.last_name, e.hire_date, t.title
from
employees e
join titles t on e.emp_no = t.emp_no
where first_name = 'margareta'
and last_name = 'markovitch';