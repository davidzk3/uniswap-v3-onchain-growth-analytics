Uniswap v3 onchain growth analytics (Arbitrum)

A V1 analytics build that measures feature adoption, swap to LP conversion, and short horizon retention for Uniswap v3 on Arbitrum.

This repository is structured as a small analytics product rather than a one off dashboard.

dashboards contain the narrative and insights
docs contain definitions, methodology, and assumptions
models represent staged transformations using a bronze silver gold mental model

How to read this dashboard

This dashboard is designed to be read top to bottom, following a simple product growth funnel.

The core question it answers is:

How does feature usage depth (swaps vs LP activity) affect adoption, conversion, and retention?

Acquisition who is active
The acquisition section shows daily active wallets by feature usage.

Swap wallets represent wallets that interact with Uniswap v3 purely as traders
LP wallets represent wallets that interact with the Uniswap v3 position manager contract

This establishes the baseline population and relative feature usage over time.

Activation who converts
The activation section measures conversion from swapping to LP activity.

It answers:
How many swap first wallets later become LPs
What share convert within 7 days, 30 days, or ever
How many LP activations occurred in the last 30 days

These metrics quantify how effectively the protocol converts traders into liquidity providers.

Retention who stays
The retention section compares weekly retention across feature segments.

swap_only
lp_only
both

Two complementary views are provided:
A retention trend line showing decay across weeks since first seen
A Week 1 retention snapshot comparing segments side by side

This highlights whether deeper feature engagement correlates with stronger early retention.

Interpretation guidance
This dashboard is directional, not predictive.

It is intended to:
Compare relative behavior across feature segments
Identify structural differences in conversion and retention
Support product and growth discussions

It is not intended to:
Estimate LP profitability
Attribute fees or APR
Analyze individual positions or pools

What this answers

Feature adoption
How many wallets swap vs provide liquidity over time
What share of active wallets are LPs

Conversion
Of swap first wallets, how many become LPs within 7 days, 30 days, or ever
How many LP activations occurred in the last 30 days

Retention
Whether wallets that use both swap and LP retain better than single feature wallets
Week 1 retention comparison across feature segments

Scope V1

Protocol Uniswap
Version v3
Chain Arbitrum
Unit of analysis wallet
Granularity daily activity and weekly cohorts

Time scope V1
Adoption and conversion metrics use a rolling 30 day window
Retention uses weekly cohorts measured over a short horizon Weeks 1 to 4

These constraints are deliberate to keep queries fast, reproducible, and focused on early signal rather than long term noise.

Data sources Dune

Swaps
dex.trades filtered to blockchain arbitrum project uniswap version 3

LP activity proxy
arbitrum.transactions filtered to the Uniswap v3 NonfungiblePositionManager contract

Contract address
0xE05783fC3493898e3f48c4B885296321b075FE88

Dashboard artifacts

Narrative dashboards
dashboards/acquisition.md
dashboards/activation.md
dashboards/retention.md

Screenshots of the V1 dashboard are stored in
dashboards/dune_screenshots

Definitions and assumptions

docs/metrics.md
docs/methodology.md
docs/assumptions.md

Explicitly out of scope V1

The following are intentionally excluded from V1 and reserved for a more robust V2.

Pool level LP analysis
True mint burn collect decoding
Position level PnL and fee attribution
Fee APR estimation
Multi chain comparison
Parameterized dashboard filters
Long horizon retention 90 days and beyond

These exclusions are deliberate design choices, not data limitations.

Planned V2 extensions

Time
Extend windows to 60, 90, and 180 days
Multi cohort retention comparisons and seasonality checks

Depth
Decode LP lifecycle actions mint increase decrease collect
Position aware retention and re activation
Fee collection behavior and realized yield proxies

Breadth
Cross chain comparisons across Uniswap v3 deployments

Repository structure

dashboards
acquisition.md
activation.md
retention.md
dune_screenshots

docs
assumptions.md
methodology.md
metrics.md

models
bronze
silver
gold