
-- 1. Query to find the countries with the highest temperatures:
SELECT Country, MAX(Temperature) AS Max_Temperature
FROM country_pollution
GROUP BY Country
ORDER BY Max_Temperature DESC
LIMIT 1;

-- 2. Query to identify the countries with the lowest CO2 emissions:
SELECT Country, MIN(CO2_Emissions) AS Min_CO2_Emissions
FROM country_pollution
GROUP BY Country
ORDER BY Min_CO2_Emissions ASC
LIMIT 1;

-- 3. Query to find all temperature records above a specific value (e.g., 20 degrees Celsius):
SELECT *
FROM country_pollution
WHERE Temperature > 20;

-- 4. Query to list all countries with CO2 emissions data available for the year 2020:
SELECT DISTINCT Country
FROM country_pollution
WHERE Date = 2020 AND CO2_Emissions IS NOT NULL;

-- 5. Query to count the total number of temperature records in the dataset:
SELECT COUNT(*) AS Total_Temperature_Records
FROM country_pollution;

-- 6. Query to identify any countries with missing temperature data for a specific year (e.g., 2015):
SELECT DISTINCT Country
FROM country_pollution
WHERE Date = 2015 AND Temperature IS NULL;

-- 7. Query to find the average temperature for each year in the dataset:
SELECT Date AS Year, AVG(Temperature) AS Average_Temperature
FROM country_pollution
GROUP BY Date;

-- 8. Query to calculate the total CO2 emissions for all countries in the dataset:
SELECT SUM(CO2_Emissions) AS Total_CO2_Emissions
FROM country_pollution;

-- 9. Query to sort the temperature data in descending order based on the temperature values:
SELECT *
FROM country_pollution
ORDER BY Temperature DESC;
