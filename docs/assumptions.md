\# Assumptions (V1)



This project is designed for feature level growth insights, not position level LP economics.



\## LP activity proxy



LP behavior is approximated using transactions to the Uniswap v3 NonfungiblePositionManager contract on Arbitrum:

0xE05783fC3493898e3f48c4B885296321b075FE88



This captures interaction intent (minting or managing positions) but does not decode the exact action type.



\## Wallet level modeling



All metrics operate at the wallet level.

This means one wallet can represent multiple users (custodians) or one user can represent multiple wallets.



\## Windowing (V1)



Adoption and conversion use a rolling 30 day window for performance and reproducibility.

Retention is short horizon weekly cohorts (Weeks 1 to 4 only).



\## Interpretation constraints



Conversion and retention are correlation signals.

They should be used to guide product and GTM questions, not to infer causality.



\## Known exclusions (by design)



Pool level liquidity distribution

Position level PnL

Fee APR estimation

Mint burn collect decoding

Multi chain comparison

Long horizon retention beyond 90 days



