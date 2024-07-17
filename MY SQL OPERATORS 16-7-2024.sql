--- comparsion opertors--
use codegnan;
create table employee1(id int,name varchar(100),saraly int);
insert into employee1 values (1,'pavan',10000),(2,'kumar',20000),(3,'mabu',15000),(4,'pavan1',50000);
select*from employee1;
select * from employee1 where saraly = 10000 ;
select * from employee1 where saraly != 10000;
select * from employee1 where saraly >= 15000 ;
select * from employee1 where saraly >15000 ;
select * from employee1 where saraly = 20000 ;
select * from employee1 where saraly <= 10000 ;
select * from employee1 where saraly < 10000 ;


--- logical--
insert into employee1 values (5,'charan',10000);
select*from employee1;
select * from employee1 where saraly = 10000 and name = 'pavan';
select * from employee1 where saraly = 10000 or name = 'pavan';

alter table employee1 add column age int; 
select*from employee1;
set sql_safe_updates = 0;
update employee1 set age=20 where saraly>10000;

-- null oper --
select *from employee1 where age is null;
select *from employee1 where age is not null;

--- special oper ---
select *from employee1 where saraly between 10000 and 20000;
select *from employee1 where saraly in (10000,50000);

--- case oper --
alter table employee1 add column bonus varchar(99);
select *,
		case 
        when saraly <=10000 then '0x'
		when saraly <=15000 then '1x'
		when saraly <=20000 then '2x'
		when saraly <=50000 then '3x'
		end as bonus from employee1;
select *,
		case 
                when saraly <=10000 then '0x'
		when saraly >=15000 then '4x'
		when saraly >=20000 then '5x'
		when saraly >=50000 then '6x'
        end as result from employee1;
          
        





