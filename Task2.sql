-- DDL tasks for create tables and etc.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
)

insert into employees(employee_name)
values ('Max'), ('Steven'), ('Sergey'), ('Tolya'),('Lina'), 
('Tina'), ('Mila'), ('Katya'), ('Yulija'), ('Dmitry'),
('Denis'), ('Ivan'), ('Sergey'), ('Max'), ('Olya'),
('Masha'), ('Olga'), ('Katya'), ('Sasha'), ('Ivan'),
('Anatoly'), ('Sergey'), ('Stepan'), ('Sara'), ('Dmitry'),
('Katya'), ('Sergey'), ('Sasha'), ('Lina'), ('Masha'),
('Denis'), ('Pavel'), ('Sten'), ('Misha'), ('Ivan'),
('Olga'), ('Yulia'), ('Gennady'), ('Denis'), ('Anton'),
('Kolya'), ('Anna'), ('Nastya'), ('Vitaly'), ('Pavel'),
('Gena'), ('Rita'), ('Kseniya'), ('Nastya'), ('Sergey'),
('Sasha'), ('Olga'), ('Max'), ('Pavel'), ('Luda'),
('Rodion'), ('Kurt'), ('Sara'), ('Mara'), ('Dora'),
('Lora'), ('Fedya'), ('Kolya'), ('Yulia'), ('Steve'),
('Gans'), ('Paul'), ('Martin'), ('Oleg'), ('Stenly')

create table salary (
id serial primary key,
monthly_salary int not null
)

insert into salary(monthly_salary)
values (1000), (1100), (1200), (1300),
(1400), (1500), (1600), (1700), (1800),
(1900), (2000), (2100), (2200), (2300),
(2400), (2500)

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null,
foreign key(employee_id)
	references employees(id),
foreign key(salary_id)
	references salary(id)
)

insert into employee_salary(employee_id, salary_id)
values (1, 5), (2,1), (3, 1), (4, 4), (5, 2), 
(6, 1), (7, 5), (8, 3), (9, 10), (10, 15), 
(11, 13), (12, 2), (13, 13), (14, 11), (15, 12),
(16, 14), (17, 2), (18, 4), (19, 8), (20, 9),
(21, 11), (22, 2), (23, 1), (24, 5), (25, 3),
(26, 7), (27, 9), (28, 10), (29, 6), (30, 7),
(31, 1), (32, 3), (33, 4), (34, 8), (35, 9),
(36, 2), (37, 13), (38, 11), (39, 12), (40, 4)

create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key(employee_id)
	references employees(id),
foreign key(role_id)
	references roles(id)
)

insert into roles_employee(employee_id, role_id)
values (1, 1), (2, 5), (3, 3), (4, 9), (5, 2),
(6, 7), (7, 20), (8, 19), (9, 18), (10, 17),
(11, 16), (12, 15), (13, 14), (14, 13), (15, 12),
(16, 11), (17, 10), (18, 9), (19, 8), (20, 7),
(21, 6), (22, 5), (23, 4), (24, 3), (25, 2),
(26, 1), (27, 1), (28, 5), (29, 2), (30, 3),
(31, 5), (32, 1), (33, 4), (34, 8), (35, 10),
(36, 11), (37, 3), (38, 2), (39, 9), (40, 6)

create table roles (
id serial primary key,
role_name int not null
)

alter table roles 
alter column role_name type varchar(30)

insert into roles(role_name)
values ('Junior Python developer'), ('Middle Python developer'),
('Senior Python developer'), ('Junior Java developer'), ('Middle Java developer'),
('Senior Java developer'), ('Junior JavaScript developer'), ('Middle JavaScript developer'),
('Senior JavaScript developer'), ('Junior Manual QA engineer'), ('Middle Manual QA engineer'), 
('Senior Manual QA engineer'), ('Project Manager'), ('Designer'), ('HR'),
('CEO'), ('Sales manager'), ('Junior Automation QA engineer'), ('Middle Automation QA engineer'), 
('Senior Automation QA engineer')

create table city(
id serial primary key,
city_name varchar(40) unique not null
)

create table person(
id serial primary key,
person_name varchar(40),
city_id int not null
)

insert into city(city_name)
values ('Kyiv'), ('Minsk'), ('Berlin'), ('Lviv'), ('Kharkiv'), ('Dnipro')

insert into person(person_name, city_id)
values ('Stepan', 4), ('Ivan', 1), ('Olga', 2), ('Sergey', 3), ('Marina', 5), ('Roman', 9), ('Sara', 7)

select person.person_name, city.city_name
from person join city
on person.city_id = city.id

select person.person_name, person.city_id, city.city_name, city.id
from person join city
on person.city_id = city.id

select person.person_name, person.city_id, city.city_name, city.id
from person left join city
on person.city_id = city.id

select person.person_name, person.city_id, city.city_name, city.id
from person right join city
on person.city_id = city.id

select person.person_name, person.city_id, city.city_name, city.id
from person full join city
on person.city_id = city.id

create table phones_apple(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

create table phones_samsung(
 id serial primary key,
 model varchar(40),
 ram int not null,
 front_camera int,
 price int
)

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300), ('A50', 8, 10, 400), ('A52', 8, 16, 500),
('S20', 8, 24, 1500), ('S21', 8, 12, 1000), ('S22', 6, 12, 1200),
('A71', 6, 12, 1200), ('A91', 4, 12, 1900), ('A57', 8, 8, 900),
('A32', 8, 4, 800), ('A33', 8, 5, 750), ('A43', 8, 5, 850)

insert into phones_samsung(model, ram, front_camera, price)
values ('A65', 6, 10, 350), ('A75', 8, 10, 450), ('A85', 4, 16, 550),
('A95', 12, 10, 650), ('A105', 8, 12, 760), ('A115', 6, 10, 820)

insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400), ('11', 6, 10, 700), ('12', 8, 12, 1000),
('7', 4, 12, 400), ('XR', 6, 12, 800), ('XS', 6, 12, 1000),
('13', 6, 12, 1500), ('8', 4, 10, 700), ('SE2020', 6, 8, 700),
('X65', 6, 10, 350), ('X75', 8, 10, 450), ('X85', 4, 16, 550),
('X95', 12, 10, 650), ('X105', 8, 12, 760), ('X115', 6, 10, 820)

create table samsung_orders(
 id serial primary key,
 phone_id int
)

create table apple_orders(
 id serial primary key,
 phone_id int
)

insert into apple_orders(phone_id)
values (3), (9), (5), (1), (4)
   
insert into samsung_orders(phone_id)
values (2), (1), (5)   


