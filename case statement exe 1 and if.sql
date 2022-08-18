SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    CASE
        WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'salary raise is higher than $30,000'
        ELSE 'salary raise is below $30,000'
    END AS salary_increase
FROM
    dept_manager dm
        JOIN
    employees e ON e.emp_no = dm.emp_no
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY s.emp_no;

SELECT 
    dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
    IF(MAX(s.salary) - MIN(s.salary) > 30000,
        'salary was raised by $30,000',
        'salary was not raised by $30,000') AS salary_increase
FROM
    employees e
        JOIN
    dept_manager dm ON dm.emp_no = e.emp_no
        JOIN
    salaries s ON dm.emp_no = s.emp_no
GROUP BY dm.emp_no;