SHOW TABLES;
SELECT * FROM CITY;
-- What are the names of all the cities in the dataset ?;
SELECT DISTINCT NAME FROM CITY;

-- How many cities are there in the dataset?
select COUNT( distinct NAME) FROM CITY;

-- What is the population of the city with the highest population?
SELECT MAX(POPULATION) FROM CITY;
SELECT NAME,POPULATION FROM CITY WHERE POPULATION = (SELECT MAX(POPULATION) FROM CITY);
SELECT NAME,POPULATION FROM CITY ORDER BY POPULATION DESC LIMIT 1;

-- List the cities with a population greater than 1 milion?
SELECT NAME,POPULATION FROM CITY WHERE POPULATION>1000000;

-- Find the country with most cities in the dataset?
SELECT COUNT( DISTINCT NAME) AS CITYCOUNT,COUNTRYCODE FROM CITY GROUP BY COUNTRYCODE ORDER BY CITYCOUNT DESC LIMIT 1;

-- List the cities in alphabetical order?
SELECT NAME FROM CITY ORDER BY NAME ASC;

-- What is the total population of all the cities in a dataset?
SELECT SUM(POPULATION) FROM CITY;

-- Find the city with longest name?
select NAME, length(NAME) AS LEN_NAME FROM CITY ORDER BY LEN_NAME desc limit 1; 
select name,length(name) from city where length(name)=(select max(length(name)) from city);

-- Show the top 5 cities with the highest population density (population divided by area).
SELECT NAME,POPULATION FROM CITY ORDER BY POPULATION DESC LIMIT 5;

-- Find the average population of all the cities in the dataset. 
SELECT AVG(POPULATION),NAME FROM CITY GROUP BY NAME;