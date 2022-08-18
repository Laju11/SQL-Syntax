select 
m.emp_no, m.first_name, m.last_name, d.dept_no, d.from_date
from employees m
left join
dept_manager d on m.emp_no = d.emp_no
where m.last_name = 'markovitch'
order by d.dept_no desc;