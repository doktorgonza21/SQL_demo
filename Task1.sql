-- Display all fields and all rows
select * 
from students

-- Display only user IDs
select id 
from students

-- Display only the username
select name 
from students

-- Display only user emails
select email 
from students

-- Display username and email
select name, email 
from students

-- Display id, name, email and creation date of users
select id, name, email, created_on 
from students

-- Display users where password is 12333
select * 
from students
where password = '12333'

-- Display users who were created 2021-03-26 00:00:00
select * 
from students
where created_on = '2021-03-26 00:00:00'

-- Display users where the name contains the word Anna
select *
from students
where name like '%Anna%'

-- Display users where there is 8 in the name at the end
select *
from students
where name like '%8'

-- Display users where the letter "A" is in the name in
select *
from students
where name like '%a%'

-- Display users who were created 2021-07-12 00:00:00
select *
from students
where created_on = '2021-07-12 00:00:00'

-- Display users who were created on 2021-07-12 00:00:00 and have a password of 1m313
select *
from students
where created_on = '2021-07-12 00:00:00' and password = '1m313'

-- Display users who were created on 2021-07-12 00:00:00 and have the word "Andrey" in their name
select *
from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%'

-- Display users who were created on 2021-07-12 00:00:00 and have the number 8 in their name
select *
from students
where created_on = '2021-07-12 00:00:00' and name like '%8%'

-- Display user whose id is equal to 110
select *
from students
where id = '110'

-- Display user whose id is equal to 153
select *
from students
where id = '153'

-- Display user whose id is greater than 140
select *
from students
where id > '140'

-- Display user whose id is less than 130
select *
from students
where id < '130'

-- Display user whose id is less than 127 or greater than 188
select *
from students
where id < '127' or id > '188'

-- Display user whose id is less than or equal to 137
select *
from students
where id <= '137'

-- Display user whose id is greater than or equal to 137
select *
from students
where id >= '137'

-- Display user whose id is greater than 180 but less than 190
select *
from students
where id > '180' and id < '190'

-- Display users where password is 12333, 1m313, 123313
select *
from students
where password = '12333' or password = '1m313' or password = '123313'

-- Display users where created_on is 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select *
from students
where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00'

-- Display minimum id
select min(id)
from students

-- Display maximum id
select max(id)
from students

-- Display the number of users
select count(id)
from students

-- Display user id, name, user creation date. Sort in ascending order by the date the user was added
select id, name, created_on
from students
order by created_on

-- Display user id, name, user creation date. Sort in descending order by the date the user was added
select id, name, created_on
from students
order by created_on desc



















