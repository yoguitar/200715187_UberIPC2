USE UBER

CREATE TABLE USUARIO (
id_usuario int primary key not null,
nombre_usuario varchar(20) not null
)

CREATE TABLE EMPLEADO_CARRO (
id_carro int primary key not null,
placa_carro varchar(20) not null,
marca varchar(10) not null,
modelo varchar(10) not null,
color varchar(10) not null
)

CREATE TABLE EMPLEADO_BICICLETA (
id_empleado int primary key not null,
dpi_empleado int not null,
nombre varchar(20) not null,
direccion varchar(10) not null
)

CREATE TABLE BICICLETA (
id_biclicleta int primary key not null,
marca varchar(10) not null,
modelo varchar(10) not null,
color varchar(10) not null,
fk_id_empleado int not null
)

CREATE TABLE CARRO (
id_carro int primary key not null,
placa varchar(6) not null,
marca varchar(10) not null,
modelo varchar(10) not null,
color varchar(10) not null,
fk_id_empleado int not null
)

CREATE TABLE DETALLE_SERVICIO (
id_detalle int primary key not null,
nombre_servicio varchar(15) not null,
fk_id_usuario int not null,
fk_id_empleado int not null,
fk_id_servicio int not null
)

CREATE TABLE DETALLE_SERBICI (
id_detalle int primary key not null,
inicio varchar(15) not null,
entrega varchar(15) not null,
fk_id_usuario int not null,
fk_id_empleado int not null,
fk_id_servicio int not null
)

CREATE TABLE SERVICIO (
id_servicio int primary key not null,
nombre_servicio varchar(15) not null,
descripcion varchar(50) not null
)

ALTER TABLE SERVICIO ADD direccion_usuario char null
ALTER TABLE SERVICIO CHANGE direccion_usuario direccion char(20) not null
ALTER TABLE CARRO ADD CONSTRAINT fk1 FOREIGN KEY (fk_id_empleado) REFERENCES EMPLEADO_CARRO(id_empleado)
ALTER TABLE DETALLE_SERVICIO ADD FOREIGN KEY (fk_id_empleado) REFERENCES EMPLEADO_CARRO(id_empleado)
