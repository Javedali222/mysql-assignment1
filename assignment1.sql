-- Q.1 Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as &lt;WORKER_NAME&gt;.
select first_name as workername
from company.worker;

-- Q.2 Write an SQL query to fetch unique values of DEPARTMENT from Worker table.

select 
	 distinct (department) as dept
     from company.worker;
     
     select 
	 count(distinct (department)) as dept
     from company.worker;
     
    -- Q.3. Write an SQL query to show the last 5 record from a table.
	
     select *
     from company.worker
     limit 5 offset 8; 
     
     use company;
     With RankedRecords AS (
		SELECT *, ROW_NUMBER() OVER() AS row_num
        FROM Worker
	)
    SELECT *
    FROM RankedRecords
	WHERE row_num > (SELECT COUNT(*) FROM Worker) - 5;
     
     --- Assigmnet 2
    -- Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
    SELECT SUBSTRING(FIRST_NAME, 1, 3) AS First_Three_Chars
FROM Worker;

-- Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.
SELECT POSITION('a' IN FIRST_NAME) AS Position_of_a
FROM Worker
WHERE FIRST_NAME = 'Amitabh';

