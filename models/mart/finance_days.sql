select
    date_date,
    round(sum(revenue),2) as total_revenue,
    round(sum(margin),2) as total_margin,
    count(distinct orders_id) as nb_transactions,
    round(sum(revenue) / count(distinct orders_id), 2) as average_basket
from {{ ref('int_orders_margin') }}
group by date_date
