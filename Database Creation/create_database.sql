-- Create Database
Create Database PEOPLE

-- Select the Database
Use PEOPLE
Go

-- Create Table
Create table TBLpeople (
    PersonID INT primary key,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
)

-- Insert 20 Sample Records
INSERT INTO TBLpeople (PersonID, FirstName, LastName, Age, Gender)
VALUES
(1, 'Smith', 'London', 'Male', 35000),
(2, 'Johnson', 'Manchester', 'Female', 42000),
(3, 'Williams', 'Liverpool', 'Male', 39000),
(4, 'Brown', 'Leeds', 'Female', 45000),
(5, 'Jones', 'Birmingham', 'Male', 38000),
(6, 'Garcia', 'Sheffield', 'Female', 47000),
(7, 'Miller', 'Bristol', 'Male', 41000),
(8, 'Davis', 'Cardiff', 'Female', 36000),
(9, 'Rodriguez', 'Glasgow', 'Male', 52000),
(10, 'Martinez', 'Edinburgh', 'Female', 49000),
(11, 'Hernandez', 'Oxford', 'Male', 43000),
(12, 'Lopez', 'Cambridge', 'Female', 46000),
(13, 'Gonzalez', 'York', 'Male', 40000),
(14, 'Wilson', 'Nottingham', 'Female', 44000),
(15, 'Anderson', 'Coventry', 'Male', 48000),
(16, 'Thomas', 'Leicester', 'Female', 37000),
(17, 'Taylor', 'Southampton', 'Male', 51000),
(18, 'Moore', 'Reading', 'Female', 39500),
(19, 'Jackson', 'Newcastle', 'Male', 54000),
(20, 'Martin', 'Portsmouth', 'Female', 46500);

Insert another 5
INSERT INTO TBLpeople VALUES
(21, 'White', 'Derby', 'Male', 43000),
(22, 'Harris', 'Exeter', 'Female', 41000),
(23, 'Clark', 'Norwich', 'Male', 45000),
(24, 'Lewis', 'Brighton', 'Female', 47000),
(25, 'Walker', 'Hull', 'Male', 39000);

BASIC SQL QUERIES - Questions
----------------------------------------------------------------

1.	Display all records from TBLpeople. 
select * 
from TBLpeople

2.	Display only the lastName and address columns. 
Select
  lastName, 
  address
from TBLpeople


3.	Display the record where people_id = 5. 
select *
from TBLpeople
where people_id = 5

4.	Display all employees whose Gender = 'Female'. 
select *
from TBLpeople
where Gender = 'Female';


5.	Display all employees with a salary greater than 45000. 
select *
from TBLpeople
where salary > 45000;

6.	Display all employees whose address is 'London'. 
select *
from TBLpeople
where address = 'London';


7.	Display all employees ordered by salary in ascending order. 
select *
from TBLpeople
order by salary Asc;

8.	Display all employees ordered by salary in descending order. 
select *
from TBLpeople
order by salary Desc

9.	Count the total number of employees in the table. 
select count(*) as TotalPeople
from TBLpeople

10.	Count the number of employees in each Gender group. 
select Gender,
       count(*) as Total
from TBLpeople
group by Gender

11.	Display the highest salary. 
select max(salary) as Highestsalary
from TBLpeople

12.	Display the lowest salary. 
select min(salary) AS Lowestsalary
from TBLpeople

13.	Display the average salary. 
select avg(salary) as Averagesalary
from TBLpeople

14.	Display the total of all salaries. 
select sum(salary) as Totalsalary
from TBLpeople

14.	Display employees whose salary is between 40000 and 50000. 
select *
from TBLpeople
where salary between 40000 and 50000

15.	Display employees whose lastName starts with 'M'. 
select *
from TBLpeople
where lastName like 'M%'

16.	Display employees whose lastName ends with 'n'. 
select *
from TBLpeople
where lastName like '%n';

