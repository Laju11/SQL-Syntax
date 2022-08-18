SELECT 
    emp_no,
    first_name,
    Last_name,
    CASE
        WHEN gender = 'm' THEN 'Male'
        ELSE 'female'
    END AS gender
FROM
    employees
;

SELECT 
    emp_no,
    first_name,
    Last_name,
    CASE gender
        WHEN  'm' THEN 'Male'
        ELSE 'female'
    END AS gender
FROM
    employees
;

SELECT 
    e.emp_no,
    e.first_name,
    e.Last_name,
    CASE
        WHEN dm.emp_no is not null  THEN 'manager'
        ELSE 'employee'
    END AS is_manager
FROM
    employees e
    left join
    dept_manager dm on dm.emp_no = e.emp_no
    where
    e.emp_no > 109990;
;

select
dm.emp_no,
e.first_name,
e.last_name,
max(s.salary) - min(s.salary) as salary_difference,
case
when max(s.salary) - min(s.salary) > 30000 then 'salary was raised by more than $30,000'
when max(s.salary) - min(s.salary) between 20000 and 30000 then 'salary was raised by more than $20,000 but less than $30,000'
else 'salary was raised by less than $20,000'
end as salary_increase
from dept_manager dm
join
employees e on dm.emp_no = e.emp_no
join
salaries s on s.emp_no =dm.emp_no
group by s.emp_no;