use codegnan;
create table customers(id int primary key auto_increment,name varchar(100),age int,status varchar(100));
desc customers;
insert into customers (name,age,status) values ('pavan',20,'minor'),('kumar',21,'minor'),('mabu',21,'minor'),('gowd',17,'major');
select * from customers;
insert into customers (name,age,status) values ('pavan1',20,'minor'),('kumar2',21,'minor'),('mabu3',21,'minor'),('gowd4',17,'major');
insert into customers (name,age) values ('pavan2',20),('kumar4',21),('mabu5',21),('gowd6',17);
select name,(id+age) as newdata from customers;
select name,id,age,(age-id) as newdata from customers;
select name,id,age,(id*10) as newdata from customers;
select name,id,age,(age/2) as newdata from customers;
select name,id,age,(age%id) as newdata from customers;