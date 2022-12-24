create database sportyshoes_db;
use sportyshoes_db;

create table user(
name varchar(100), 
password varchar(100),
id int NOT NULL AUTO_INCREMENT,
primary key(id));
insert into user values('admin','admin',1);
insert into user values('Rashmi','admin',2);
insert into user values('Matrix','admin',3);
insert into user values('Nick John','admin',4);
insert into user values('Simplilearn','admin',5);
insert into user values('Joson haile','admin',6);

create table product( id int NOT NULL AUTO_INCREMENT,
name varchar(100), 
category varchar(100),
primary key(id));

insert into product values(1,'Puma','Casual Shoes');
insert into product values(2,'Adidas','Sports Shoes');
insert into product values(3,'Nike','Formal Shoes');
insert into product values(4,'Mochi','Boots');
insert into product values(5,'DressBerry','Heels');
insert into product values(6,'Nike','Casual Shoes');
insert into product values(7,'Puma','Formal Shoes');
insert into product values(8,'Adidas','Formal Shoes');
insert into product values(9,'DressBerry','Formal Shoes');
insert into product values(10,'DressBerry','Casual Shoes');

 create table purchase(
id int not null auto_increment, 
name_id int, 
product_id int,
ts timestamp,
constraint name foreign key (name_id) references user(id),
constraint product foreign key (product_id) references product(id),
primary key (id));



select * from purchase;
insert into purchase values(1,1,1,'2022-12-22');
insert into purchase values(2,2,2,'2022-12-23');
insert into purchase values(3,3,3,'2022-11-10');
insert into purchase values(4,4,4,'2020-12-04');
insert into purchase values(5,1,1,'2020-12-04');
insert into purchase values(6,2,10,'2020-12-04');
insert into purchase values(7,3,4,'2020-12-04');
insert into purchase values(8,5,6,'2020-12-04');
insert into purchase values(9,6,9,'2020-12-04');
insert into purchase values(10,3,8,'2020-12-04');
insert into purchase values(11,3,4,'2020-12-23');
select * from product;


