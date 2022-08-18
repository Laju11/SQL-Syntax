SELECT 
    A.*
FROM
	## select employees details to be included on the table
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS Deppartment_code,
            ## selecting manager for subset A done 1st
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = '110022') AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS Deppartment_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = '110039') AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no >= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    ## we used limit 20 since there are only 20 employees from 10021 to 10040
    limit 20) AS B;
## Assign employee number 110022 as a manager to al employees from 10001 to 10020, and
## employee number 110039 as manager to all employees from 10021 to 10040