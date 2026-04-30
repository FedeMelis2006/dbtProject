select
    f.corsa_id,
    c.cliente_nome,
    c.email as cliente_email,
    r.rider_nome,
    l.locale_nome,
    l.indirizzo as locale_indirizzo
from {{ ref('fct_corse') }} as f
left join {{ ref('dim_clienti') }} as c 
    on f.cliente_id = c.cliente_id
left join {{ ref('dim_riders') }} as r 
    on f.rider_id = r.rider_id
left join {{ ref('dim_locali') }} as l 
    on f.locale_id = l.locale_id