-- create employees_dup
drop table if exists employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    Last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

-- duplicate the structure of the 'employees' table
insert into employees_dup
select
e.*
from
employees e
limit 20;

-- check 
SELECT 
    *
FROM
    employees_dup;
    
-- insert a duplicate of the first row
insert into employees_dup values
('10001', '1953-09-02', 'georgi', 'facello', 'M', '1986-06-26');

-- check
select * from employees_dup;