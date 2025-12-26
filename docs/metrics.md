Metric definitions V1

swap_wallets
Distinct wallets that executed at least one Uniswap v3 swap in a day.

lp_wallets
Distinct wallets that interacted with the Uniswap v3 position manager contract in a day.

lp_wallet_share
Share of active wallets that are LP active as defined by the query output.

wallet_feature_mix_30d
Count of distinct wallets in the last 30 days classified as swap_only lp_only or both.

converted_7d 30d ever
Count of swap first wallets that later performed an LP event within the specified window.

conversion_7d 30d ever
Converted wallets divided by total swap first wallets.

LP activations 30 days
Count of wallets that performed an LP related action in the last 30 days.

cohort_week
The first calendar week in which a wallet appears in the dataset.

week_number
Weeks since cohort_week.

retention_rate
Retained wallets divided by cohort size for the given week and feature segment.
