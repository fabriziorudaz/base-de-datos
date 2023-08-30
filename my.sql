create database ventas_productos_informaticos;
use ventas_productos_informaticos;

create table fabricantes(
    cod_fab int(5) AUTO_INCREMENT primary key,
    nombre varchar(20) not null
);

create table articulos(
    cod_art int(5) not null AUTO_INCREMENT primary key,
    nombre varchar(20) not null,
    precio int(7) not null,
    fabricante int (5),
    FOREING key (fabricante) references fabricantes(cod_fab) 
);

insert into fabricantes(cod_fab, nombre) values
(null, 'juan'),
(null, 'pedro'),
(null, 'jaimito'),
(null, 'fede'),
(null, 'gerardo');

insert into articulos(cod_art, nombre, precio) values
(null, 'monintor', '100000'),
(null, 'pc', '120000'),
(null, 'mouse', '12500'),
(null, 'router', '45600'),
(null, 'celular', '110000' ),
(null, 'teclado', '20000'),
(null, 'motherboard', '56000'),
(null, 'disco_duro', '43000'),
(null, 'auriculares', '14300'),
(null, 'microfono', '25000');
