with by_wallet as (
  select
    wallet,
    max(case when event_type = 'swap' then 1 else 0 end) as did_swap,
    max(case when event_type = 'lp_manage' then 1 else 0 end) as did_lp
  from query_6396381
  group by 1
)

select
  case
    when did_swap = 1 and did_lp = 1 then 'both'
    when did_swap = 1 and did_lp = 0 then 'swap_only'
    when did_swap = 0 and did_lp = 1 then 'lp_only'
    else 'none'
  end as segment,
  count(*) as wallets
from by_wallet
group by 1
order by wallets desc
