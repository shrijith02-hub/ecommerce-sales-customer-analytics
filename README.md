# E-commerce Sales & Customer Analytics

An end-to-end data analytics project exploring sales performance, customer behavior, product categories, delivery operations, and customer satisfaction using the Brazilian E-Commerce Public Dataset by Olist.

## Project Overview

The objective of this project is to analyze e-commerce business performance and identify actionable insights through SQL analysis and interactive Power BI dashboards.

The project uses PostgreSQL for data exploration, transformation, analytical queries, and view creation, followed by Power BI for data visualization and reporting.

## Business Questions

This analysis focuses on the following questions:

1. How are sales and order volumes changing over time?
2. Which product categories generate the highest sales?
3. How frequently do customers make repeat purchases?
4. Which customer segments represent potential retention opportunities?
5. How does delivery performance relate to customer satisfaction?
6. Which categories have higher average item prices?

## Tools & Technologies

- **PostgreSQL** — Data exploration, SQL analysis, joins, CTEs, aggregations, window functions, and analytical views.
- **pgAdmin 4** — Database management and SQL execution.
- **Microsoft Power BI** — Interactive dashboards and data visualization.
- **DAX** — Measures, calculated columns, and analytical calculations.

## Dataset

**Brazilian E-Commerce Public Dataset by Olist**

The dataset contains information about orders, customers, products, sellers, payments, reviews, and geographical locations.

Dataset source: [Olist Brazilian E-Commerce Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset is publicly available for analysis. The original data files are not included in this repository.

## Project Workflow

1. Business problem understanding
2. Database exploration and schema understanding
3. Data loading into PostgreSQL
4. Data quality checks and cleaning
5. Exploratory data analysis
6. Customer behavior and retention analysis
7. Delivery performance and review analysis
8. Advanced SQL analysis
9. Creation of analytical SQL views
10. Power BI dashboard development
11. KPI validation and business recommendations

## Power BI Dashboards

### 1. Executive Overview

Provides a high-level view of e-commerce performance.

Key metrics and analysis:
- Product sales
- Orders with recorded sales
- Average order value
- Monthly sales trends
- Top product categories
- Delivery performance

### 2. Customer & Retention

Analyzes customer purchasing behavior and retention opportunities.

Key metrics and analysis:
- Total customers
- Repeat customer rate
- Average customer spend
- Customer purchase frequency
- RFM customer segmentation
- Spending distribution
- Cohort retention analysis

### 3. Product & Category Analysis

Evaluates product category performance.

Key metrics and analysis:
- Total product sales
- Number of product categories
- Category-order counts
- Category sales per order
- Top categories by sales
- Top categories by order volume
- Categories by average item price

### 4. Delivery & Customer Experience

Explores delivery reliability and customer satisfaction.

Key metrics and analysis:
- Delivered orders
- On-time delivery rate
- Late delivery rate
- Average review score
- Review score distribution
- Review comparison by delivery status

## Key Business Findings

The analysis identified several important patterns:

- Total product sales were approximately **R$13.59 million**.
- Approximately **95,420 customers** had observed item-level sales.
- The repeat customer rate was approximately **3.05%**.
- Repeat customers contributed approximately **5.62%** of observed product sales.
- Health & Beauty was the leading category by product sales.
- Bed, Bath & Table had the highest category order volume.
- Computers had the highest average item price among the categories analyzed.
- Approximately **8.11%** of delivered orders with recorded delivery dates were late.
- Late-delivered orders had a lower average review score than on-time orders: approximately **2.57 versus 4.29** in the delivery analysis.

These findings describe patterns in the dataset. They do not independently establish causation or predict future business performance.

## SQL Skills Demonstrated

- Multi-table joins
- Aggregations and grouping
- Common Table Expressions (CTEs)
- Window functions
- Customer-level analysis
- RFM segmentation
- Cohort retention calculations
- Delivery performance analysis
- Analytical view creation
- Data validation

## Repository Structure

The following is the planned repository organization:

```text
ecommerce-sales-customer-analytics/
│
├── README.md
├── data/
│   └── data_source.md
│
├── sql/
│   ├── data_exploration.sql
│   ├── data_quality_checks.sql
│   ├── customer_analysis.sql
│   ├── delivery_analysis.sql
│   ├── advanced_analysis.sql
│   └── analytical_views.sql
│
├── powerbi/
│   └── ecommerce_analytics.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   ├── customer_retention.png
│   ├── category_analysis.png
│   └── delivery_experience.png
│
└── documentation/
    ├── methodology.md
    └── key_findings.md
```

*This structure is a proposed organization. Files should be added as they are prepared.*

## Limitations

- The dataset represents historical transactions rather than live business activity.
- Product sales are not the same as profit because product cost information is not available.
- Repeat purchase analysis depends on the customer identifier and the observed dataset period.
- Orders containing multiple categories can appear in multiple category-level order counts.
- Delivery and review relationships indicate association, not necessarily causation.
- Recent customer cohorts have fewer subsequent months available for retention comparison.

## Future Improvements

- Add more detailed product-level analysis where supported by the data.
- Improve dashboard interactivity with slicers and drill-through features.
- Explore customer lifetime value scenarios.
- Develop more advanced retention and sales forecasting analysis.

## Author

**Data Analytics Portfolio Project**

Built using PostgreSQL, SQL, Power BI, and DAX.
