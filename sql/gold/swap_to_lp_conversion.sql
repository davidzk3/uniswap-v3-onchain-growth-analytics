with first_seen as (
  select
    wallet,
    first_seen_day,
    first_event_type
  from query_6423048
  where first_event_type = 'swap'
),

lp_events as (
  select
    wallet,
    day as lp_day
  from query_6396381
  where event_type = 'lp_manage'
),

joined as (
  select
    f.wallet,
    f.first_seen_day,
    min(l.lp_day) as first_lp_day
  from first_seen f
  left join lp_events l
    on l.wallet = f.wallet
    and l.lp_day >= f.first_seen_day
  group by 1,2
)

select
  count(*) as swap_first_wallets,
  count(case when first_lp_day is not null then 1 end) as ever_converted,
  cast(count(case when first_lp_day is not null then 1 end) as double) / count(*) as conversion_ever,
  count(case when first_lp_day <= first_seen_day + interval '7' day then 1 end) as converted_7d,
  cast(count(case when first_lp_day <= first_seen_day + interval '7' day then 1 end) as double) / count(*) as conversion_7d,
  count(case when first_lp_day <= first_seen_day + interval '30' day then 1 end) as converted_30d,
  cast(count(case when first_lp_day <= first_seen_day + interval '30' day then 1 end) as double) / count(*) as conversion_30d
from joined
