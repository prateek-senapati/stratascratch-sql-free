select 
    activity_date,
    pe_description
from los_angeles_restaurant_health_inspections
where lower(facility_name) = 'street churros'
    and score < 95;