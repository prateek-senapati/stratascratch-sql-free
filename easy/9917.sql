with avg_salaries as 
(
    select 
        department,
        avg(salary) as avg_salary
    from employee
    group by 1
)

select 
    e.department,
    first_name,
    salary,
    avg_salary as "avg"
from 
    employee e
    left join avg_salaries s
    on e.department = s.department;