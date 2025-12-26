Assumptions V1

This project is designed for feature level growth insights, not position level LP economics.

LP activity proxy
LP behavior is approximated using transactions to the Uniswap v3 NonfungiblePositionManager contract on Arbitrum.

This captures interaction intent but does not decode exact action types such as mint increase decrease or collect.

Wallet level modeling
All metrics operate at the wallet level.
One wallet may represent multiple users or automated strategies.

Windowing V1
Adoption and conversion use a rolling 30 day window.
Retention is measured using weekly cohorts Weeks 1 to 4.

Interpretation constraints
Conversion and retention metrics are correlation signals.
They should guide product and growth questions, not infer causality.

Known exclusions by design
Pool level liquidity analysis
Position level PnL
Fee APR estimation
Multi chain comparison
Long horizon retention beyond 90 days