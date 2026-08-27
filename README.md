# SQL Profitability Analysis

SQL case study analyzing revenue, cost, gross profit, and customer concentration across products and regions.

## Questions answered

- Which products generate the highest gross profit?
- Which regions are below the target gross-margin percentage?
- Which customers contribute the most revenue?
- Where are unfavorable month-over-month trends developing?

## Run

```bash
sqlite3 finance.db < schema.sql
sqlite3 finance.db < analysis.sql
```

The project demonstrates joins, aggregations, window functions, CTEs, ranking, and finance-focused KPI calculations using synthetic transactions.

