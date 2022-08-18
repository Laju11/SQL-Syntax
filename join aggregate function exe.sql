SELECT 
    d.dept_name, AVG(s.salary) AS Average_Salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
group by dept_name
having average_salary > 60000
order by average_salary desc
;