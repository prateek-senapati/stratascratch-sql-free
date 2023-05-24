select distinct home_library_code
from library_usage
where notice_preference_definition = 'email'
    and provided_email_address is false
    and circulation_active_year = 2016;