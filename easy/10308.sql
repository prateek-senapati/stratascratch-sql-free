select 
    abs(max(case when department = 'marketing' then salary end)
    - max(case when department = 'engineering' then salary end))
    as salary_difference
from 
    db_employee e
    inner join -- can be a left join
    db_dept d
    on e.department_id = d.id
        and d.department in ('engineering', 'marketing'); -- can be ignored