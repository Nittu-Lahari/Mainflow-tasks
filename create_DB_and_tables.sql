create database studentmanagement;
use studentmanagement;
create table students(
studentId Integer Primary Key auto_increment Not NULL,
Name varchar(50),
Gender varchar(1),
Age integer,
Grade varchar(10),
MathScore integer,
ScienceScore integer,
EnglishScore integer
);

