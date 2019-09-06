create database todo1;
use todo1;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `stock` smallint NOT NULL,
  `file` varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE `sale` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idCustomer` INT(10) NOT NULL,
  `date` date NOT NULL,
  `payment` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sale_customer_id` (`idCustomer`),
  CONSTRAINT `fk_customer_id1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`)
);

CREATE TABLE `detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idSale` int(10) NOT NULL,
  `idProduct` int(10) NOT NULL,
  `amount` smallint NOT NULL,
  `price` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_detail_sale1` FOREIGN KEY (`idSale`) REFERENCES `sale` (`id`),
  CONSTRAINT `fk_detail_product1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`)
);

insert into customer (name, lastname) values ('Gustavo', 'Castro');
insert into customer (name, lastname) values ('Mayerlis', 'Sierra');
insert into customer (name, lastname) values ('Andres', 'Castro');

insert into product (name, price, stock, file) values ('Vestido Rojo', 30000, 50, 'producto_vestido_rojo.jpg');
insert into product (name, price, stock, file) values ('Sueter Manga Corta', 20000, 25, 'producto_sueter.jpg');
insert into product (name, price, stock, file) values ('Pantaloneta', 5000, 10, 'producto_pantaloneta.jpg');
insert into product (name, price, stock, file) values ('Chaqueta', 10000, 0, 'producto_chaqueta.jpg');
insert into product (name, price, stock, file) values ('Camisa manga larga', 5000, 15, 'producto_camisa_manga_larga.jpg');
insert into product (name, price, stock, file) values ('Jean', 5000, 0, 'producto_jeans.jpg'); 
insert into product (name, price, stock, file) values ('Ropa', 15000, 10, 'producto_sin_imagen.jpg');

select * from customer;
select * from product;

			
