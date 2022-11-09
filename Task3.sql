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