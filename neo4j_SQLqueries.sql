-- MODULE : B9DA102 Data Storage Solutions for Data Analytics
-- GROUP B (Slot 4)

-- Subramaniam Kazhuparambil (10524303)
-- Rahul Ramchandra Uppari (10523807)
-- Deeksha Sharma (10522688) 
-- Mohit Singh (10525046)

-- QUERIES CORRESPONDING TO NEO4J (to compare with Neo4J)-- 

-- 1 --
SELECT COUNT(*)WEATHER FROM CrashConditions_Dim WHERE Weather = 'RAINING' AND CrashConditionsKey < 101
GO

-- 2 --
SELECT * FROM Driver_Dim 
WHERE (DriverSubstanceAbuse = 'ALCOHOL PRESENT' OR DriverSubstanceAbuse = 'ALCOHOL CONTRIBUTED')
AND PersonKey < 101
GO

-- 3 --
SELECT c.PersonID FROM 
CarCrashDate_Dim a 
INNER JOIN CrashAnalysis_Fact b ON a.CarCrashDateKey = b.CarCrashDateKey
INNER JOIN Driver_Dim c ON c.PersonKey = b.PersonKey
WHERE a.CrashDate = '2015-01-01'
GO

-- 4 --
SELECT DISTINCT WEATHER FROM CrashConditions_Dim WHERE CrashConditionsKey < 101
GO