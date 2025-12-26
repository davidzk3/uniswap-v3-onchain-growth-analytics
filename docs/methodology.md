\# Methodology (V1)



\## Goal



Measure how feature usage depth relates to:

adoption

swap to LP conversion

short horizon retention



\## Feature events



Swap event

\- A wallet is counted as swap active if it performs at least one Uniswap v3 swap in the window



LP event (proxy)

\- A wallet is counted as LP active if it sends a transaction to the NonfungiblePositionManager contract



\## Segmentation



Feature segment (30 day window)

\- swap\_only: swap active but not LP active

\- lp\_only: LP active but not swap active

\- both: swap active and LP active

\- all: any active wallet



\## Adoption metrics



Daily feature usage

\- swap\_wallets per day

\- lp\_wallets per day

\- lp\_wallet\_share per day



\## Conversion metrics



Swap to LP conversion

\- Define swap first wallets (first observed event is a swap)

\- Measure whether they perform an LP event within:

&nbsp; 7 days

&nbsp; 30 days

&nbsp; ever



Report:

\- converted counts

\- conversion rates



\## Retention metrics



Weekly cohorts

\- first\_seen\_week is the cohort week

\- retention is measured as activity in week N after first seen (Weeks 1 to 4)



Retention by feature depth

\- retention rates are computed separately for swap\_only, lp\_only, both, and all

\- A Week 1 retention snapshot is used for comparison



