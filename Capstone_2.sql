create database capstone2;
Use capstone2;

Show tables;

select * from wcfd2;

-- ALTER TABLE wcfd2
-- CHANGE COLUMN `ï»¿Segment` Segment VARCHAR(50);

DESCRIBE wcfd2;

SELECT COUNT(*) AS Total_Rows 
FROM wcfd2;

SELECT Month_Name, SUM(Sales) AS Monthly_Sales
FROM wcfd2
GROUP BY Month_Name
ORDER BY FIELD(Month_Name, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');

SELECT *
FROM wcfd2
WHERE Month_Number IS NULL;

SELECT Country, SUM(Sales) AS Total_Sales
FROM wcfd2
GROUP BY Country
ORDER BY Total_Sales DESC;

SELECT 
    MIN(Sales) AS Min_Sales,
    MAX(Sales) AS Max_Sales,
    AVG(Sales) AS Avg_Sales,
    SUM(Sales) AS Total_Sales,
    MIN(Profit) AS Min_Profit,
    MAX(Profit) AS Max_Profit,
    AVG(Profit) AS Avg_Profit,
    SUM(Profit) AS Total_Profit
FROM wcfd2;
