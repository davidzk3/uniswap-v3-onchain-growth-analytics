Dune SQL queries



This directory contains the Dune SQL queries used to build the analytics layers and dashboards for this project.



Queries are organized using a bronze silver gold structure to mirror the logical modeling approach described in the models directory.



All queries are executed on Dune Analytics and are referenced by query ID in the live dashboard.



Purpose of this directory

\- Make the analysis reproducible

\- Show clear separation between raw data extraction and analytical outputs

\- Allow readers to inspect logic without relying on the Dune UI



Note

These queries are written for Dune SQL (Trino dialect).



