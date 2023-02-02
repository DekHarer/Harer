Use Sem5
create table SRegistration
(
s_id int unique,
s_name varchar(255),
s_phone int ,
dept varchar(255),
dept_id int ,
class_id int unique,
primary key (s_id,s_name,s_phone,dept,dept_id,class_id)
)
create table S_Payment(
s_id int  unique ,
s_name varchar(255),
s_phone int unique,
dept varchar(255),
dept_id int ,
class_id int unique,

Constraint exam foreign key (s_id,s_name,s_phone,dept,dept_id,class_id) References  SRegistration(s_id,s_name,s_phone,dept,dept_id,class_id)


)
insert into SRegistration values (2,'Omar',4455,'SE',2000,003)
insert into S_Payment values(2,'Omar',4455,'SE',2000,003)
SELeCT*FROM S_Payment
select *from SRegistration


create table arday
(
st_id int primary key,
st_name varchar(255),
st_phone int,
Emailka nvarchar(255),
date_ofReg date,
st_address varchar(255),
st_age int,
st_class varchar(255),
st_dpt varchar(255),
parent_phone int);
insert into arday values(7,'osman',7777,'osm@','2020-11-8','Str',20,'B','S.E',8888) 
insert into arday values(8,'hassan',3333,'hassm@','2017-11-8','Str',20,'B','S.E',9999) 
insert into arday values(9,'moh',6666,'moha@','2020-11-8','Str',19,'B','S.E',6666) 
insert into arday values(10,'dek',2222,'dek@','2023-11-8','Str',20,'B','S.E',5555) 

select *from arday 
where st_id <= 10
select *from arday 
where st_id <>10
select *from arday 
where st_id >3
select *from arday 
where st_id between 1 and 5
select *from arday 
where st_name like 'Dek'
select *from arday 
where st_id = 1 or st_id =3 
select *from arday 
where st_id not like 4
select *from arday 
where parent_phone in (8888)

select *from arday 
where st_id between 1 and 8 and st_name in('Hamse')and Emailka like'@'and date_ofReg <>'2020-12-09'and st_address like 'Newhargeisa'
or st_age >= 19 and st_class ='C'  and st_dpt = 'S.E' and parent_phone >= 11;

select *from arday 
where st_id > 0 and st_name in('Hamse')and Emailka ='hamse@'and date_ofReg between '2020-12-09' and '2021-12-08'and
st_address like 'Newhargeisa' or st_age <= 19 and st_class ='C'and st_dpt = 'S.E' and parent_phone >=11;