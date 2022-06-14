CREATE DEFINER=`root`@`localhost` PROCEDURE `markfi`(std_id integer(15),st_name varchar(30),ma integer(15))
BEGIN
if( ma<=1500 and ma>=990 )
then
insert into exam values(std_id,st_name,ma,"Distinction");
end if;
if( ma<=989 and ma>=900 )
then
insert into exam values(std_id,st_name,ma,"Firt class");
end if;
if( ma<=899 and ma>=825 )
then
insert into exam values(std_id,st_name,ma,"Second class");
end if;

END