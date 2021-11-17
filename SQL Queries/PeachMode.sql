create database PeachMode;

use PeachMode;

create table customer_details(
customer_id int,
customer_name varchar(30)not null,
customer_email varchar(40) unique,
customer_phone bigint unique,
customer_address varchar(50),
primary key (customer_id)
);

select*from customer_details;

show tables;

insert into customer_details values (1,'sahana','sahana@gmail.com','8456328988','mandya');
insert into customer_details values (2,'sangeetha','sangu@gmail.com','8456456778','kasargod');
insert into customer_details values (3,'sudeep','sudee@gmail.com','8456976544','bharathinagar'),(4,'srikanth','sri@gmail.com','8465783245','raichur'),
(5,'rachan','rach@gmail.com','8434455678','mysore'),(6,'sourabh','sou@gmail.com','8324567878','bijapur'), (7,'pallavi','pallu@gmail.com','8456324579','bangalore'),
(8,'dhanu','dhanu@gmail.com','8424567899','mangalore'),(9,'pooja','poo@gmail.com','84234356789','tumkur'),(10,'kavya','kav@gmail.com','8657897653','kollegal');

create table orders(
order_id int,
product_name varchar(30) not null,
order_amt decimal check(order_amt>100),
order_datetime datetime,
customer_ref int,
primary key (order_id),
foreign key(customer_ref)references customer_details(customer_id)
);

show tables;

select*from orders;

insert into orders values(100,'mobile',30000,'2021-11-10 19:25:30',1);
insert into orders values(101,'laptop',45000,'2021-11-15 05:30:00',2);
insert into orders values(102,'television',80000,'2021-11-01 02:30:00',3),(103,'camera',20000,'2021-11-02 23:12:00',4),
(104,'dress',8000,'2021-11-03 13:10:00',5),(105,'slipper',2000,'2021-11-04 14:22:00',6),(106,'cosmetics',5000,'2021-11-05 17:05:00',7),
(107,'bag',1500,'2021-11-06 15:00:30',8),(108,'jeans',3000,'2021-11-07 22:00:30',6),(109,'clock',2500,'2021-11-08 09:00:00',5),
(110,'watch',4000,'2021-11-09 19:00:00',9),(111,'cycle',10000,'2021-11-11 20:20:00',3);

select*from customer_details where customer_id=2;
select O.order_id,O.product_name,O.order_amt,O.order_datetime,O.customer_ref,C.customer_id,C.customer_name,C.customer_email from customer_details C inner join orders O on O.customer_ref=C.customer_id;
select*from customer_details C left join orders O on O.customer_ref=C.customer_id;
select*from customer_details C right join orders O on O.customer_ref=C.customer_id;