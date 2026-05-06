select
    id as locale_id,
    nome as locale_nome,
    indirizzo
from {{ source('deliveroo', 'locali') }}