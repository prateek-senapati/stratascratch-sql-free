select 
    games,
    count(distinct id) as athletes_count
from olympics_athletes_events
group by 1
order by 2 desc
limit 1;

-- with window function
select 
    games,
    athlete_count
from
    (
        select
            games,
            count(distinct id) as athlete_count,
            dense_rank() over(order by count(distinct id) desc) as games_rank
        from olympics_athletes_events
        group by 1
    ) sub
where games_rank = 1;