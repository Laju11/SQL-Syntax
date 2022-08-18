insert into emp_manager
select u.*
from
(SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            MIN(de.dept_no) AS Department_ID,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        de.emp_no <= 10020
    GROUP BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            MIN(de.dept_no) AS Department_ID,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        de.emp_no > 10020
    GROUP BY e.emp_no
    LIMIT 20) AS B 
UNION SELECT 
    C.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            de.dept_no AS Department_ID,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        de.emp_no = 110022
    GROUP BY e.emp_no) AS C 
UNION SELECT 
    D.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            de.dept_no AS Department_ID,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS Manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        de.emp_no = 110039
    GROUP BY e.emp_no) AS D
) as U;

select * from emp_manager;