--lesson2_db database
create database lesson2_db;

create database lesson2_copy_db;

create schema lesson2_schema;

create table lesson2_schema.student(first_name varchar(50), last_name varchar(50))

set search_path = lesson2_schema, postgres, lesson2_db;
select * from student

select * from information_schema.columns where table_name = 'student'
select * from information_schema.columns where table_name = 'teacher'

create table teacher(first_name varchar(50), address varchar(50))
/*
this is just some
multi-line comment
*/

-- alter
alter table teacher alter column address type varchar(200)
alter table student drop column last_name
alter table student add column student_id integer, add column year_of_birth integer

alter database lesson2_copy_db rename to lesson2
alter table student rename column student_id to st_id

create schema schema2
alter table teacher set schema schema2

drop database test_db
drop schema schema2 cascade
drop schema lesson2_schema cascade

-- lesson2 database
create schema test

alter schema test rename to private

set search_path = private, postgres, lesson2;

create table student(first_name varchar(50), last_name varchar(50))

select * from student

truncate table student

insert into student values ('Mickey', 'Mouse')