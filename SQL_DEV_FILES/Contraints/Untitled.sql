use xyz;

create table temp1(
	id INT UNIQUE
);

insert into temp1 values(101);
insert into temp1 values(101);
-- 09:04:56	insert into temp1 values(101)	Error Code: 1062. Duplicate entry '101' for key 'temp1.id'	0.0040 sec 
-- if already have a value added in unique contraint, then we wont be able to add that again. 

select * from temp1;