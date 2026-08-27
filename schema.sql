DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    transaction_id INTEGER PRIMARY KEY,
    transaction_date TEXT NOT NULL,
    customer TEXT NOT NULL,
    region TEXT NOT NULL,
    product TEXT NOT NULL,
    revenue REAL NOT NULL,
    cost REAL NOT NULL
);

INSERT INTO sales VALUES
(1,'2026-01-05','Atlas Retail','East','Analytics',42000,21000),
(2,'2026-01-12','Nova Health','West','Automation',36000,19800),
(3,'2026-01-22','Pioneer Foods','South','Reporting',28000,16800),
(4,'2026-02-04','Atlas Retail','East','Automation',48000,25000),
(5,'2026-02-14','Summit Media','North','Analytics',33000,15800),
(6,'2026-02-25','Nova Health','West','Reporting',31000,19000),
(7,'2026-03-03','Pioneer Foods','South','Analytics',39000,18500),
(8,'2026-03-16','Summit Media','North','Automation',52000,27000),
(9,'2026-03-26','Atlas Retail','East','Reporting',35000,20500);

