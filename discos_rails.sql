
drop database if exists discos_development ;
drop database if exists discos_production;
create database discos_development;
create database discos_production;

use discos_development;

CREATE TABLE clientes (
    PRIMARY KEY (id_cliente),
    id_cliente INT(10) AUTO_INCREMENT,
    nombre VARCHAR(100),
    ap VARCHAR(100),
    am VARCHAR(100),
    edad INT(3),
    sexo VARCHAR(10),
    mail VARCHAR(100),
    notif INT(1),
    especial INT(1),
    noCompras INT(10)
);


CREATE TABLE discos (
    PRIMARY KEY (id_disco),
    id_disco INT(10) AUTO_INCREMENT,
    cantidad INT(10),
    titulo VARCHAR(100),
    genero VARCHAR(100),
    artista VARCHAR(100),
    anio INT(4),
    album VARCHAR(100),
    NumCanciones INT(5),
    descuento INT(2),
    costo FLOAT(10)
);


CREATE TABLE vendedores (
    PRIMARY KEY (id_vendedor),
    id_vendedor INT(10) AUTO_INCREMENT,
    usr VARCHAR(100),
    pwd VARCHAR(100),
    nombre VARCHAR(100),
    ap VARCHAR(100),
    am VARCHAR(100),
    gerente INT(1),
    ganancia FLOAT(50)
);

insert into vendedores values(1,"karina","kari","Karina","Chan","Sanchez",1,0);
insert into vendedores values(2,"alexis","ale","Alexis","Galvan","Aguilar",1,0);
insert into vendedores values(3,"maru","maru","Marlene","Terron","Sanchez",0,0);
insert into vendedores values(4,"mary","mary","Mariel","Arana","Cristobal",0,0);
insert into vendedores values(5,"gera","gera","Gerardo Misael","Rico","Carlos",0,0);
insert into vendedores values(6,"armando","armando","Armando","Sanguino","Tepexicoapan",0,0);

use discos_production;

CREATE TABLE clientes (
    PRIMARY KEY (id_cliente),
    id_cliente INT(10) AUTO_INCREMENT,
    nombre VARCHAR(100),
    ap VARCHAR(100),
    am VARCHAR(100),
    edad INT(3),
    sexo VARCHAR(10),
    mail VARCHAR(100),
    notif INT(1),
    especial INT(1),
    noCompras INT(10)
);


CREATE TABLE discos (
    PRIMARY KEY (id_disco),
    id_disco INT(10) AUTO_INCREMENT,
    cantidad INT(10),
    titulo VARCHAR(100),
    genero VARCHAR(100),
    artista VARCHAR(100),
    anio INT(4),
    album VARCHAR(100),
    NumCanciones INT(5),
    descuento INT(2),
    costo FLOAT(10)
);


CREATE TABLE vendedores (
    PRIMARY KEY (id_vendedor),
    id_vendedor INT(10) AUTO_INCREMENT,
    usr VARCHAR(100),
    pwd VARCHAR(100),
    nombre VARCHAR(100),
    ap VARCHAR(100),
    am VARCHAR(100),
    gerente INT(1),
    ganancia FLOAT(50)
);
insert into vendedores values(1,"karina","kari","Karina","Chan","Sanchez",1,0);
insert into vendedores values(2,"alexis","ale","Alexis","Galvan","Aguilar",1,0);
insert into vendedores values(3,"maru","maru","Marlene","Terron","Sanchez",0,0);
insert into vendedores values(4,"mary","mary","Mariel","Arana","Cristobal",0,0);
insert into vendedores values(5,"gera","gera","Gerardo Misael","Rico","Carlos",0,0);
insert into vendedores values(6,"armando","armando","Armando","Sanguino","Tepexicoapan",0,0);
