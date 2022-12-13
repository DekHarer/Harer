select *from tilm_category;
select *from Category;
select *from actor;
select *from tilm_actor ;
Select *from Staff ;
Select *from Language;
select *FROM  iNVENTORY;
Select *from rental;
select *FROM store;
SELECT * FROM gollis.address;
SELECT * FROM gollis.payment;
select *from FILM;
sELECT *FROM customer;


create table tilm_category (
tilm_id smallint(3),
Category_id TinyInt(3),
Last_update timestamp
);
select *from tilm_category;
insert into tilm_category  values (125,33,'2022-11-09 07:10:00' ); 

create table Category(
Category_id tinyint(3),
Name varchar(25),
Last_update TIMESTAMP
);
select *from Category;

insert into Category  values (13,'OS','2022-11-09 07:30:00'); 

select *from Category;
SET SQL_SAFE_UPDATES = 0;

UPDATE  Category
SET Category_id =14 where Name ='OS';

create table actor (
actor_id smallint(3),
First_name varchar(45),
Last_name varchar(45),
Last_update timestamp 
);

select *from actor;
Insert  into actor values (24,'Abdifatah','Ali','2022-11-09 07:14:12');

create table tilm_actor(
actor_id smallint auto_increment not null primary key,
film_id smallint ,
Last_update timestamp
);
select *from tilm_actor ;
Insert into tilm_actor values (null,777,'2022-11-10 011:20:40');
Create table  Language (
Language_id smallint(3),
NAME VARCHAR(20),
LAST_UPDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
Select *from Language;
insert into Language (Language_id,NAME)values(55,'Tomb Rider ');

Create Table FILM(
Film_id smallint (3) NOT NULL primary key  auto_increment,
TITLE VARCHAR(255),
DESCRIPTION TEXT,
RELEASE_YEAR YEAR,
Language_id TINYINT(3),
ORIGINAL_Language VARCHAR(255),
RENTAL_DURATION TINYINT(3),
RENTAL_RATE DECIMAL (4,2),
Replacement_cost DECIMAL (5,2),
LENGTH SMALLINT(5),
Rating Enum ('......'),
Special_features SET('......'),
LAST_UPDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
select *from FILM;
insert into FILM (TITLE,DESCRIPTION,RELEASE_YEAR,Language_id,ORIGINAL_Language,RENTAL_DURATION,RENTAL_RATE,Replacement_cost,
LENGTH,Rating,Special_features)values('See 2020','This film is about a real Story in 1768','2020',88,'Norwichian',
3,5.64,223.45,8,null,'......');

create table iNVENTORY (
INVENTORY_ID mediumint(8),
FILM_ID smallint(3),
STORE_ID tinyint(3),
Last_updete  timestamp default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
select *FROM  iNVENTORY;
CREATE index INDEXES ON iNVENTORY (
INVENTORY_ID,FILM_ID,STORE_ID,LAST_UPDATE);
sELECT *FROM iNVENTORY;
Insert into iNVENTORY  (INVENTORY_ID,FILM_ID,STORE_ID)values (3215,356,98);

create table Store (
Store_id tinyint(3) primary key not null auto_increment,
Manager_Staff_id Tinyint(3),
Address_ID SMALLINT(5),
LAST_UPDATE TIMESTAMP default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
select *FROM store;
insert into store (Manager_Staff_id,Address_ID)values(105,1120);

Create table Staff(
Staff_id tinyint(3) primary key not null auto_increment,
First_Name varchar(45),
Last_Name varchar(15),
Address_id smallint(6),
PICTURE blob,
EMAIL VARCHAR(45),
STORE_ID tinyint(5),
ACTIVE TINYINT(1),
usarname varchar(46),
Password varchar(40),
LAST_UPDATE TIMESTAMP default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
Select *from Staff ;
Insert into Staff(First_Name,Last_Name,Address_id,PICTURE,EMAIL,STORE_ID,ACTIVE,usarname,Password)values
('Ibrahem','Kalid',458,('This is Blob Description'),'kalidr99@gmail.com',
104,3,'Kalid45','kalidrh65367');

create table rental (
rental_id tinyint(3)primary key not null auto_increment,
rental_Date datetime default current_timestamp ,
inventory_id mediumint(8),
Customer_id smallint(5),
Return_date datetime default '2023-09-09',
Staff_id tinyint(3),
Last_update TIMESTAMP default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
Select *from rental;
Insert into rental (inventory_id,Customer_id,Staff_id)values(1125,001,098);

SELECT * FROM gollis.rental;
SELECT * FROM gollis.address;
describe address;
insert into address(Address,Address2,District,City_id,Postal_code,Phone)values('Road-num322 str','26 june-str','Hargeisa',2322,'	M.Haybe ',+25262322);
create table Customer (
Customer_id int primary key not null auto_increment,
Store_id int,
First_name varchar(255),
Last_name varchar(255),
Email varchar(50),
Address_id int,
Active int,
create_date datetime default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP,
Last_update TIMESTAMP default CURRENT_TIMESTAMP  ON UPDATE CURRENT_TIMESTAMP
);
sELECT *FROM customer;
insert into customer (Store_id,First_name,Last_name,Email,Address_id,Active) values (335,'Farah','Ali','ali@gmail.com',2223,7);

 
Describe customer
