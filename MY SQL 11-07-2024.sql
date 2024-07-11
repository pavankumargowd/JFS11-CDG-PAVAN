use school;
create table studentdata (id int,name varchar(100),studsubject varchar(100),marks int default 0);
desc studentdata ;
insert into studentdata values(1,'pavan','english',90),(1,'pavan','maths',80),(1,'pavan','social',90);
select *from studentdata ;
insert into studentdata values(2,'kumar','english',90),(2,'kumar','maths',80),(2,'kumar','social',99);

insert into studentdata values(3,'mabu','english',99),(3,'mabu','maths',9),(3,'mabu','social',9);

insert into studentdata values(4,'gowd','english',91),(4,'gowd','maths',80),(4,'gowd','social',95);

insert into studentdata values(5,'ganesh','english',90),(5,'ganesh','maths',80),(5,'ganesh','social',99);
select *from studentdata;

select count(id) from studentdata;
select sum(id) from studentdata;

select count(marks) from studentdata;
select avg(id) from studentdata;
select min(marks) from studentdata;
select max(id) from studentdata;
select count(studsubject) from studentdata;
select avg(marks) from studentdata;
select min(marks) from studentdata;

-- i need total marks records for each student;
select id,sum(marks)from studentdata group by id;
select id,sum(marks) as total_marks from studentdata group by id;

select id,marks as english_marks from studentdata where studsubject ='english';
select id,marks as maths_marks from studentdata where studsubject ='maths';
select id,marks as social_marks from studentdata where studsubject ='social';
select id,name,sum(marks) as total_marks from studentdata group by id,name;

create table finalmarks(id int primary key,studentname varchar(100),studentmarks int);
select *from finalmarks;
insert into finalmarks select id,name,sum(marks) as total_marks from studentdata group by id,name;
select *from finalmarks;

select id,name,sum(marks) as total_marks from studentdata group by id,name having total_marks >=266;
select id,name,sum(marks) as total_marks from studentdata group by id,name having total_marks >=100 order by total_marks desc;
select id,name,sum(marks) as total_marks from studentdata group by id,name having total_marks >=100 order by total_marks asc;






