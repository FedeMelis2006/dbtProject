select
    id as corsa_id,
    id_rider as rider_id,
    id_cliente as cliente_id,
    id_locale as locale_id
from {{ source('deliveroo', 'corse') }}