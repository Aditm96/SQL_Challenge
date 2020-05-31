create table deptmanager(
dept_no varchar(50) not null,
emp_no varchar(50) not null
);

create table department(
dept_no varchar(50) not null,
deto_name varchar(50) not null
);

create table dept_emp(
emp_no varchar(50) not null,
dept_no varchar(50) not null
);

create table employees(
emp_no varchar(50) not null,
emp_title_id varchar(50) not null,
birth_date date,
first_name varchar(50) not null,
last_name varchar(50) not null,
sex varchar(50) not null,
hire_date date
);

create table salaries(
emp_no varchar(50) not null,
salary varchar(50) not null
);

create table titles(
title_id varchar(50) not null,
title varchar(50) not null
);