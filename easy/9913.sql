select 
    first_name,
    order_date,
    order_details,
    total_order_cost
from 
    customers c
    inner join -- can use left join
    orders o
    on c.id = o.cust_id
        and c.first_name in ('Jill', 'Eva') -- can use WHERE condition
order by c.id;