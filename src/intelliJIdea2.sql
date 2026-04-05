CREATE TABLE works(
                      id serial primary key,
                      name varchar not null,
                      location varchar
);

CREATE TABLE positions(
                          id serial primary key,
                          name varchar not null,
                          salary decimal
);

CREATE TABLE employees(
                          id serial primary key,
                          first_name varchar,
                          last_name varchar,
                          age int,
                          email varchar,
                          works_id int references works(id),
                          positions_id int references positions(id),
                          project_id int references projects(id)

);

drop table employees;

CREATE TABLE projects(
                         id serial primary key,
                         name varchar,
                         data_of_written varchar
);

insert into works (name, location) values ('Translation Agency', 'Bishkek city');
insert into positions (name, salary) values ('Translator', 35000);
insert into projects (name, data_of_written) values ('Registration OOCO',21.10);
insert into employees (first_name, last_name, age, email, works_id, positions_id, project_id)
values ('Karima', 'Kaldarbaeva','20','k@email.com',1,1,1);

CREATE TABLE patients(
                         id            serial primary key,
                         first_name    varchar,
                         last_name     varchar,
                         date_of_birth date,
                         phone         varchar
);

CREATE TABLE doctors(
                        id            serial primary key,
                        first_name    varchar,
                        last_name     varchar,
                        speciality    varchar
);

CREATE TABLE departments(
                            id      serial primary key,
                            name    varchar,
                            floor   int
);

CREATE TABLE hospitals(
                          id serial,
                          name varchar,
                          address varchar,
                          department_id int references departments(id),
                          doctors_id int references doctors(id),
                          patients_id int references patients(id)
);

insert into departments (name, floor) values ('Pediatrician', 2);
insert into doctors (first_name, last_name, speciality) values ('Sumaya','Kaldarbaeva', 'Pediatrician');
insert into patients (first_name, last_name, date_of_birth, phone) values ('Fatima','Zhunusova','03.03.2019','0220586833');
insert into hospitals (name, address, department_id, doctors_id, patients_id) values ('Kyrgyz Turkish hospital','Fuchika',1,1,1);


CREATE TABLE stories(
                        id serial,
                        name varchar,
                        address varchar
);

CREATE TABLE phone(
                      id serial,
                      name varchar,
                      brand varchar,
                      price int
);

insert into stories (name, address) values ('Take me','Akhunbaeva');
insert into phone (name, brand, price) values ('Samsung','Ultra 25',50000);
