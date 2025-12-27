with first_seen as (
  select *
  from query_6423048
),

activity as (
  select
    wallet,
    week
  from (
    select
      wallet,
      week
    from query_6396381
  )
  group by 1,2
),

joined as (
  select
    f.wallet,
    f.first_seen_week as cohort_week,
    a.week as activity_week,
    date_diff('week', f.first_seen_week, a.week) as week_number
  from first_seen f
  join activity a
    on f.wallet = a.wallet
  where date_diff('week', f.first_seen_week, a.week) between 0 and 4
),

retention as (
  select
    cohort_week,
    week_number,
    count(distinct wallet) as retained_wallets
  from joined
  group by 1,2
),

cohort_sizes as (
  select
    first_seen_week as cohort_week,
    count(*) as cohort_size
  from first_seen
  group by 1
)

select
  r.cohort_week,
  r.week_number,
  r.retained_wallets,
  c.cohort_size,
  cast(r.retained_wallets as double) / c.cohort_size as retention_rate
from retention r
join cohort_sizes c
  on r.cohort_week = c.cohort_week
order by r.cohort_week desc, r.week_number asc
