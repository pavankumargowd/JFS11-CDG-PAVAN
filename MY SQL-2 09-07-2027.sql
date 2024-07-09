create database office;
use office;
create table office(id int primary key,name varchar(100) not null,moblie bigint,address varchar(100) default'gooty');
desc office;
insert into office(id,name,moblie,address) values(1,'pavan',6281414772,'tdp');
select *from office;
insert into office(id,name,moblie,address) values(2,'gowd',6281414772,'guntakal');
select *from office;

create table office2(id int primary key auto_increment,name varchar(100) not null default'name',moblie bigint unique,address varchar(100) default 'gooty');
select*from office2;
insert into office2(name,moblie,address)values('mabu',8179759251,'nellore');
select*from office2;
insert into office2(name,moblie,address)values('kumar',8529759251,'atp');
select*from office2;

create table office4(id int primary key auto_increment,name varchar(100) not null,age int not null,salary int not null,moblie bigint,check((age>=10) and (salary>=10000)));
desc office4;
insert into office4(name,age,salary,moblie)values('charan',25,50000,8179658247);
select *from office4;
insert into office4(name,age,salary,moblie)values('raghu',24,50000,9619658247);
select *from office4;
insert into office4(name,age,salary,moblie)values('raghu',24,5000,9619658247);
select *from office4;
