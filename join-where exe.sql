SELECT 
    d.emp_no, d.dept_no, e.first_name, e.last_name, e.hire_date
FROM
    dept_manager d
        JOIN
    employees e ON d.emp_no = e.emp_no
ORDER BY d.emp_no;

SELECT 
    d.emp_no, d.emp_no, e.first_name, e.last_name, e.hire_date
FROM
    dept_manager d,
    employees e
WHERE
    d.emp_no = e.emp_no
ORDER BY d.emp_no;