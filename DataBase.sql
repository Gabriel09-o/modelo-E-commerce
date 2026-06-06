CREATE DATABASE Carvajal;
USE Carvajal;

create table users (
id int primary key auto_increment,
username varchar(50) not null,
password varchar(20) not null,
rolId long not null
);

create table products (
id int auto_increment primary key,
name varchar(20),
price long,
stock long,
description varchar(100)
);

create table wish_list (
id int auto_increment primary key,
foreign key (products_id) references products (id)
)
