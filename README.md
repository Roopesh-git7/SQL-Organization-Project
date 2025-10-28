# 🧩 SQL Organization Project

## 🧠 Overview
This project, **SQL Organization Project**, is a comprehensive collection of **50 SQL queries** written to analyze employee and organizational data.  
It covers everything from **basic data retrieval** to **advanced analytical operations** using functions like `JOIN`, `GROUP BY`, `DENSE_RANK()`, and `WINDOW FUNCTIONS`.  

The project is ideal for learning and demonstrating SQL skills used in **Data Analytics**, **Business Intelligence**, and **Database Management**.

---

## 🗃️ Database Description
The project operates on a sample database named **`org`**, which contains key tables such as:
- **Worker** – Stores employee details (name, department, salary, joining date)
- **Title** – Holds worker titles and their start dates
- **Bonus** – Maintains employee bonus records

---

## 🎯 Objectives
- Strengthen SQL fundamentals through practical business queries.  
- Understand and apply **data manipulation and filtering techniques**.  
- Perform **text processing, aggregation, and pattern matching**.  
- Implement **ranking, analytical, and window functions** for insights.  
- Analyze **departmental, salary, and employee trends** using SQL.

---

## 📚 Topics Covered
The 50 queries are grouped into categories for better understanding:

| Category | Description | Example Queries |
|-----------|--------------|-----------------|
| **1️⃣ Basic SQL** | Selecting, filtering, and aliasing data | Q1–Q5 |
| **2️⃣ String Functions** | Using `SUBSTRING`, `REPLACE`, `LTRIM`, `RTRIM`, `POSITION`, `UPPER` | Q4–Q9 |
| **3️⃣ Data Formatting & Concatenation** | Combining columns using `CONCAT`, trimming, aliasing | Q10 |
| **4️⃣ Sorting & Filtering** | Ordering data, using conditions (`LIKE`, `BETWEEN`, `IN`, `NOT IN`) | Q11–Q18 |
| **5️⃣ Conditional Queries** | Salary and department-based filtering | Q19–Q23 |
| **6️⃣ Joins & Relationships** | Inner joins and left joins between Worker, Title, and Bonus | Q24, Q29, Q38 |
| **7️⃣ Aggregations** | Using `COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING` | Q21, Q23, Q40–Q41, Q49 |
| **8️⃣ Table Operations** | Cloning, duplicating, creating temporary tables | Q28 |
| **9️⃣ Ranking & Window Functions** | Finding top salaries using `DENSE_RANK()` | Q33–Q36, Q45–Q48 |
| **🔟 Miscellaneous Queries** | Current time, Nth records, duplicates, and limits | Q31–Q50 |

---

## 🔍 Highlight Queries & Concepts

### 🧱 **Basic Retrieval and Aliasing**
```sql
-- Fetch first names with alias WORKER_NAME
SELECT FIRST_NAME AS WORKER_NAME
FROM Worker;
🔤 String Manipulation
sql
Copy code
-- Print first 3 characters of worker names
SELECT SUBSTRING(FIRST_NAME, 1, 3) AS THREE_CHAR
FROM Worker;

-- Replace 'a' with 'K' in names
SELECT FIRST_NAME, REPLACE(FIRST_NAME, 'a', 'K') AS replaced
FROM Worker;
📅 Date and Range Filtering
sql
Copy code
-- Employees who joined in February 2014
SELECT FIRST_NAME, JOINING_DATE
FROM Worker
WHERE YEAR(JOINING_DATE) = 2014
  AND MONTH(JOINING_DATE) = 2;
💰 Salary Analysis
sql
Copy code
-- Workers earning between 100000 and 500000
SELECT FIRST_NAME, SALARY
FROM Worker
WHERE SALARY BETWEEN 100000 AND 500000;

-- Highest salary in each department using DENSE_RANK
SELECT *
FROM (
    SELECT FIRST_NAME, DEPARTMENT, SALARY,
           DENSE_RANK() OVER (PARTITION BY DEPARTMENT ORDER BY SALARY DESC) AS drnk
    FROM Worker
) AS t
WHERE drnk = 1;
🧮 Aggregation & Grouping
sql
Copy code
-- Number of employees in each department
SELECT DEPARTMENT, COUNT(*) AS No_Of_Workers
FROM Worker
GROUP BY DEPARTMENT;

-- Departments with less than 5 employees
SELECT DEPARTMENT
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;
🔗 Joins and Relationships
sql
Copy code
-- Workers who are also managers
SELECT *
FROM Worker AS W
INNER JOIN Title AS T
ON W.WORKER_ID = T.WORKER_REF_ID
WHERE WORKER_TITLE = 'MANAGER';
🪜 Window Functions & Ranking
sql
Copy code
-- Fetch 5th highest salary without using LIMIT
SELECT *
FROM (
    SELECT *, DENSE_RANK() OVER (ORDER BY SALARY DESC) AS drnk
    FROM Worker
) AS t
WHERE drnk = 5;
🧩 Key Learnings
✅ Improved understanding of SQL syntax and logic
✅ Mastered data filtering, grouping, and ordering techniques
✅ Learned string and date manipulations
✅ Applied ranking and window functions for analytics
✅ Developed an analytical mindset to solve business problems using SQL

🚀 How to Run the Project

1.Create a database named org in your SQL environment.
2.Run each query sequentially in your SQL editor.
3.Ensure Worker, Title, and Bonus tables exist (or use dummy data).
4.View outputs and modify queries to experiment and learn.

🧠 Use Cases

HR Analytics: Employee salaries, department size, and promotions.
Data Cleaning: Removing duplicates, trimming text, and formatting.
Business Insights: Identify top performers and underpaid roles.
Interview Prep: Covers 90% of SQL questions asked in analytics roles.

🏆 Learning Outcomes

Solid foundation in SQL querying and problem-solving.
Ability to handle real-world data manipulation and reporting.
Ready to tackle Data Analyst and SQL interview challenges.
