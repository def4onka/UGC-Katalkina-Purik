create table Employee (
	lastname text not null, 
	firstname text not null, 
	secondname text, 
	passport bigint primary key, 
	inn bigint not null, 
	birthday date not null); 
create table Practice (
	id bigint primary key, 
	pra_title text not null); 
create table Project (
	pro_title text primary key, 
	datestart date not null, 
	dateend date not null, 
	price bigint not null, 
	id_practice bigint references Practice(id)); 
create table Department (
	dep_title text primary key, 
	id_practice bigint references 
	Practice(id)); 
create table Job (
	passport bigint references Employee(passport), 
	dep_title text references 
	Department(dep_title), 
	post text not null, 
	primary key(passport, dep_title)); 
create table GetIn (
	passport bigint references Employee(passport), 
	pro_title text references Project(pro_title), 
	primary key(passport,pro_title));
