create database todo1;
use todo1;

CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `stock` smallint NOT NULL,
  `file` varchar(100),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `address` varchar(100),
  `birthdate` DATE NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE `sale` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idCustomer` INT(10) NOT NULL,
  `date` date NOT NULL,
  `payment` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sale_customer_id` (`idCustomer`),
  CONSTRAINT `fk_customer_id1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE `detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idSale` int(10) NOT NULL,
  `idProduct` int(10) NOT NULL,
  `amount` smallint NOT NULL,
  `price` decimal(9,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detail_sale_id` (`idSale`),
  KEY `fk_detail_product_id` (`idProduct`),
  CONSTRAINT `fk_detail_sale1` FOREIGN KEY (`idSale`) REFERENCES `sale` (`id`),
  CONSTRAINT `fk_detail_product1` FOREIGN KEY (`idProduct`) REFERENCES `product` (`id`)
) ENGINE=InnoDB CHARSET=utf8;


insert into customer (name, lastname, address, birthdate) values ('Gustavo', 'Castro', 'Venecia cra 68d', '1990-04-26');
insert into customer (name, lastname, address, birthdate) values ('Mayerlis', 'Sierra', 'Venecia cra 68d', '1987-08-25');
insert into customer (name, lastname, address, birthdate) values ('Andres', 'Castro', 'Olaya cra 81', '1998-12-11');

insert into product (name, price, stock) values ('Camiseta', 30000, 50);
insert into product (name, price, stock) values ('Sudadera', 20000, 25);
insert into product (name, price, stock) values ('Pantaloneta', 5000, 10);
insert into product (name, price, stock) values ('Vaso', 10000, 20);
insert into product (name, price, stock) values ('Sueter', 5000, 15);

select * from customer;
select * from product;
