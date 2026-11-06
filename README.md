# E-commerce Sales & Customer Analytics

An end-to-end data analytics project exploring sales performance, customer behavior, product categories, delivery operations, and customer satisfaction using the **Brazilian E-Commerce Public Dataset by Olist**.

The project uses PostgreSQL for data exploration, transformation, and analytical SQL, followed by Microsoft Power BI for interactive dashboards and business reporting.

## Project Overview

The objective of this project is to understand e-commerce business performance, identify customer retention opportunities, evaluate product category performance, and examine the relationship between delivery reliability and customer satisfaction.

The analysis combines SQL-based data preparation and validation with interactive Power BI dashboards.

## Business Questions

This project investigates the following questions:

1. How are product sales and order volumes changing over time?
2. Which product categories generate the highest sales?
3. How frequently do customers make repeat purchases?
4. Which customer segments represent potential retention opportunities?
5. How does delivery performance relate to customer satisfaction?
6. Which product categories have higher average item prices?

## Tools & Technologies

| Tool | Purpose |
|---|---|
| PostgreSQL 18 | Data storage, exploration, transformation, and analysis |
| pgAdmin 4 | Database management and SQL execution |
| Microsoft Power BI | Interactive dashboards and reporting |
| DAX | Measures, calculated columns, and analytical calculations |
| GitHub | Project version control and documentation |

## Dataset

**Brazilian E-Commerce Public Dataset by Olist**

Source: [Olist Brazilian E-Commerce Dataset — Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)

The dataset contains information about orders, customers, products, sellers, payments, reviews, and geographical locations.

The original dataset files are not included in this repository.

## Project Workflow

1. Business problem understanding
2. Database exploration and schema understanding
3. Data loading into PostgreSQL
4. Data quality checks
5. Exploratory data analysis
6. Customer behavior and retention analysis
7. RFM segmentation and cohort analysis
8. Delivery performance and review analysis
9. Category-level sales analysis
10. Creation of analytical SQL views
11. Power BI dashboard development
12. KPI validation and business recommendations

## Power BI Dashboards

The project contains four interactive dashboard pages.

### 1. Executive Overview

Provides a high-level view of overall e-commerce performance.

Key metrics and analysis:
- Total product sales
- Orders with recorded sales
- Average order value
- Monthly sales trends
- Top product categories
- Delivery performance

![Executive Overview](images/executive_overview.png)

### 2. Customer & Retention Analysis

Examines customer purchasing behavior and retention opportunities.

Key metrics and analysis:
- Total customers with observed sales
- Repeat customer rate
- Average customer spend
- Customer purchase frequency
- RFM customer segmentation
- Customer spending distribution
- Cohort retention analysis

![Customer Retention](images/customer_retention.png)

### 3. Product & Category Analysis

Evaluates sales performance and purchasing activity across product categories.

Key metrics and analysis:
- Total product sales
- Number of product categories
- Category-order counts
- Category sales per order
- Top categories by sales
- Top categories by order volume
- Categories by average item price

![Product & Category Analysis](images/product_category_analysis.png)

### 4. Delivery & Customer Experience

Examines delivery reliability and its relationship with customer satisfaction.

Key metrics and analysis:
- Delivered orders
- On-time delivery rate
- Late delivery rate
- Average review score
- Review score distribution
- Review comparison by delivery status

![Delivery & Customer Experience](images/delivery_customer_experience.png)

## Key Business Findings

The analysis identified the following patterns:

| Metric | Finding |
|---|---:|
| Total product sales | R$13.59 million |
| Customers with observed item-level sales | 95,420 |
| Repeat customer rate | 3.05% |
| Repeat customer contribution to product sales | 5.62% |
| Late delivery rate | 8.11% |
| Average review score for late deliveries | 2.57 |
| Average review score for on-time deliveries | 4.29 |

Additional category findings:

- **Health & Beauty** generated the highest product sales.
- **Bed, Bath & Table** had the highest category order volume.
- **Computers** had the highest average item price among the categories analyzed.

### Business Implications

- The low repeat customer rate indicates a potential customer retention opportunity.
- Repeat customers contributed a higher share of sales relative to their share of the customer base, making retention worth investigating.
- Late deliveries were associated with substantially lower average review scores.
- Category-level performance can help prioritize merchandising and marketing analysis.

These findings describe historical patterns and associations. They do not independently establish causation or guarantee future business outcomes.

## SQL Skills Demonstrated

- Multi-table joins
- Aggregations and grouping
- Common Table Expressions (CTEs)
- Window functions
- Customer-level analysis
- RFM segmentation
- Cohort retention calculations
- Delivery performance analysis
- Category-level analysis
- Analytical view creation
- Data validation and quality checks

## Repository Structure

```text
ecommerce-sales-customer-analytics/
│
├── images/
│   ├── executive_overview.png
│   ├── customer_retention.png
│   ├── product_category_analysis.png
│   └── delivery_customer_experience.png
│
├── sql/
│   ├── README.md
│   ├── 01_data_exploration.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_cohort_analysis.sql
│   ├── 06_delivery_analysis.sql
│   └── 07_category_analysis.sql
│
├── Ecommerce_Sales_Customer_Analytics.pbix
└── README.md
```

## Limitations

- The dataset represents historical transactions rather than live business activity.
- Product sales are not equivalent to profit because product cost information is not available.
- Repeat purchase analysis depends on the customer identifier and the observed dataset period.
- Orders containing multiple categories can appear in multiple category-level order counts. These counts should not be interpreted as distinct orders across all categories.
- Delivery and review relationships indicate association, not necessarily causation.
- Recent customer cohorts have fewer subsequent months available for retention comparisons.
- The delivery analysis uses the selected review score per order from the analytical view; it is not necessarily the average of every review associated with that order.

## Future Improvements

- Add more detailed product-level analysis.
- Improve dashboard interactivity with additional slicers and drill-through features.
- Explore customer lifetime value scenarios.
- Develop more advanced retention and sales forecasting analysis.
- Expand SQL documentation and analytical view coverage.

## Author

**Data Analytics Portfolio Project**

Built using PostgreSQL, SQL, Microsoft Power BI, and DAX.
