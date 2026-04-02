CREATE TABLE drivers (
                         id serial primary key,
                         first_name varchar,
                         last_name varchar,
                         license_number varchar
);

CREATE TABLE passengers (
                            id serial primary key,
                            first_name varchar,
                            phone varchar
);

CREATE TABLE cars (
                      id serial primary key,
                      model varchar,
                      plate_number varchar,
                      driver_id int references drivers (id)
);

drop table cars;

CREATE TABLE rides (
                       id serial primary key,
                       passenger_id int references passengers(id),
                       car_id int references cars(id),
                       start_location varchar,
                       end_location varchar,
                       ride_date date
);

CREATE TABLE payments (
                          id serial primary key,
                          ride_id int references rides(id),
                          payment_method varchar
);

insert into drivers(first_name,last_name,license_number) values('Alihan','Zhanarbekov','123456');
insert into passengers(first_name, phone) values('Zhazgul','0702558866');
insert into cars (model, plate_number, driver_id) values('Camri','A454B',1);
insert into rides(passenger_id,car_id, start_location,end_location,ride_date) values (1,1,'Osh bazar', 'Dordoi plazza','01.04.2026');
insert into payments (ride_id, payment_method) values (1,'Cach');

CREATE TABLE computer(
                         id serial,
                         name varchar,
                         brand varchar,
                         price varchar
);

CREATE TABLE cafe(
                     id serial,
                     name varchar,
                     address varchar
);

CREATE TABLE apartment(
                          id serial,
                          address varchar,
                          floor int,
                          rooms int
);

CREATE TABLE clothes(
                        id serial,
                        name varchar,
                        brand varchar,
                        size int,
                        price int
);

CREATE TABLE university(
                           id int,
                           name varchar,
                           address varchar
);
drop table university;

insert into computer (name, brand, price) values ('HP','Ryzen',50000);
insert into cafe (name, address) values ('Hi Tea','Chui 220');
insert into apartment (address, floor, rooms ) values ('M.Gvardiya', 10, 3);
insert into clothes (name, brand, size,price) values ('T-shirt', 'Zara', 42,5000);
insert into university (name, address) values ('Alo-Too','Ankara 18');
