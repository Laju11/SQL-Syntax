SELECT 
    de.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'still employed'
        ELSE 'no longer employed'
    END AS current_enployee
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
GROUP BY de.emp_no
LIMIT 100;

SELECT 
    de.emp_no,
    e.first_name,
    e.last_name,
    IF(MAX(de.to_date) > SYSDATE(),
        'still employed',
        'not employed') AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON e.emp_no = de.emp_no
GROUP BY de.emp_no
LIMIT 100;