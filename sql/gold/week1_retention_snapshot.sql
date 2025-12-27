with first_seen as (
  select
    wallet,
    first_seen_week
  from query_6423048
),

activity as (
  select distinct
    wallet,
    week
  from query_6396381
),

segments as (
  select
    wallet,
    feature_segment
  from query_6423674
),

joined as (
  select
    f.wallet,
    f.first_seen_week as cohort_week,
    s.feature_segment,
    date_diff('week', f.first_seen_week, a.week) as week_number
  from first_seen f
  join activity a
    on a.wallet = f.wallet
  join segments s
    on s.wallet = f.wallet
where date_diff('week', f.first_seen_week, a.week) between 1 and 4
  and f.first_seen_week <= date_add('week', -2, date_trunc('week', now()))
  and f.first_seen_week = (
    select max(first_seen_week)
    from first_seen
    where first_seen_week <= date_add('week', -2, date_trunc('week', now()))
  )
),

retained as (
  select
    cohort_week,
    feature_segment,
    week_number,
    count(distinct wallet) as retained_wallets
  from joined
  group by 1,2,3
),

cohort_sizes as (
  select
    f.first_seen_week as cohort_week,
    s.feature_segment,
    count(*) as cohort_size
  from first_seen f
  join segments s
    on f.wallet = s.wallet
  group by 1,2
)

select
  r.cohort_week,
  r.feature_segment,
  r.week_number,
  r.retained_wallets,
  c.cohort_size,
  cast(r.retained_wallets as double) / c.cohort_size as retention_rate
from retained r
join cohort_sizes c
  on r.cohort_week = c.cohort_week
 and r.feature_segment = c.feature_segment
order by r.cohort_week desc, r.feature_segment, r.week_number
