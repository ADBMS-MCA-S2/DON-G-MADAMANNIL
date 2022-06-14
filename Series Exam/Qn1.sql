create database Don;
use Don;
create table Customer(cust_id integer(12) primary key,cust_name varchar(30));
create table item(item_id integer(12) primary key,item_name varchar(30),price integer(25));
create table sale(bill_no integer(12) primary key,bill_date date,cust_id integer(12),item_id integer(12),qty_sold integer(15), foreign key(cust_id) references Customer(cust_id) on delete cascade,foreign key(item_id) references item(item_id) on delete cascade);
insert into Customer values(101,"Don"),(102,"Ajil"),(103,"Hello"),(104,"hai"),(105,"Okbye");
insert into item values(201,"switch",250),(202,"bulb",100),(203,"wire",55),(204,"socket",500);
insert into sale values(301,"1996-05-06",101,201,5),(302,"2022-06-14",102,203,2),(303,"2020-05-06",105,204,5),(304,"2021-05-06",101,201,5);
select * from Customer;
select * from item;
select * from sale;
#1
select  Customer.cust_name,sale.item_id from Customer join sale on Customer.cust_id=sale.cust_id where sale.bill_date="2022-06-14";
#2
select sale.qty_sold,item.price,sale.qty_sold*item.price as "Final amount" from sale join item on item.item_id=sale.item_id;
#3
select cust_name from customer where cust_id in(select cust_id from sale where item_id in(select item_id from item where price>200)); 
#4
select cust_id,count(cust_id) from sale  group by cust_id;
#5
select item_name from item where item_id in(select item_id from sale where cust_id in(select cust_id from Customer where cust_id=105)) ;