SELECT 
    e.gender, AVG(s.salary) AS Average_salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;