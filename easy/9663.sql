-- solution 1
select 
    company,
    continent
from forbes_global_2010_2014
where sector = 'Financials'
order by profits desc
limit 1;

-- solution 2
with cte as
(
    select
        company,
        continent,
        dense_rank() over(order by profits desc) as profit_rank
    from forbes_global_2010_2014
    where lower(sector) = 'financials'
)

select 
    company,
    continent
from cte
where profit_rank = 1;