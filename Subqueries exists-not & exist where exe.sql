SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            titles t
        WHERE
            t.emp_no = e.emp_no
            and title = 'assistant engineer');
## Select all the entire information for all employees whose job title is assistant engineer