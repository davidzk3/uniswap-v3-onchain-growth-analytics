Data dictionary V1

Unit of analysis: wallet
Chain: Arbitrum
Protocol: Uniswap v3
Time window: rolling 30 days for adoption and conversion

Gold tables

gold_feature_adoption_daily_30d
- day: day bucket
- swap_wallets: distinct wallets that swapped that day
- lp_wallets: distinct wallets with LP proxy activity that day
- lp_wallet_share: lp_wallets divided by total active wallets that day

gold_wallet_feature_mix_30d
- feature_segment: swap_only, lp_only, both
- wallets: distinct wallets in segment

gold_swap_to_lp_conversion_30d
- swap_first_wallets
- ever_converted, conversion_ever
- converted_7d, conversion_7d
- converted_30d, conversion_30d

gold_retention_by_feature_weekly
- cohort_week: week bucket of first seen
- feature_segment: swap_only, lp_only, both
- week_number: weeks since cohort week
- retained_wallets
- cohort_size
- retention_rate

gold_week1_retention_snapshot
- feature_segment
- retention_rate