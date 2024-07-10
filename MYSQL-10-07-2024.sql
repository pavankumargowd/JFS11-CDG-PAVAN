use codegnan;
create table users (userid int primary key not null,name varchar(100) not null,age int default 0);
create table orders (order_id int primary key,productname varchar(100),price int default 0,uid int not null,foreign key (uid) references users(userid));
desc orders;
insert into users values (1,'pavan',22);
select *from users;
insert into orders values (101,'soap',100,1);
select *from orders;
insert into users values (2,'kumar',29);
select *from users;
insert into orders values (102,'toothbrush',100,2);
select *from orders;
insert into orders values (103,'toothbrush',100,2);
select *from orders;


use amazon_clone;
create table orders1(ordersid int primary key not null,product_name varchar(100),price int default 0);
create table orders2(order_id int primary key,productname varchar(100),price int,oid int not null,foreign key (oid) references orders1(ordersid)); 
desc orders2;
insert into orders1 values (1,'biscuit',10);
select *from orders1;
insert into orders2 values (201,'toothbrush',50,1);
select *from orders2;
insert into orders2 values (202,'paste',50,3);
insert into orders1 values (2,'cholocate',10);
insert into orders2 values (202,'paste',50,2);
insert into orders2 values (203,'paste',50,2);


create table userorders(userid int primary key,name varchar(121),age int);
create table primaryorders(order_id int primary key,productname varchar(100),price int default 0,uoid int not null,foreign key (uoid) references userorders(userid));
desc primaryorders;
insert into userorders values (1,'pavan',22);
select *from userorders;
insert into primaryorders values (301,'chair',50,1);
select *from primaryorders;
insert into userorders values (2,'kumar',22);
insert into primaryorders values (302,'chair',50,2);




