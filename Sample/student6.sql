create database yaswanth;
use yaswanth;
create table student(ID int,Name varchar(30),Address varchar(30),CS int,Phy int,Maths int,TotalMark int);
insert into student values(1,"Sreerag","America",60,70,80,210);
insert into student values(2,"Yaswanth","Japan",90,90,80,260);
insert into student values(3,"Adil","Kozhikode",90,90,90,270);
insert into student values(4,"Arjun","Korea",90,90,70,250);
select*from student;
select*from student where Address="Kozhikode" or Address="Korea";
alter table student add Dept int  after Address;
alter table student modify Dept varchar(35);
select*from student;
update student set Dept="MCA" where ID=1;
update student set Dept="MECH" where ID=2;
update student set Dept="EEE" where ID=3;
update student set Dept="Civil" where ID=4;
select * from student order by Name desc;
update student set Address=NULL;
select max(TotalMark) from student;
select min(TotalMark) from student;
select avg(CS) from student;
select avg(Phy) from student;
select * from student where Dept like "_%l";
select * from student where Name like "A%";
alter table student drop TotalMark;
alter table student add TotalMark int  after Maths;
update student set TotalMark=CS+Phy+Maths;
alter table student add Age int  after Name;