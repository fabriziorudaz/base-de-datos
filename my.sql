create database ventas_productos_informaticos;
use ventas_productos_informaticos;

create table fabricantes(
    cod_fab int(5) not null AUTO_INCREMENT primary key,
    nombre varchar(20) not null
);

create table articulos(
    cod_art int(5) not null AUTO_INCREMENT primary key,
    nombre varchar(20) not null,
    precio int(7) not null,
    fabricante int(5) ,
    FOREIGN key(fabricante)references fabricantes(cod_fab) 
);

insert into fabricantes(cod_fab, nombre) values
(null, 'samsung'),
(null, 'apple'),
(null, 'motorola'),
(null, 'hp'),
(null, 'dell');

insert into articulos(cod_art, nombre, precio, fabricante) values
(null, 'monitor', '100000', '2'),
(null, 'pc', '120000', '3'),
(null, 'mouse', '12500', '2'),
(null, 'router', '45600', '4'),
(null, 'celular', '110000', '1' ),
(null, 'teclado', '20000', '2'),
(null, 'motherboard', '56000', '3'),
(null, 'disco_duro', '43000', '5'),
(null, 'auriculares', '14300', '5'),
(null, 'microfono', '25000', '4');





select nombre from articulos;

select nombre, precio from articulos;

select nombre from articulos where precio < 20000;

select *from articulos where precio >= 60000 and precio <= 120000;

select nombre, precio/700 from articulos;

select avg(precio) from articulos; 

select avg(precio) from articulos where fabricante = 2; 

select count(precio) from articulos where precio >= 18000;

