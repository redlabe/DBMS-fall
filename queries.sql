--insert statements
insert into employee values(6,'manila','designer','989383','f');
insert into employee values(7,'sandeep','manager','838573','m');

--update statements
update employee set role = 'asst manager' where employee_id = 6;
update employee set gender = 'f',name = 'rose' where employee_id = 7;

--delete statement
delete from employee where employee_id = 7;

--simple select
select * from employee where role = 'manager';

--complex select
select * from employee, team;
select e.name, p.name from product p, employee e, team t where t.product_id = p.product_id and t.employee_id = e.employee_id;

--summary queries
select count(*) from employee;
select avg(cost) from demo;
select sum(cost) from demo;

--multitable query
select p.name, p.description, s.from_date, s.to_date from sales s, product p where p.product_id = s.product_id;