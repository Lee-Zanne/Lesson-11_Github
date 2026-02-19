Lesson 10 – Aggregations (COUNT, SUM, AVG, GROUP BY)
SECTION 1 – COUNT Aggregations (10 Questions)


1. How many total properties are in the database?
 SELECT Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]

2. How many properties are listed in each province?
   SELECT Province,			
		Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]
	GROUP BY Province 
	ORDER BY Total_Properties DESC

3. How many properties are listed in each city?
	SELECT CITY,			
		Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]
	GROUP BY CITY 
	ORDER BY Total_Properties DESC

4. How many properties have more than 2 bedrooms?
 SELECT COUNT(*) AS Number_of_bedrooms			
		--Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Bedrooms > 2

5. How many properties have 2 or more bathrooms?
SELECT COUNT(*) AS Number_of_bathrooms			
		--Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Bathrooms >= 2

6. How many properties have parking for at least 2 cars?
  SELECT COUNT(*) AS Property_with_parking			
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Parking >= 2

7. How many properties are priced above R3,000,000?
	SELECT COUNT(*) AS Property_Price		
	--SELECT *
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Property_Price > 30000000

8. How many properties are in Gauteng?
  SELECT COUNT(*) AS Gauteng		
	--SELECT *
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Province = 'Gauteng'

9. How many properties per province have floor size greater than 200?
SELECT Province,			
		Count(*) AS Total_Properties
	FROM [Property24].[dbo].[Property24_Details]
	WHERE Floor_size > 200
	GROUP BY Province

	SELECT * FROM [Property24].[dbo].[Property24_Details]
	

10. How many distinct provinces are in the table?
SELECT COUNT(DISTINCT PROVINCE) AS Total_Province
FROM [Property24].[dbo].[Property24_Details]

SECTION 2 – SUM Aggregations (10 Questions)

11. What is the total value of all properties combined?
SELECT SUM(PRICE) AS Total_Prop_Value
FROM [Property24].[dbo].[Property24_Details]
--SELECT * FROM [Property24].[dbo].[Property24_Details]

12. What is the total property value per province?
SELECT Province,
       SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalPropertyValue
FROM [Property24].[dbo].[Property24_Details]
GROUP BY Province;

13. What is the total property value per city?
SELECT City,
       SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalPropertyValue
FROM [Property24].[dbo].[Property24_Details]
GROUP BY City;



14. What is the total monthly repayment for all properties?
SELECT SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalMonthlyRepayment
FROM [Property24].[dbo].[Property24_Details]

15. What is the total monthly repayment per province?
SELECT Province,
       SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalMonthlyRepayment
FROM [Property24].[dbo].[Property24_Details]
GROUP BY Province;


16. What is the total once-off cost for all properties?
SELECT SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalOnceOffCost
FROM [Property24].[dbo].[Property24_Details];

17. What is the total once-off cost per province?
SELECT Province,
       SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS TotalOnceOffCost
FROM [Property24].[dbo].[Property24_Details]
GROUP BY Province;

18. What is the total property value for Gauteng?
SELECT SUM(CAST(PROPERTY_PRICE AS BIGINT)) AS GautengPropertyValue
FROM [Property24].[dbo].[Property24_Details]
WHERE Province = 'Gauteng'


SELECT * FROM [Property24].[dbo].[Property24_Details]
SELECT PROPERTY_PRICE FROM [Property24].[dbo].[Property24_Details]

USE PROPERTY24;
GO
19. What is the total property value for properties priced above R4,000,000?
SELECT SUM(Property_Price) AS LuxuryPropertyValue
FROM [Property24].[dbo].[Property24_Details]
WHERE Price > 4000000;

20. What is the total minimum gross monthly income required per province?


SECTION 3 – AVG Aggregations (10 Questions)


21. What is the average property price overall?


22. What is the average property price per province?


23. What is the average property price per city?


24. What is the average number of bedrooms per province?


25. What is the average number of bathrooms per province?


26. What is the average floor size per province?


27. What is the average monthly repayment per province?


28. What is the average once-off cost per province?


29. What is the average minimum gross monthly income per province?


30. What is the average property price for properties above R3,000,000?


SECTION 4 – GROUP BY + Filtering (10 Questions)


31. Which province has the highest average property price?


32. Which province has the lowest average property price?


33. Which city has the highest total property value?


34. Which city has the lowest average property price?


35. How many properties per province are priced above R2,000,000?


36. What is the average floor size per province for properties above R3,000,000?


37. What is the total property value per province for properties with 3 or more bedrooms?


38. What is the average monthly repayment per province for properties above R4,000,000?


39. How many properties per city have parking for 2 or more cars?


40. What is the average minimum gross monthly income per province for properties above R5,000,000?
