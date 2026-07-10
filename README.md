## SQL Business Queries Project

## Overview
A set of SQL queries answering real business questions against the Superstore 
retail dataset (~9,994 US retail orders, values in USD), covering aggregation, 
ranking, time-trend analysis, joins across normalised tables, and a window function.

<img width="1309" height="698" alt="Image" src="https://github.com/user-attachments/assets/e28241e1-9520-4409-a605-a6cfab7d721a" />

## Key Findings
- The Western region leads on total sales ($725,457.82); Technology is the top 
  category by revenue ($836,154.03) and also leads on profit margin (17.4%), while 
  Furniture trails significantly at just 2.49% margin — suggesting possible 
  over-discounting worth investigating
- Sales show a clear seasonal pattern across all four years — January/February are 
  consistently the weakest months, while September, November and December spike 
  sharply, pointing to a strong Q4/holiday shopping trend. Overall sales are also 
  trending upward year-over-year, with November 2017 ($118,447.82) the single 
  highest month in the dataset
- Consumer customers make up the majority of the top 10 highest-spending customers, 
  ahead of Corporate and Home Office segments
- Sean Miller is the single highest-spending customer at $25,043.05, confirmed 
  consistently across both a standard ranking query and a RANK() window function

## Tools Used
SQL (SQLite via DB Browser) — GROUP BY, JOIN, RANK() OVER, aggregate functions, 
string-based date parsing

## Files
queries.sql

findings.md

## Data Source
Sample Superstore Dataset via Kaggle
kaggle.com/datasets/vivek468/superstore-dataset-final
