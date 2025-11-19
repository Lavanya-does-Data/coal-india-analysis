Coal India Stock Analysis — SQL, Excel, Power BI

This project analyzes Coal India’s daily stock data using SQL, Excel, and Power BI. It covers data cleaning, exploratory analysis, trend insights, and dashboard creation. The goal is to show strong hands-on skills across all three tools while working with real-world trading data.

Dataset
The dataset contains 526 rows of daily trading data for Coal India. Columns include:

date

symbol

pre_close

open

high

low

close

volume

turnover_lacs

no_of_trades

deliv_volume

deliv_percent

Source: NSE / Publicly available financial records.

SQL Analysis
All analysis starts by importing the CSV into PostgreSQL.

Techniques Used

Table creation

COPY import

Data type correction

Aggregations

Window functions

Trend calculations

Key Queries

Daily close price trend

Highest and lowest close

Average delivery percentage

Monthly average close

Monthly total volume

Highest volume days

Delivery vs price correlation

SQL file: sql/coal_india_queries.sql

Excel Analysis
Excel is used for exploratory analysis and pivot-based insights.

Steps Performed

Data cleaning

Sorting and filtering

Pivot tables for:

Monthly close averages

Monthly volume

Delivery % patterns

High/low summaries

Line charts for:

Close price movement

Delivery % trend

Bar charts for monthly totals

Slicers for interactive filters

Excel file: excel/CoalIndia_ExcelAnalysis.xlsx

Power BI Dashboard
Power BI ties the SQL and Excel work together into a consolidated, visual report.

DAX Measures

Total Volume

Average Close

Average Delivery %

Year column

Month column

Visuals Included

KPI cards

Close price trend line

Delivery % trend line

Monthly volume bar chart

Summary table

Filters for year, month, delivery %, and volume

Power BI file: powerbi/CoalIndia.pbix

PDF export of dashboard: reports/PowerBI_Report_CoalIndia.pdf

Skills Demonstrated
SQL querying and data modeling

Excel pivot analysis

Power BI dashboard design

DAX calculations

Data cleaning

Time-series analysis

How to Reproduce
Import CSV into PostgreSQL

Run the SQL queries

Perform analysis in Excel using pivot tables

Load the same file into Power BI

Create measures and build visuals

Export final report to PDF
