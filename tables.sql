create table Employee (
	lastname text not null, 
	firstname text not null, 
	secondname text, 
	passport bigint primary key, 
	inn bigint not null unique, 
	birthday date not null); 
create table Practice (
	pra_id bigint primary key, 
	pra_title text not null unique); 
create table Project (
	pro_id bigint not null,
	pro_title text not null unique, 
	datestart date not null, 
	dateend date not null, 
	price bigint not null, 
	id_practice bigint not null,
	primary key (pro_id),
	foreign key (id_practice) references Practice(pra_id)); 
create table Department (
	dep_id bigint not null,
	dep_title text not null unique, 
	id_practice bigint not null,
	primary key (dep_id),
	foreign key (id_practice) references Practice(pra_id)); 
create table Job (
	passport bigint references Employee(passport), 
	dep_id bigint references Department(dep_id), 
	post text not null, 
	primary key(passport, dep_id, post)); 
create table GetIn (
	passport bigint references Employee(passport), 
	pro_id bigint references Project(pro_id),
	primary key(passport,pro_id));
