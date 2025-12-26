Methodology V1

Goal
Measure how feature usage depth relates to adoption conversion and short horizon retention.

Feature events

Swap event
A wallet is considered swap active if it performs at least one Uniswap v3 swap during the analysis window.

LP event proxy
A wallet is considered LP active if it sends a transaction to the Uniswap v3 NonfungiblePositionManager contract.

Segmentation

Feature segment 30 day window
swap_only swaps but no LP interaction
lp_only LP interaction but no swaps
both both swap and LP interaction

Adoption metrics
Daily swap wallets
Daily LP wallets
LP wallet share

Conversion metrics
Swap first wallets are wallets whose first observed feature event is a swap.

Conversion is measured as whether a swap first wallet performs an LP event within
7 days
30 days
ever

Retention metrics
Weekly cohorts are defined by first seen week.
Retention is measured as activity in week N after first seen, Weeks 1 to 4.

Retention is computed separately for each feature segment.
