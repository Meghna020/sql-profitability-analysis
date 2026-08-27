-- Product profitability
SELECT
    product,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(cost), 2) AS cost,
    ROUND(SUM(revenue - cost), 2) AS gross_profit,
    ROUND(100.0 * SUM(revenue - cost) / SUM(revenue), 1) AS gross_margin_pct
FROM sales
GROUP BY product
ORDER BY gross_profit DESC;

-- Customer concentration
WITH customer_revenue AS (
    SELECT customer, SUM(revenue) AS revenue
    FROM sales
    GROUP BY customer
),
total AS (
    SELECT SUM(revenue) AS total_revenue FROM customer_revenue
)
SELECT
    customer,
    revenue,
    ROUND(100.0 * revenue / total_revenue, 1) AS revenue_share_pct
FROM customer_revenue, total
ORDER BY revenue DESC;

-- Monthly revenue trend
WITH monthly AS (
    SELECT SUBSTR(transaction_date, 1, 7) AS month, SUM(revenue) AS revenue
    FROM sales
    GROUP BY SUBSTR(transaction_date, 1, 7)
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prior_month_revenue,
    revenue - LAG(revenue) OVER (ORDER BY month) AS monthly_change
FROM monthly;

