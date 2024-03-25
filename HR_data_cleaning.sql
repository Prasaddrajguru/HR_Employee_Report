CREATE DATABASE human_resources;

-- DROP DATABASE HumanResources;

USE human_resources;

select * from hr;

ALTER TABLE hr CHANGE COLUMN ï»¿id emp_id VARCHAR(20) NULL;

DESC hr;

SELECT birthdate FROM hr;

SET sql_safe_updates = 0;

UPDATE hr
SET birthdate = CASE
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
    ELSE NULL
END;

UPDATE hr
SET hire_date = CASE
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
    ELSE NULL
END;

ALTER TABLE hr
MODIFY COLUMN birthdate DATE;

SELECT cast(termdate as date) FROM HR;

UPDATE hr
SET termdate= date(str_to_date(termdate,'%Y-%m-%d %H:%i:%s UTC'))
WHERE termdate IS NOT NULL AND termdate != '';

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

SELECT * FROM hr WHERE termdate = '';

ALTER TABLE hr
ADD COLUMN age INT AFTER birthdate ;

UPDATE hr
SET age =TIMESTAMPDIFF(YEAR,birthdate,CURDATE());

SELECT MIN(age) AS Youngest,MAX(age) AS Oldest FROM hr;

SELECT COUNT(*) FROM hr WHERE age < 18;




    