Models



This directory represents the logical transformation layers used in the analysis.



Although all queries are executed directly on Dune, they are designed conceptually using a bronze silver gold modeling approach to mirror production grade analytics workflows.



The goal is to separate raw protocol events from cleaned behavioral data and final analytical outputs.



Bronze

Raw protocol level data extracted from Dune tables with minimal filtering.



Silver

Cleaned wallet level behavioral tables derived from bronze inputs.



Gold

Aggregated and analysis ready tables used directly in dashboards and metrics.



