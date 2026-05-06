select
    o.id_ordine,
    o.id_utente,
    o.id_piano,
    o.id_coupon,
    o.id_metodo,
    o.data_ordine,
    t.data_transazione,
    t.importo,
    a.iniziato_il,
    a.finito_il,
    r.rinnovo_attivo
from {{ ref('stg_ordini') }} as o
left join {{ ref('stg_transazioni') }} as t on o.id_ordine = t.id_ordine
left join {{ ref('stg_abbonamenti') }} as a on o.id_ordine = a.id_ordine
left join {{ ref('stg_rinnovi') }} as r on o.id_ordine = r.id_ordine