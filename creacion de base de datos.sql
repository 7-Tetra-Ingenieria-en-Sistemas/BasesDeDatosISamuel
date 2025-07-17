create database monitoreo;

use monitoreo;

create table empleados (
IdEmpleado int primary key not null auto_increment,
Nombre varchar (50),
Edad int,
Nacimiento date
);