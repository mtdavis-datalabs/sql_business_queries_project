# SQL Business Queries — Findings

## Query 1: Sales by Region
**Business question:** Which region generates the most revenue?
**Finding:** The Western region leads with $725,457.82 in total sales. 

## Query 2: Sales by Category
**Business question:** Which product category generates the most revenue?
**Finding:** The Technology category leads with $836,154.03 in total sales. 

## Query 3: Top 10 Customers by Revenue
**Business question:** Who are the highest-spending customers?
**Finding:** Sean Miller is the top spender at $25,043.05.

## Query 4: Month-over-Month Sales Trend
**Business question:** How does revenue change over time?
**Finding:** Sales show a strong, consistent seasonal pattern across all four years — 
January and February are reliably the weakest months, while September and November 
show sharp spikes, with December also remaining strong. This points to a clear 
holiday/Q4 shopping pattern. Year-over-year, overall sales are also trending upward: 
2017 was the strongest year, with November 2017 (£118,447.82) the single highest month in the dataset — nearly double November 2014's figure. This combination of 
seasonality and overall growth suggests inventory and staffing should scale up 
ahead of Q3/Q4 each year, particularly by 2017-era volumes going forward.

## Query 5: Profit Margin by Category
**Business question:** Which product category is most profitable relative to its sales?
**Finding:** Technology leads on profit margin (17.4%), followed closely by Office 
Supplies (17.04%). Furniture trails significantly at 2.49%, suggesting a possible 
over-discounting issue worth investigating.

## Query 6-7: Top Customers by Spend, with Segment (JOIN)
**Business question:** Which customer segment dominates the highest-spending customers?
**Finding:** Consumer customers make up the majority of the top 10 highest-spending 
customers, suggesting that Corporate accounts drive disproportionate revenue relative to Corporate or Home Office segments. This is worth considering for account management priority.

## Query 8: Customer Spend Ranking (Window Function)
**Business question:** Who are the highest-value customers, ranked?
**Finding:** Sean Miller ranks #1 with $25,043.05 total spend, consistent with 
the earlier top-10 query — confirms the RANK() window function correctly identifies 
top performers without manual sorting.