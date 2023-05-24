select 
    location,
    avg(popularity) as avg_popularity
from 
    facebook_employees e
    left join
    facebook_hack_survey h
    on e.id = h.employee_id
group by 1;