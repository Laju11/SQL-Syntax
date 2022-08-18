select
e.gender as gender, count(d.emp_no) as frequency
from
employees e
join
dept_manager d on e.emp_no = d.emp_no
group by gender
;

select
e.gender as gender, count(e.gender) as frequency
from
employees e
join
dept_manager d on e.emp_no = d.emp_no
group by gender
;