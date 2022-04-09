# Pewlett-Hackard-Analysis

## Overview
In this project we are going to help Pewlett-Hackard Company to determine how many employees will be retiring soon and which ones are eligible to retirement compensation and retirement mentorship, this information is really important because the company needs to make a plan to recruit and train in advance all the employees needed to avoid operational problems. We will be working with PostgreSQL, pgAdmin4 and 6 Human Resources databases, with the following ERD.
![Screen Shot 2022-04-08 at 11 12 21 PM](https://user-images.githubusercontent.com/43548929/162559156-fb048b27-47ed-42cc-9ce3-ce0bdad2e098.png)

## Results
After looking in all the data, we performed some queries to establish new relationships and created new tables to display only the information we required.
** We created "Retirement_titles" table to get the information of the  employees born between January 1, 1952 and December 31, 1955, by joining *employees* and *titles* tables.
** We created *uniqye_title* table to hold the filtered the data with only the employees that are still working at the company and their current title.
** We created *retiring_titles* table, to know how many employees per title are about to retire.
In the second part we need to determine the mentorship eligibility.
** Created a new table by joining 3 tables *employees, dep_emp and titles* to to get all the current employees and their current position of those whose birth dates are between January 1, 1965 and December 31, 1965

## Summary
** We can know by counting unique_titles table that there will be 72,458 roles to be filled in the near future,  The total number of current employees is 240,125, sor about 30% of the employees will be retiring soon.
** There are only 1549 employees in the mentorship program, so there are not enough people to prepare the next generation of employyes.
