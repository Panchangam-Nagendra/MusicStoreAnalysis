create database music_database
use music_database


--creating table---
--we create table skeleton here and import the data from excel--



create table emp(
emp_id varchar(50) primary key,
last_name varchar(50),
first_name varchar(50),
title varchar(50),
reports_to varchar(30),
levels varchar(10),
birthdate datetime,
hire_date datetime,
address varchar(120),
city varchar(50),
states varchar(50),
country varchar(50),
postal_code varchar(25),
phone_number varchar(80),
fax varchar(30),
email varchar(30)
)
-- we use datetime function because timestamp function can be used only once in a table)

select * from emp

--creating table customers--

create table customer(
customer_id varchar(30) primary key,
first_name varchar(30),
last_name varchar(30),
company varchar(30),
addres varchar(30),
city varchar(30),
stat varchar(30),
country varchar(30),
postal_code int,
phone varchar(30),
fax varchar(30),
email varchar(30),
support_rep_id varchar(30)
)
select * from customer

--create table invoice--

create table invoice(
invoice_id VARCHAR(30) PRIMARY KEY,
customer_id VARCHAR(30),
invoice_date datetime,
billing_address VARCHAR(120),
billing_city VARCHAR(30),
billing_state VARCHAR(30),
billing_country VARCHAR(30),
billing_postal VARCHAR(30),
total FLOAT)

select * from invoice

--create invoice_line--

create table invoice_line(
invoice_line_id int primary key,
invoice_id int,
track_id int,
unit_price float,
quantity int)

select * from invoice_line


--create tabe track--
CREATE TABLE track(
track_id int PRIMARY KEY,
name VARCHAR(80),
album_id int,
media_type_id int,
genre_id int,
composer VARCHAR(80),
milliseconds float,
bytes bigINT,
unit_price float)

select * from track

-- create table playttlist--

create table playttlist(
playlist_id int primary key,
name varchar(60))

select * from playttlist


--create table playlist_track--

create table playlist_track(
playlist_id int,
track_id int)

--creatng tableartist--
create table artist(
artist_id int primary key,
name varchar(80)
)

select * from artist

--album table--
create table album(
album_id int primary key,
title varchar(80),
artist_id int
)

select * from album


--media type table--



CREATE TABLE media_type(
media_type_id int PRIMARY KEY,
name VARCHAR(50))

select * from media_type


--create table genre--

CREATE TABLE genre(
genre_id int PRIMARY KEY,
name VARCHAR(30))

select * from genre


