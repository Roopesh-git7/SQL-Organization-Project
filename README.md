# 🏢 SQL Organization Database Project

This project contains a collection of SQL queries written to explore, analyze, and manage data from an organizational database consisting of **Worker**, **Bonus**, and **Title** tables.  
It demonstrates SQL skills including filtering, joins, grouping, subqueries, window functions, string functions, and DDL operations.

---

## 🎯 Project Objective

The objective of this SQL project is to practice and demonstrate strong foundational and intermediate SQL skills by working on a sample organization's employee database.  
This includes:

- Writing real-world SQL queries  
- Performing data analysis using SELECT statements  
- Using aggregate and string functions  
- Working with JOINS  
- Applying window functions  
- Handling subqueries  
- Cloning tables  
- Fetching top-N results  
- Performing date-based filtering  

---

## 🗂️ Database Structure

This project uses three main tables:

### **1. Worker Table**
Contains employee-level information.

| Column Name | Description |
|------------|-------------|
| WORKER_ID | Unique worker ID |
| FIRST_NAME | Employee first name |
| LAST_NAME | Employee last name |
| SALARY | Employee salary |
| JOINING_DATE | Date employee joined |
| DEPARTMENT | Department of the employee |

### **2. Title Table**
Contains role/title details for workers.

| Column Name | Description |
|------------|-------------|
| WORKER_REF_ID | Reference to WORKER_ID |
| WORKER_TITLE | Job title (e.g., Manager) |
| AFFECTED_FROM | Date title became effective |

### **3. Bonus Table**
Contains bonus information.

| Column Name | Description |
|------------|-------------|
| WORKER_REF_ID | Reference to WORKER_ID |
| BONUS_AMOUNT | Bonus amount |
| BONUS_DATE | Date bonus was given |

---

## 🧠 SQL Concepts Demonstrated

This project covers a wide range of SQL operations:

### ✔ **String Functions**
- UPPER(), SUBSTRING(), REPLACE(), LTRIM(), RTRIM(), LENGTH()

### ✔ **Filtering & Searching**
- LIKE operators  
- BETWEEN  
- IN / NOT IN  
- Conditional filtering  

### ✔ **Sorting & Ordering**
- ORDER BY (ASC/DESC)

### ✔ **Aggregate Functions**
- COUNT(), SUM(), DISTINCT, GROUP BY, HAVING

### ✔ **JOIN Operations**
- INNER JOIN  
- LEFT JOIN  
- Identifying unmatched records  

### ✔ **Window Functions**
- DENSE_RANK()  
- Ranking salaries  
- Finding Nth highest salary  

### ✔ **Subqueries**
- Nested SELECTs for max salary, filtering, top records

### ✔ **Table Operations**
- Cloning tables  
- Creating new tables from existing ones  
- Fetching odd/even rows  

---

## 📘 Query Categories (Included in Project)

The SQL file includes **50 real interview-oriented SQL questions**, such as:

### 🔹 **Basic SELECT and Filtering**
- Fetch first names with alias  
- Convert names to uppercase  
- Extract unique departments  

### 🔹 **String Manipulation**
- Extract first 3 characters  
- Replace characters  
- Find position of specific letters  

### 🔹 **Sorting & Ordering**
- Sort by first name  
- Sort by department descending  

### 🔹 **Date-Based Filtering**
- Employees who joined in Feb 2014  
- Fetch current date and time  

### 🔹 **Salary Analysis**
- Employee with highest salary  
- Nth highest salary (with and without LIMIT)  
- Duplicate salaries  
- Salary ranges  

### 🔹 **Department-Level Analysis**
- Count employees per department  
- Departments with fewer than 5 employees  

### 🔹 **Joins & Integrity**
- Workers who are managers  
- Workers without bonuses  
- Intersecting records  

### 🔹 **Window Functions**
- Dense Rank to get top salaries per department  
- Second highest salary  
- Nth max salary using OFFSET  

---

## 📁 Files Included

| File Name | Description |
|----------|-------------|
| **SQL Org project.sql** | Contains all 50 SQL questions & solutions :contentReference[oaicite:0]{index=0} |
| **worker.csv** | Worker table data |
| **title.csv** | Title table data |
| **bonus.csv** | Bonus table data |

---

## 🛠️ Tools Used

- **MySQL / SQL Server / PostgreSQL** (compatible)  
- **Workbench / DBeaver / pgAdmin**  
- CSV datasets for importing tables  

---

## 📌 Conclusion

This SQL project showcases a strong command of SQL fundamentals and intermediate concepts by working on a structured organizational dataset.  
It demonstrates real-world problem-solving skills including filtering, joins, window functions, aggregations, subqueries, and table operations.

This repository is a great reference for **SQL interviews**, practice, and portfolio showcase.

---

## 👤 Author  
**Roopesh**  
SQL | Data Analysis | Database Management


