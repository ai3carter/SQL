create table departments(
    dept_no varchar  not null primary key,
    dept_name varchar not null
);
create table employees(
    emp_no int not null primary key,
    birth_date date,
    first_name varchar not null,
    last_name varchar not null,
    gender varchar not null,
    hire_date date
);
create table dept_emp(
   emp_no int not null,
   dept_no varchar not null,
   from_date date,
   to_date date,
   foreign key(dept_no) references departments(dept_no),
    foreign key(emp_no) references employees(emp_no)
);
create table dept_manager(
   dept_no varchar not null,
   emp_no int not null,
   from_date date,
   to_date date,
   foreign key(dept_no) references departments(dept_no),
   foreign key(emp_no) references employees(emp_no)
);
create table salaries(
   emp_no int not null,
   salary int not null,
   from_date date,
   to_date date,
   foreign key(emp_no) references employees(emp_no)
);
create table titles(
   emp_no int not null,
   title varchar(30) not null,
   from_date date,
   to_date date,
   foreign key(emp_no) references employees(emp_no)
);
--queries
select * from titles
select * from salaries
select * from dept_manager
select * from departments
select * from employees
select * from dept_emp