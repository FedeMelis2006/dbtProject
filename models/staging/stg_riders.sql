select
    id as rider_id,
    nome as rider_nome
from {{ source('deliveroo', 'riders') }}