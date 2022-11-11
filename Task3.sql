-- Display all employees about the salary is in the database, along with salaries
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id

-- Display all employees whose salary is less than 2000
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
where monthly_salary < 2000

-- Display all salary items, but no employee is assigned to them
select employees.employee_name, salary.monthly_salary
from employees right join employee_salary
on employees.id = employee_salary.employee_id
right join salary
on employee_salary.salary_id = salary.id
where employee_name is null

-- Display all salary positions less than 2000 but no employee is assigned to them
select employees.employee_name, salary.monthly_salary
from employees right join employee_salary
on employees.id = employee_salary.employee_id
right join salary
on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000

-- Find all employees who have not received a salary
select employees.employee_name, salary.monthly_salary
from employees full join employee_salary
on employees.id = employee_salary.employee_id
full join salary
on employee_salary.salary_id = salary.id
where monthly_salary is null

-- Display all employees with their job titles
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id

-- Display names and titles of Java developers only
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Java %'

-- Display names and titles of only Python developers
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Python %'

-- Display the names and titles of all QA engineers
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA %'

-- Display names and position of manual QA engineers
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Manual QA %'

-- Display names and position of QA automation
select employees.employee_name, roles.role_name
from employees join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Automation QA %'

-- Display the names and salaries of junior specialists
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior %'

-- Display names and salaries of Middle specialists
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Middle %'

-- Display names and salaries of senior specialists
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Senior %'

-- Display salaries of Java developers
select salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Java %'

-- Display salaries of Python developers
select salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Python %'

-- Display the names and salaries of junior Python developers
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior Python %'

-- Display names and salaries of Middle JS developers
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Middle JavaScript %'

-- Display the names and salaries of Senior Java Developers
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Senior Java %'

-- Display Salaries of Junior QA Engineers
select employees.employee_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior %QA %'

-- Display the average salary of all junior specialists
select round(avg(salary.monthly_salary))
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Junior %'

-- Display the amount of salaries of JS developers
select sum(salary.monthly_salary)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%JavaScript %'

-- Display the minimum salary of QA engineers
select min(salary.monthly_salary)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA %'

-- Display the maximum salary of QA engineers
select max(salary.monthly_salary)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA %'

-- Display the number of QA engineers
select count(employees.employee_name)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%QA %'

-- Display the number of Middle specialists
select count(employees.employee_name)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '%Middle %'

-- Display the number of developers
select count(employees.employee_name)
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '% developer%'

-- Get developer salary
select salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where role_name like '% developer%'

-- Display names, positions and salaries of all specialists in ascending order
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
order by monthly_salary

-- Display the names, positions and salary of all specialists in ascending order whose salary is from 1700 to 2300
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where monthly_salary >= 1700 and monthly_salary <= 2300
order by monthly_salary

-- Display the names, positions and salary of all specialists in ascending order whose salary is less than 2300
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where monthly_salary < 2300
order by monthly_salary

-- Display the names, positions and salary of all specialists in ascending order whose salary is equal to 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.monthly_salary
from employees join employee_salary
on employees.id = employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles_employee
on employees.id = roles_employee.employee_id
join roles
on roles_employee.role_id = roles.id
where monthly_salary = 1100 OR monthly_salary = 1500 OR monthly_salary = 2000
order by monthly_salary