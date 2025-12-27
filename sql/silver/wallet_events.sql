with params as (
  select
    now() - interval '30' day as start_time
),

swaps as (
  select
    t.block_time,
    date_trunc('day', t.block_time) as day,
    date_trunc('week', t.block_time) as week,
    t.tx_hash,
    t.taker as wallet,
    'swap' as event_type,
    t.blockchain,
    cast(t.amount_usd as double) as amount_usd,
    t.token_bought_symbol as token_in,
    t.token_sold_symbol as token_out,
    cast(null as varchar) as contract_name,
    'dex.trades' as source_table
  from dex.trades t
  join params p on t.block_time >= p.start_time
  where t.blockchain = 'arbitrum'
    and t.project = 'uniswap'
    and t.version = '3'
),

lp as (
  select
    tx.block_time,
    date_trunc('day', tx.block_time) as day,
    date_trunc('week', tx.block_time) as week,
    tx.hash as tx_hash,
    tx."from" as wallet,
    'lp_manage' as event_type,
    'arbitrum' as blockchain,
    cast(null as double) as amount_usd,
    cast(null as varchar) as token_in,
    cast(null as varchar) as token_out,
    'uniswap_v3_position_manager' as contract_name,
    'arbitrum.transactions' as source_table
  from arbitrum.transactions tx
  join params p on tx.block_time >= p.start_time
  where tx."to" = 0xC36442b4a4522E871399CD717aBDD847Ab11FE88
)

select * from swaps
union all
select * from lp