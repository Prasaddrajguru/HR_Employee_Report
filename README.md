# HR_Employee_Report
The dataset underwent a process of cleaning, which involved removing inconsistencies, errors, and irrelevant data to ensure its accuracy and reliability. Subsequently, it was queried using MySQL, a popular relational database management system.  Finally, the cleaned and queried data was visualized using PowerBI.

![image](https://github.com/Prasaddrajguru/HR_Employee_Report/assets/148168175/2192ead6-00ff-4c85-86c8-921bd1662290)

![image](https://github.com/Prasaddrajguru/HR_Employee_Report/assets/148168175/5b1a0aa9-dd08-4517-bb56-a07b0569a3c6)

## Data Used

Data - HR Data with over 22000 rows from the year 2000 to 2020.

Data Cleaning & Analysis Tool - MySQL Workbench

Data Visualization Tool - PowerBI

## Questions

1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments and job titles?
7. What is the distribution of job titles across the company?
8. Which department has the highest turnover rate?
9. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?

## Summary of Findings

- There are more male employees
- White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
- The youngest employee is 20 years old and the oldest is 57 years old
- 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-34 followed by 35-44 while the smallest group was 55-64.\
- A large number of employees work at the headquarters versus remotely.
- The average length of employment for terminated employees is around 8 years.
- The gender distribution across departments is fairly balanced but there are generally more male than female employees.
- The Marketing department has the highest turnover rate followed by Training. The least turn over rate are in the Research and development, Support and Legal departments.
- A large number of employees come from the state of Ohio.
- The net change in employees has increased over the years.
- The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.

  ## Limitations

- Some records had negative ages and these were excluded during querying. Ages used were 18 years and above.
- Some termdates were far into the future and were not included in the analysis. The only term dates used were those less than or equal to the current date.
- termdate column's datatypes was txt, so need to convert the column datatype to date in the queries.
