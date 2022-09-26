create database practice;
use practice;
create table cust(
cid int not null auto_increment primary key,
cname varchar(100),
cemail varchar(100)
);
select *from cust;
insert into cust(cname,cemail) values("romi","130@");
insert into cust(cname,cemail) values("guru","110@");
insert into cust(cname,cemail) values("rini","168@");
insert into cust(cname,cemail) values("charu","140@");

create table cust_order(
orderid int not null auto_increment primary key,
order_date date,
order_amount int,
cid int, foreign key(cid) references cust(cid)
);
desc cust_order;
insert into cust_order(orderid, order_date, order_amount, cid) values(1, '2022/03/20',50,1);
insert into cust_order(orderid, order_date, order_amount, cid) values(2, '2022/03/21',12,1);

select *from cust_order;
select *from cust, cust_order;

-- update
update cust set cname='sweety' where cid=1;
update cust set cname='sweety' where cid=1;


select *from cust;


