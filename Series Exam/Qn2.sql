use Don;
create table exam(std_id integer(15),name varchar(30),mark integer(30),category varchar(50));
call markfi(101,"Don",1500);
call markfi(102,"Ajil",950);
call markfi(102,"Gopu",826);
select * from exam;