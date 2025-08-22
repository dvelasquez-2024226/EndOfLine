drop database if exists DBConcesionario;
create database DBConcesionario;
use DBConcesionario;

create table inventario (
    codigoinventario int not null auto_increment,
    stock int not null,
    fechaingreso date not null,
    fechasalida date not null,
    carne int not null,
    primary key pk_codigoInventario (codigoinventario)
);

create table proveedores (
    codigoProveedor int not null auto_increment,
    nombreproveedor varchar(50) not null,
    apellidoproveedor varchar(50) not null,
	correoproveedor varchar(50) not null,
    telefonoporveedor int not null,
    primary key pk_codigoProveedor (codigoProveedor)
);

create table clientes (
    codigoCliente int not null auto_increment,
    nombreCliente varchar(50) not null,
    apellidoCliente varchar(50) not null,
    correoCliente varchar(50) not null,
    telefonoCliente int not null,
    direccionCliente varchar(150) not null,
	primary key pk_Codigocliente (codigoCliente)
);

create table membresia (
    codigomembresia int not null auto_increment,
    tipomembresia varchar(50) not null,
    fechapago date not null,
    mensualidad decimal(10,2) not null,
    fechaVencimiento date not null,
	primary key pk_codigomembresia (codigomembresia)
);

create table taller (
    codigoTaller int not null auto_increment,
    ubicacion varchar(150) not null,
    repuestos varchar(150) not null,
    herramientas varchar(150)not null,
    estadoCarro varchar(100),
    primary key PK_codigoTaller (codigoTaller)
);

create table carros (
    codigoCarro int not null auto_increment,
    marca varchar(30) not null,
    modelo varchar(30) not null,
    color varchar(20) not null,
    anio int not null,
    estado varchar(30) not null,
    codigoinventario int not null,
    codigoProveedor int not null,
	primary key  PK_codigoCarro (codigoCarro),
	constraint FK_carros_inventario foreign key (codigoinventario)
		references inventario (codigoinventario),
	constraint FK_carros_proveedores foreign key (codigoProveedor)
		references proveedores(codigoProveedor)
);

create table concesionario (
    codigoconcesionario int not null auto_increment,
    nombreconcesionario varchar(50) not null,
    correoconcecionario varchar(50) not null,
    telefonoconcesionario int,
    ubicaionconcecionario varchar(150) not null,
    codigoinventario int not null,
	primary key pk_codigoconcesionario (codigoconcesionario),
    constraint FK_concesionario_inventario foreign key (codigoinventario)
		references inventario(codigoinventario)
);

create table empleados (
    codigoEmpleado int not null auto_increment,
    nombreempleado varchar(50) not null,
    apellidoempleado varchar(50) not null,
    correoempleado varchar(50) not null,
    telefonoempleado varchar(20) not null,
	fechaingreso date not null,
    codigoconcesionario int not null,
    primary key pk_codigoEmpleado (codigoEmpleado),
    constraint FK_empleados_concesionario foreign key (codigoconcesionario)
		references concesionario(codigoconcesionario)
);

create table contratos (
    codigoContrato int not null auto_increment,
    clasula varchar(255),
    precio decimal(10,2) not null,
	fechainicio date not null,
    fechafin date not null,
    codigoconcesionario int not null,
    primary key pk_codigoContrato (codigoContrato),
    constraint FK_contratos_concesionario foreign key (codigoconcesionario)
		references concesionario(codigoconcesionario)
);

create table publicidad (
    codigoPublicidad int not null auto_increment,
    fechaInicio date not null,
    fechafin date not null,
    costos decimal(10,2) not null,
    colaboradores varchar(100),
    codigoCarro int not null,
	primary key pk_codigoPublicidad (codigoPublicidad),
    constraint FK_publicidad_carros foreign key (codigoCarro)
		references carros(codigoCarro)
);

create table servicio (
    codigoServicio int not null auto_increment,
    fechaingreso date not null,
    detalles varchar(150),
    tipoServicio varchar(50) not null,
    fechasalida date not null,
    codigoEmpleado int not null,
    codigoTaller int not null,
	primary key pk_codigoServicio (codigoServicio),
    constraint FK_servicio_empleados foreign key (codigoEmpleado)
		references empleados(codigoEmpleado),
    constraint FK_servicio_taller foreign key (codigoTaller)
		references taller(codigoTaller)
);

create table factura (
    codigoFactura int not null auto_increment,
    fechaemision date not null,
    total decimal(10,2) not null,
    detallefactura varchar(100),
    metodopago varchar(30) not null,
    codigoContrato int not null,
    codigoEmpleado int not null,
    codigoCliente int not null,
    primary key pk_codigoFactura (codigoFactura),
	constraint FK_factura_contratos foreign key (codigoContrato)
		references contratos(codigoContrato),
	constraint FK_factura_empleados foreign key (codigoEmpleado)
		references empleados(codigoEmpleado),
	constraint FK_factura_clientes foreign key (codigoCliente)
		references clientes(codigoCliente)
);

insert into clientes (nombreCliente,apellidoCliente, correoCliente, telefonoCliente,direccionCliente) values ("Josue","Boror","josueboror@kinal", 123,"zona 5" );
select * from clientes;
select * from clientes where apellidocliente = "Boror" and telefonoCliente = 123