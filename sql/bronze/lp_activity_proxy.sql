select
  block_time,
  hash as tx_hash,
  "from" as wallet,
  'lp_manage' as event_type,
  'uniswap_v3_position_manager' as contract_name,
  'arbitrum' as blockchain
from arbitrum.transactions
where "to" = 0xC36442b4a4522E871399CD717aBDD847Ab11FE88