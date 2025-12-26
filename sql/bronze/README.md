Bronze SQL layer



This layer contains raw data extraction queries with minimal transformation.



These queries pull protocol level data directly from Dune base tables and serve as inputs for silver layer logic.



Typical bronze queries

\- Uniswap v3 swaps from dex.trades

\- LP activity proxy from arbitrum.transactions filtered to the position manager contract



These queries are not intended to be used directly in dashboards.



