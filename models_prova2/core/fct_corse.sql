select
    corsa_id,
    rider_id,
    cliente_id,
    locale_id
from {{ ref('stg_corse') }}