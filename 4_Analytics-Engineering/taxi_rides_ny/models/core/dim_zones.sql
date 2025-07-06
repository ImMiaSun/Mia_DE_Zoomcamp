{{ config(materialized='table') }} -- create a permanent physical table (as opposed to a view or ephemeral model)

select 
    locationid, 
    borough, 
    zone, 
    replace(service_zone,'Boro','Green') as service_zone -- Changes all occurrences of 'Boro' to 'Green'
from {{ ref('taxi_zone_lookup') }}