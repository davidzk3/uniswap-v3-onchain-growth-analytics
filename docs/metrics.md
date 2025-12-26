\# Metric definitions (V1)



\## Feature adoption



swap\_wallets

Distinct wallets that executed at least one Uniswap v3 swap in a day.



lp\_wallets

Distinct wallets that interacted with the NonfungiblePositionManager contract in a day.



lp\_wallet\_share

Share of active wallets that are LP active, as defined by the query output.



\## Feature mix



wallet\_feature\_mix\_30d

Count of distinct wallets in the last 30 days classified into:

swap\_only

lp\_only

both



\## Conversion



swap\_first\_wallets

Wallets whose first observed feature event is a swap.



converted\_7d

Swap first wallets that performed an LP event within 7 days.



conversion\_7d

converted\_7d divided by swap\_first\_wallets.



converted\_30d

Swap first wallets that performed an LP event within 30 days.



conversion\_30d

converted\_30d divided by swap\_first\_wallets.



converted\_ever

Swap first wallets that performed an LP event at any time after the first swap.



conversion\_ever

converted\_ever divided by swap\_first\_wallets.



LP activations (30 days)

Count of wallets that performed an LP event in the last 30 days.



\## Retention



cohort\_week

The first seen week for a wallet.



week\_number

Weeks since cohort\_week.



retained\_wallets

Distinct wallets active in week\_number.



cohort\_size

Distinct wallets in the cohort.



retention\_rate

retained\_wallets divided by cohort\_size.



