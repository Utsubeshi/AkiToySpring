create database AkiToy;

use Akitoy;

create table producto(
id int(11) auto_increment,
nombre varchar(150) default null,
precio_venta int default null,
marca varchar (150) default null,
linea varchar (150) default null,
categoria varchar (150) default null,
primary key(id)
);

select * from producto

