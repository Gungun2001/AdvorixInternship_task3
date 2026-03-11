# SQL Data Analysis Assignment – Task 3

## 📌 Internship Task
This project is part of my **Data Analytics Internship** at Adrovix Technologies  where I created a small database and performed SQL data analysis using different queries.

The goal of this task was to practice important SQL concepts such as:
- SELECT
- WHERE
- GROUP BY
- JOIN
- ORDER BY
- Aggregate Functions

---

# 🛠 Tools Used
- SQL
- PostgreSQL / MySQL
- Database Tables

---

# 📊 SQL Concepts Demonstrated
This project includes multiple SQL queries such as:

- Data retrieval using **SELECT**
- Filtering records using **WHERE**
- Aggregating data using **GROUP BY**
- Sorting results using **ORDER BY**
- Using aggregate functions like **COUNT, SUM, AVG**

---

# 📷 Query Output Screenshots

## 1️⃣ Sort Products by Price
```sql
SELECT * FROM Products
ORDER BY Price DESC;
```


![Sort Products](sort_products_price.png)

---

## 2️⃣ Total Orders by Customer
```sql
SELECT CustomerID, COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY CustomerID;
```

![Total Orders](total_order.png)

---

## 3️⃣ Total Quantity Sold per Product
```sql
SELECT ProductID, SUM(Quantity) AS TotalSold
FROM Orders
GROUP BY ProductID;
```

![Total Quantity Sold](total_quantity.png)
---

## 4️⃣ Average Product Price by Category
```sql
SELECT Category, AVG(Price) AS AvgPrice
FROM Products
GROUP BY Category;


![Average Product Price ](average_product_price.png)
---

# 🎯 Learning Outcomes

Through this task I learned:

- Writing SQL queries for data analysis  
- Aggregating data using GROUP BY  
- Using aggregate functions like SUM, COUNT, AVG  
- Sorting datasets using ORDER BY  
- Understanding relational database structure  

---

# 👩‍💻 Author

**Gungun Agarwal**  
BCA Graduate | Aspiring Data Analyst  

Skills:
- SQL
- Excel
- Python

- Power BI
