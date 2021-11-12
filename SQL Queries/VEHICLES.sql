CREATE DATABASE vehicles;

USE vehicles;

CREATE TABLE bike_details
(
     Bike_Id INT PRIMARY KEY,
     Bike_Brand VARCHAR(30) NOT NULL,
     Bike_Model VARCHAR(30) DEFAULT'A10',
     Bike_Price DECIMAL CHECK(Bike_Price>=50000),
     Bike_colour VARCHAR(10),
     Engine_No VARCHAR(20)UNIQUE
     );
     
SELECT Bike_Id,Bike_Brand FROM bike_details;

SELECT*FROM bike_details;

DESCRIBE bike_details;

INSERT INTO bike_details VALUE(1,'Suzuki','Dio',70000,'Black','EN32456789');

INSERT INTO bike_details value(2,'Honda','Pulsar',80000,'Blue','EN11113'),(3,'Hero','Deluxe',100000,'White','EN13455666667');

INSERT INTO bike_details(Bike_Id,Bike_Brand)VALUE(4,'Apachi');

UPDATE bike_details SET Bike_Price=100000.9877 WHERE Bike_Id=4;

UPDATE bike_details SET Bike_colour='Red',Engine_No='EN1234567'WHERE Bike_Id=4;

UPDATE bike_details SET Bike_Price=70000 WHERE Bike_Id=1;

SELECT * FROM bike_details ORDER BY Bike_Price;

SELECT * FROM bike_details ORDER BY Bike_Price DESC;

SELECT * FROM bike_details ORDER BY Bike_Brand;

SELECT * FROM bike_details ORDER BY Bike_Model DESC;

SELECT * FROM bike_details LIMIT 2;

SELECT * FROM bike_details ORDER BY Bike_Price DESC LIMIT 3;

SELECT * FROM bike_details WHERE Bike_Brand='Hero' OR Bike_Brand='Honda';

SELECT * FROM bike_details WHERE Bike_Brand IN('Hero','Suzuki','Honda');

SELECT * FROM bike_details WHERE Bike_Price IN(70000,80000);

SELECT * FROM bike_details WHERE Bike_Price BETWEEN 70000 AND 100000;

SELECT * FROM bike_details WHERE Bike_Price BETWEEN 70000 AND 100000 ORDER BY Bike_Brand;

SELECT Bike_Price AS Bike_with_amount_greater_than_80000 FROM bike_details WHERE Bike_Price>80000;

SELECT Bike_Price AS Bike_Amount FROM bike_details;

SELECT * FROM bike_details;

SELECT * FROM bike_details WHERE Bike_Brand='He';

SELECT * FROM bike_details WHERE Bike_Brand LIKE 'He%';

SELECT * FROM bike_details WHERE Bike_Brand LIKE '_o_%';

SELECT * FROM bike_details WHERE Bike_Brand LIKE '%z%';

SELECT CURDATE();
SELECT CURDATE() AS Present_Date;

SELECT CURTIME();
SELECT CURTIME() AS Present_Time;

SELECT NOW() AS Present_DateTime;

SELECT DATE('2021-11-12 15:32:50')AS Extracted_Date;

SELECT DATE(NOW())AS Extracted_Date;

SELECT DAYOFMONTH('2021-11-12 15:32:50')AS Extracted_Day;

SELECT MONTH('2021-11-12 15:32:50')AS Extracted_Month;

SELECT YEAR('2021-11-12 15:32:50')AS Extracted_Year;

SELECT WEEK('2021-11-12 15:32:50')AS Extracted_Week;

SELECT DAYNAME('2021-11-12 15:32:50')AS Extracted_Day;

SELECT * FROM bike_details;

SELECT * FROM bike_details WHERE Bike_Price=80000;

SELECT MAX(Bike_Price)FROM bike_details;

SELECT MAX(Bike_Price) AS Highest_cost_of_bike FROM bike_details;

SELECT MIN(Bike_Price) AS Lowest_cost_of_bike FROM bike_details;

SELECT AVG(Bike_Price) AS Average_cost_of_bike FROM bike_details;

SELECT SUM(Bike_Price) AS Total_cost_of_bike FROM bike_details;

SELECT COUNT(Bike_Price) AS No_of_bikes FROM bike_details;
SELECT COUNT(*) AS No_of_bikes FROM bike_details;

SELECT Bike_Brand,COUNT(Bike_Id) FROM bike_details GROUP BY Bike_Brand;

SELECT Bike_Brand,COUNT(Bike_Id) AS No_of_bikes_in_ID FROM bike_details GROUP BY Bike_Brand;

SELECT Bike_Price,COUNT(Bike_Price) AS No_of_bikes_in_price FROM bike_details GROUP BY Bike_Price;

SELECT Bike_Model,COUNT(Bike_Model) AS No_of_bikes_in_Model FROM bike_details GROUP BY Bike_Model;

SELECT Bike_Price,COUNT(Bike_Price) AS No_of_bikes_in_Price FROM bike_details WHERE Bike_Price>80000 GROUP BY Bike_Brand;







