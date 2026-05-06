select
    f.*,
    u.nome,
    u.cognome,
    p.nome_piano,
    p.durata,
    c.codice as coupon_codice,
    m.nome_metodo
from {{ ref('fct_ordini') }} as f
left join {{ ref('dim_utenti') }} as u on f.id_utente = u.id_utente
left join {{ ref('dim_piani') }} as p on f.id_piano = p.id_piano
left join {{ ref('dim_coupon') }} as c on f.id_coupon = c.id_coupon
left join {{ ref('dim_metodi') }} as m on f.id_metodo = m.id_metodo