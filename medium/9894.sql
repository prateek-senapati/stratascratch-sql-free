select 
    first_name as employee_name, 
    e.salary as employee_salary
from 
    (
        select id, first_name, salary, manager_id
        from employee
    ) e
    inner join
    (
        select id, salary
        from employee
    ) m
    on e.manager_id = m.id
        and e.salary > m.salary;