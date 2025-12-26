\# Uniswap v3 onchain growth analytics (Arbitrum)



A V1 analytics build that measures feature adoption, swap to LP conversion, and short horizon retention for Uniswap v3 on Arbitrum.



This repo is structured like a small analytics product:

dashboards for the narrative

docs for definitions and assumptions

models for staged transformations (bronze, silver, gold)



\## What this answers



Feature adoption

\- How many wallets swap vs provide liquidity over time

\- What share of active wallets are LPs



Conversion

\- Of swap first wallets, how many become LPs within 7 days, 30 days, and ever

\- How many LP activations happen in the last 30 days



Retention

\- Do wallets that use both swap and LP retain better than swap only or LP only

\- Week 1 retention comparison across segments



\## Scope (V1)



Protocol: Uniswap  

Version: v3  

Chain: Arbitrum  

Unit: wallet  

Granularity: daily activity and weekly cohorts  



Time scope (V1)

\- Adoption and conversion metrics use a rolling 30 day window

\- Retention uses weekly cohorts with short horizon measurement (Weeks 1 to 4)



These constraints are deliberate to keep queries fast, reproducible, and focused on early signal.



\## Data sources (Dune)



Swaps

\- dex.trades filtered to arbitrum, uniswap, version 3



LP activity proxy

\- arbitrum.transactions filtered to the Uniswap v3 NonfungiblePositionManager contract

\- Contract: 0xC36442b4a4522E871399CD717aBDD847Ab11FE88



\## Dashboard artifacts



See the dashboards in the dashboards folder:

\- dashboards/acquisition.md

\- dashboards/activation.md

\- dashboards/retention.md



Screenshots of the V1 dashboard are stored in:

\- dashboards/dune\_screenshots



\## Definitions and assumptions



\- docs/metrics.md

\- docs/methodology.md

\- docs/assumptions.md



\## Explicitly out of scope (V1)



These are intentionally excluded from V1 and reserved for a more robust V2:



\- Pool level LP analysis

\- True mint burn collect decoding

\- Position level PnL and fee attribution

\- Fee APR estimation

\- Multi chain comparison

\- Parameterized dashboard filters

\- Long horizon retention (90 days and beyond)



\## Planned V2 extensions



Time

\- Extend windows to 60, 90, and 180 days

\- Multi cohort retention comparison and seasonality checks



Depth

\- Decode LP lifecycle actions (mint, increase, decrease, collect)

\- Position aware retention and re activation

\- Fee collection behavior and realized yield proxies



Breadth

\- Cross chain comparisons across Uniswap v3 deployments



