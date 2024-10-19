create table `student` (
 `roll no` int not null, 
 `name` varchar (30) null,
 `age` varchar (30) null,
 `city` varchar (30) null,
 `stream`varchar (30) null,
 Primary key (`roll no`));
 
 select * from student;
 insert into `student`(`roll no`,`name`,`age`,`city`,`stream`,`total marks`) values ('1','brenda','40','bda','teaching','100');
insert into `student`(`roll no`,`name`,`age`,`city`,`stream`,`total marks`) values ('2','karl','26','dla','it','200');
insert into `student`(`roll no`,`name`,`age`,`city`,`stream`,`total marks`) values ('3','Dan','32','yde','law','300');
 insert into `student`(`roll no`,`name`,`age`,`city`,`stream`,`total marks`) values ('4','joe','37','buea','pw','400');
 insert into `student` values ('5','divine','36','limbe','BA','500');
 
 ,,,creating new table
 create table student_old select * from student;
 
 select * from student_old;
 
 ,,,..count
 select count(*) from student;
 
 ,,,select random
 select * from student order by rand() limit 4;
 
 ...select sum
 Select SUM(total marks) from student;
 
 