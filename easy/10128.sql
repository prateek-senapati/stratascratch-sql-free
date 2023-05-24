select count(*) as n_movies_by_abi -- count(distinct movie) is more apt in case of multiple nominations for the same movie
from oscar_nominees
where lower(nominee) = 'abigail breslin';