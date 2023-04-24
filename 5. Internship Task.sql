-- Data Analyst Intern Task -- 


-- Queries 

-- 1. What is the avg sal of emp by department ?
select id ,dept_name,
round(avg(salary)) as avg_sal
from employee_sal 
group by dept_name ;


-- 2. Which department has the highest number of employees ?
select dept_name, count(id) as n_employees
from employee_sal
group by dept_name
order by id;


-- 3. What is the distribution of gender in the company ?
select Dept_name, gender, count(gender) as gender_distributions 
from employee_sal
group by dept_name, gender
order by dept_name ;


-- 4. Is there a correlation between years of experience and salary ?
select experience_years, salary 
from employee_sal
group by experience_years, salary
order by experience_years ;


-- 5. Which Department has the highest avg salary ?
select
 dept_name,
 round(avg(salary)) as highest_avg_salary
 from employee_sal
 group by dept_name
 order by highest_avg_salary desc ;



-- Employees details

-- 1. total employees
select count(id) as 'total employees'
from employee_sal ;


-- 2. no of male employees
select count(id) as 'male employee'
from employee_sal
where gender = "Male" ;


-- 3. no of male employees
select count(id) as 'female employee'
from employee_sal
where gender = "female" ;


-- 4. no of departments
select count(distinct(dept_name)) as 'no of departments'
from employee_sal ;



