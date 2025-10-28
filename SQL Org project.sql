 use org;
 show tables;
 
 #Q-1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
 SELECT 
    FIRST_NAME AS WORKER_NAME
FROM
    worker;
    
#Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
SELECT 
    UPPER(FIRST_NAME)
FROM
    worker;   
    
#3.Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table
select distinct DEPARTMENT
from worker;

#Q-4. Write An SQL Query To Print The First Three Characters Of FIRST_NAME From Worker Table.
SELECT SUBSTRING(FIRST_NAME, 1, 3) as THREE_CHAR
FROM Worker;

#-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table
SELECT 
    FIRST_NAME, POSITION('A' IN first_name) AS POS
FROM
    worker
WHERE
    first_name = 'Amitabh';


#Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side
SELECT 
    RTRIM(FIRST_NAME) AS trimmed
FROM
    worker;
    
#Q-7. Write An SQL Query To Print The DEPARTMENT From Worker Table After Removing White Spaces From The Left Side.
SELECT 
    LTRIM(DEPARTMENT) AS trimmed
FROM
    worker;
    
#Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
SELECT DISTINCT
    DEPARTMENT, LENGTH(DEPARTMENT) AS len
FROM
    worker;
    
#Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘a’ With ‘K’. (for replacing char is case-sensitive)

SELECT 
    FIRST_NAME, REPLACE(FIRST_NAME, 'a', 'K') as replaced
FROM
    worker;
    
#Q-10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate
SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS COMPLETE_NAME
FROM
    worker;
    
#Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending
SELECT 
    *
FROM
    worker
ORDER BY FIRST_NAME ASC;

#Q-12. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending
SELECT 
    *
FROM
    worker
ORDER BY FIRST_NAME ASC , DEPARTMENT DESC;

#Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table
SELECT 
    FIRST_NAME
FROM
    worker
WHERE
    FIRST_NAME IN ('Vipul' , 'Satish');
    
#-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
SELECT 
    FIRST_NAME
FROM
    worker
WHERE
    FIRST_NAME NOT IN ('Vipul' , 'Satish');
    
#Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”
SELECT 
    FIRST_NAME, DEPARTMENT
FROM
    worker
WHERE
    DEPARTMENT = 'Admin';

#Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
SELECT 
    FIRST_NAME
FROM
    WORKER
WHERE
    FIRST_NAME LIKE '%a%';
    
#Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
SELECT 
    FIRST_NAME
FROM
    WORKER
WHERE
    FIRST_NAME LIKE '%a';
    
#Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.    
SELECT 
    FIRST_NAME
FROM
    WORKER
WHERE
    FIRST_NAME LIKE '%_____H';

#Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
SELECT FIRST_NAME, SALARY
FROM WORKER
WHERE SALARY BETWEEN 100000 AND 500000;

SELECT FIRST_NAME, SALARY
FROM WORKER
WHERE SALARY >=100000 AND SALARY <=500000;

#Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
SELECT 
    FIRST_NAME, JOINING_DATE
FROM
    WORKER
WHERE
    YEAR(JOINING_DATE) = 2014
        AND MONTH(JOINING_DATE) = 2;
        
#Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
SELECT 
    DEPARTMENT, COUNT(*) AS NO_EMPLOYEES
FROM
    WORKER

WHERE
    DEPARTMENT = 'ADMIN';
    
#Q-22. Write An SQL Query To Fetch Worker Names With Salaries >= 50000 And <= 100000.
SELECT 
    FIRST_NAME, SALARY
FROM
    WORKER
WHERE
    SALARY >= 50000 AND SALARY <= 100000;

#Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order
SELECT 
    DEPARTMENT, COUNT(*) AS No_Of_Workers
FROM
    WORKER
GROUP BY DEPARTMENT
ORDER BY DEPARTMENT DESC;

#Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers
SELECT *
FROM WORKER AS W INNER JOIN TITLE AS T ON W.WORKER_ID = T.WORKER_REF_ID
WHERE WORKER_TITLE = 'MANAGER';

#Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
select worker_title,affected_from,count(*) as dup 
 from title 
 group by WORKER_TITLE,AFFECTED_FROM having dup>1;

#Q-26. Write An SQL Query To Show Only Odd Rows From A Table
SELECT * 
FROM worker
WHERE worker_id % 2 <> 0;

#Q-27. Write An SQL Query To Show Only Even Rows From A Table.
SELECT * 
FROM worker
WHERE worker_id % 2 = 0;

#Q-28. Write An SQL Query To Clone A New Table From Another Table
CREATE TABLE worker_copy AS SELECT * FROM
    worker;
select  * from worker_copy;
 
 #Q-29. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
 SELECT 
    *
FROM
    worker AS w
        left join
    bonus AS b ON w.worker_id = b.worker_ref_id;

#Q-30. Write An SQL Query To Show Records From One Table That Another Table Does Not Have
SELECT 
    *
FROM
    worker AS w
        LEFT JOIN
    bonus AS b ON w.worker_id = b.worker_ref_id
WHERE
    worker_ref_id IS NULL;

#Q-31. Write An SQL Query To Show The Current Date And Time
SELECT NOW();

#Q-32. Write An SQL Query To Show The Top N (Say 10) Records Of A Table.
select *
from worker
order by first_name limit 5;

#Q-33. Write An SQL Query To Determine The Nth (Say N=5) Highest Salary From A Table.
SELECT 
    salary
FROM
    worker
ORDER BY salary DESC
LIMIT 5;

#Q-34. Write An SQL Query To Determine The 5th Highest Salary Without Using TOP Or Limit Method
select * from(
select*, dense_rank() over(partition by department order by salary desc) as drnk
from worker) as t
where drnk=1;

select * from(
select*, dense_rank() over(partition by department order by salary desc) as drnk from worker)as t
where drnk=1;

#Q-35. Write An SQL Query To Fetch The List Of Employees With The Same Salary
select salary,count(*) as cnt
from worker
group by SALARY
having count(salary)>1;

select salary, count(salary) as cnt from worker group by salary having count(salary)>1;   # using sub query

#Q-36. Write An SQL Query To Show The Second Highest Salary From A Table.
select * from(
select*, dense_rank() over(partition by department order by salary desc) as drnk from worker) as t
where drnk =2;

#Q-37. Write An SQL Query To Show One Row Twice In Results From A Table.
select * from worker
union all
select * from worker order by WORKER_ID;

#Q-38. Write An SQL Query To Fetch Intersecting Records Of Two Tables.
select * from worker as w inner join bonus as b on w.WORKER_ID = b.WORKER_REF_ID;

#Q-39. Write An SQL Query To Fetch The First 50% Records From A Table.
select * from worker where WORKER_ID <=(select count(*)/2 as cnt from worker);

#Q-40. Write An SQL Query To Fetch The Departments That Have Less Than Five People In It.
SELECT department
FROM worker
GROUP BY department
HAVING COUNT(*) < 5;

#Q-41. Write An SQL Query To Show All Departments Along With The Number Of People In There
select department,count(*) as no_of_people
from worker
group by DEPARTMENT;

#Q-42. Write An SQL Query To Show The Last Record From A Table.
SELECT *
FROM worker
ORDER BY worker_id DESC
limit 1;

#Q-43. Write An SQL Query To Fetch The First Row Of A Table
SELECT *
FROM worker
ORDER BY worker_id 
limit 1;

#Q-44. Write An SQL Query To Fetch The Last Five Records From A Table.
SELECT *
FROM worker
ORDER BY worker_id DESC
limit 5;

#Q-45. Write An SQL Query To Print The Name Of Employees Having The Highest Salary In Each Department.

select * from(
select first_name, department, salary, dense_rank() over(partition by department order by salary) as drnk
from worker) as t
where drnk = 1;

#46. Write An SQL Query To Fetch Three Max Salaries From A Table
SELECT DISTINCT salary
FROM worker
ORDER BY salary desc
LIMIT 3;


#Q-47. Write An SQL Query To Fetch Three Min Salaries From A Table
SELECT DISTINCT salary
FROM worker
ORDER BY salary asc
LIMIT 3;

#Q-48. Write An SQL Query To Fetch Nth Max Salaries From A Table.
SELECT DISTINCT salary
FROM worker
ORDER BY salary DESC
LIMIT 1 offset 4;

#Q-49. Write An SQL Query To Fetch Departments Along With The Total Salaries Paid
select department , sum(salary) as total_salaries
from worker
group by DEPARTMENT;

#Q-50. Write An SQL Query To Fetch The Names Of Workers Who Earn The Highest Salary.
SELECT FIRST_NAME, salary
FROM worker
WHERE salary = (
    SELECT MAX(salary) 
    FROM worker
);

/** USING WINDOWS FUNCTION (DENSE_RANK8)**/
SELECT FIRST_NAME,SALARY
FROM (
    SELECT FIRST_NAME, SALARY,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM worker
) AS t
WHERE rnk = 1;

