drop database if exists DBConcesionario;
create database DBConcesionario;
use DBConcesionario;

create table Inventarios (
    codigoInventario int not null auto_increment,
    stock int not null,
    fechaIngreso date not null,
    fechaSalida date not null,
    carne int not null,
    primary key pk_codigoInventario (codigoInventario)
);

create table Proveedores (
    codigoProveedor int not null auto_increment,
    nombreProveedor varchar(50) not null,
    apellidoProveedor varchar(50) not null,
	correoProveedor varchar(50) not null,
    telefonoProveedor varchar(8) not null,
    primary key pk_codigoProveedor (codigoProveedor)
);

create table Membresias (
    codigoMembresia int not null auto_increment,
    tipoMembresia varchar(50) not null,
    fechaPago date not null,
    mensualidad decimal(10,2) not null,
    fechaVencimiento date not null,
	primary key pk_codigoMembresia (codigoMembresia)
);

create table Clientes (
    codigoCliente int not null auto_increment,
    nombreCliente varchar(50) not null,
    apellidoCliente varchar(50) not null,
    correoCliente varchar(50) not null,
    telefonoCliente varchar(8) not null,
    direccionCliente varchar(150) not null,
    codigoMembresia int not null,
	primary key pk_CodigoCliente (codigoCliente),
    constraint FK_Clientes_Membresias foreign key (codigoMembresia)
		references 	Membresias(codigoMembresia)
        on delete cascade
);

create table Talleres (
    noTaller int not null auto_increment,
    ubicacion varchar(150) not null,
    repuestos varchar(150) not null,
    herramientas varchar(150)not null,
    estadoCarro varchar(100),
    primary key PK_codigoTaller (noTaller)
);

create table Carros (
    codigoCarro int not null auto_increment,
    marca varchar(30) not null,
    modelo varchar(30) not null,
    color varchar(20) not null,
    anio int not null,
    estado varchar(30) not null,
    codigoInventario int not null,
    codigoProveedor int not null,
	primary key  PK_codigoCarro (codigoCarro),
	constraint FK_Carros_Inventarios foreign key (codigoInventario)
		references inventarios (codigoInventario)
        on delete cascade,
	constraint FK_carros_proveedores foreign key (codigoProveedor)
		references proveedores(codigoProveedor)
        on delete cascade
);

create table Concesionarios (
    codigoConcesionario int not null auto_increment,
    nombreConcesionario varchar(50) not null,
    correoConcesionario varchar(50) not null,
    telefonoConcesionario varchar(8),
    direccionConcesionario varchar(150) not null,
    codigoInventario int not null,
	primary key pk_codigoconcesionario (codigoConcesionario),
    constraint FK_concesionarios_inventarios foreign key (codigoInventario)
		references inventarios(codigoInventario)
        on delete cascade
);

create table Empleados (
    carne int not null auto_increment,
    nombreEmpleado varchar(50) not null,
    apellidoEmpleado varchar(50) not null,
    correoEmpleado varchar(50) not null,
    telefonoEmpleado varchar(8) not null,
	fechaIngreso date not null,
    usuarioEmpleado varchar(15) not null,
    contraseniaEmpleado varchar(100) not null,
    foto longblob,
    codigoConcesionario int not null,
    primary key carne (carne),
    constraint FK_empleados_concesionarios foreign key (codigoConcesionario)
		references concesionarios(codigoConcesionario)
);

create table Contratos (
    codigoContrato int not null auto_increment,
    clausula varchar(255),
    precio decimal(10,2) not null,
	fechaInicio date not null,
    fechaFin date not null,
    codigoConcesionario int not null,
    primary key pk_codigoContrato (codigoContrato),
    constraint FK_contratos_concesionarios foreign key (codigoConcesionario)
		references concesionarios(codigoConcesionario)
        on delete cascade
);

create table Publicidad (
    codigoPublicidad int not null auto_increment,
    fechaInicio date not null,
    fechaFin date not null,
    costos decimal(10,2) not null,
    colaboradores varchar(100),
    codigoCarro int not null,
	primary key pk_codigoPublicidad (codigoPublicidad),
    constraint FK_publicidad_Carros foreign key (codigoCarro)
		references Carros(codigoCarro)
        on delete cascade
);

create table Servicios (
    noServicio int not null auto_increment,
    fechaIngreso date not null,
    detalles varchar(150),
    tipoServicio varchar(50) not null,
    fechaSalida date not null,
    carne int not null,
    noTaller int not null,
	primary key pk_codigoServicio (noServicio),
    constraint FK_servicios_empleados foreign key (carne)
		references empleados(carne)
        on delete cascade,
    constraint FK_servicio_talleres foreign key (noTaller)
		references talleres(noTaller)
        on delete cascade
);

create table detalleFactura (
	codigoDetalleFactura int not null auto_increment,
    cantidad int not null,
    subTotal decimal(10,2) not null,
    precioUnitario decimal(10,2)not null,
    observaciones varchar(200) not null,
    codigoContrato int not null,
    primary key pk_codigoDetalleFactura (codigoDetalleFactura),
    constraint FK_detalleFactura_contratos foreign key (codigoContrato)
		references contratos(codigoContrato)
        on delete cascade
);

create table Facturas (
    codigoFactura int not null auto_increment,
    fechaEmision date not null,
    total decimal(10,2) not null,
    estado varchar(100) not null,
    metodoPago varchar(30) not null,
    codigoDetalleFactura int not null,
    carne int not null,
    codigoCliente int not null,
    primary key pk_codigoFactura (codigoFactura),
	constraint FK_factura_detalleFacturaforeign foreign key(codigoDetalleFactura)
		references detalleFactura(codigoDetalleFactura)
        on delete cascade,
	constraint FK_factura_empleados foreign key (carne)
		references empleados(carne)
        on delete cascade,
	constraint FK_factura_clientes foreign key (codigoCliente)
		references clientes(codigoCliente)
        on delete cascade
);

insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) 
	values (50,'2025-06-15','2025-12-05',2024256);
insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) 
	values (100,'2025-07-20','2025-12-10',2024356);
insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) 
	values (200,'2025-08-23','2025-12-14',2024456);
insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) 
	values (350,'2025-09-26','2025-12-18',2024556);
insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) 
	values (500,'2025-10-30','2025-12-28',2024656);

Insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) 
	values('Angela','Perez','hondacorporation@gmail.com', '78260512');
Insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) 
	values('Pedro','Patzan','toyotamotorco@gmail.com', '68302156');
Insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) 
	values('Gabriel','Macal','fordventas@gmail.com', '12958620');
Insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) 
	values('Estuardo','Velazquez','chevrolet003@gmail.com','60523498');
Insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) 
	values('Ricado','Paz','bmw0303@gmail.com', '95648230');
    
Insert into Membresias(tipoMembresia,fechaPago,mensualidad,fechaVencimiento) 
	values('Platino','2025-06-14',499.99,'2025-06-22');
Insert into Membresias(tipoMembresia,fechaPago,mensualidad,fechaVencimiento) 
	values('Radiante','2025-12-12',699.99,'2025-12-20');
Insert into Membresias(tipoMembresia,fechaPago,mensualidad,fechaVencimiento) 
	values('Oro','2025-10-01',299.99,'2025-10-08');
Insert into Membresias(tipoMembresia,fechaPago,mensualidad,fechaVencimiento) 
	values('Platino','2025-01-09',499.99,'2025-07-18');
Insert into Membresias(tipoMembresia,fechaPago,mensualidad,fechaVencimiento) 
	values('Bronce','2025-05-10',199.99,'2025-10-18');
    
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('Ana', 'Ramirez', 'ana.ramirez@example.com', '45678901', 'Av. Central 123, Zona 1', 1);
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('Luis', 'Martínez', 'luis.martinez@example.com', '50234567', 'Calle 5, Colonia El Prado', 2);
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('María', 'Gómez', 'maria.gomez@example.com', '43127890', 'Boulevard Los Álamos 89', 3);
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('Carlos', 'Hernández', 'carlos.hdz@example.com', '39871234', 'Residencial Monte Bello, casa 45', 4);
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('Sofía', 'López', 'sofia.lopez@example.com', '28903456', 'Zona 10, Torre Empresarial, apto 302', 5);
insert into Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente, codigoMembresia)
	values ('Diego', 'L', 'deigo.velasquez@example.com', '1', 'Zona 11, Colonia Rosevelt 8 calle', 1);
    
    
insert into Talleres (ubicacion, repuestos, herramientas, estadocarro) 
	values ('zona 10, ciudad de guatemala', 'batería, neumáticos, filtro de aire, aceite de motor', 'elevador hidráulico, llave de impacto, compresor', 'en diagnóstico de motor');
insert into Talleres (ubicacion, repuestos, herramientas, estadocarro) 
	values ('carretera a el salvador, mixco', 'pastillas de freno, liquido de frenos, filtro de aceite', 'gato hidráulico, llave de ruedas, destornilladores', 'listo para entrega');
insert into Talleres (ubicacion, repuestos, herramientas, estadocarro) 
	values ('zona 1, ciudad de guatemala', 'correa de distribución, bujías, aceite de motor', 'elevador, llave dinamométrica, herramientas de diagnóstico', 'en revisión de suspensión');
insert into Talleres (ubicacion, repuestos, herramientas, estadocarro) 
	values ('avenida bolívar, zona 7, ciudad de guatemala', 'radiador, correa de distribución, pastillas de freno', 'compresor, elevador, llave de torque', 'esperando piezas de repuesto');
insert into Talleres (ubicacion, repuestos, herramientas, estadocarro) 
	values ('calle 10, zona 9, ciudad de guatemala', 'freno de disco, aceite de transmisión, amortiguadores', 'gato hidráulico, llave inglesa, compresor de aire', 'revisión de frenos completada');

insert into Carros (marca, modelo, color, anio, estado, codigoInventario, codigoProveedor) 
	values ('Lamborghini', 'Huracan Performante', 'Nero Noctis', 2024, 'Disponible', 1, 1);
insert into Carros (marca, modelo, color, anio, estado, codigoInventario, codigoProveedor) 
	values ('Porsche', ' 911 GT3 RS', 'Blanco y Rojo ', 2025, 'En proceso de entrega',2,2);
insert into Carros (marca, modelo, color, anio, estado, codigoInventario, codigoProveedor) 
	values ('Ferrari', 'Roma', 'Rosso Fiorano', 2023, 'No disponible',3,3);
insert into Carros (marca, modelo, color, anio, estado, codigoInventario, codigoProveedor) 
	values ('Audi', 'R8', 'Gris Daytona', 2024, 'Disponible',4,4);
insert into Carros (marca, modelo, color, anio, estado, codigoInventario, codigoProveedor) 
	values ('Rolls Royce', 'Cullinan', 'Negro', 2025, 'Disponible',5,5);
    
insert into Concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) 
	values('Drive & Go', 'drive&go@gmail.com', '22228988', 'Zona 1', 1);
insert into Concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) 
	values('Elite Car', 'elite@gmail.com', '55617239', 'Zona 4', 2);
insert into Concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) 
	values('Sñirit Power', 'spiritspowers@gmail.com', '66659172', 'Zona 5', 3);
insert into Concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) 
	values('Tire Level', 'levelcars@gmail.com', '12345678', 'Zona 7', 4);
insert into Concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) 
	values('Auto Premier', 'autopremier@gmail.com', '56789101', 'Zona 8', 5);
    
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Emilio', 'Navarro', 'cnavarro@EndOfLine.gt', '44561234', '2023-03-15', 'cnavarro', '2024170', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cnavarro.jpg'), 1);
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Dany ', 'Lucas', 'dlucas@EndOfLine.gt', '66783456', '2024-01-25', 'dlucas', '2024332', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\dlucas.jpg'), 1);
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Diego', 'Monterroso', 'dmonterroso@EndOfLine.gt', '77894567', '2023-11-10', 'dmonterroso', '2021543', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\dmonterroso.jpg'), 1);
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Diego ', 'Velásquez ', 'dvelasquez@EndOfLine.gt', '88905678', '2022-05-18', 'dvelasquez', '2024226', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\dvelasquez.jpg'), 1);
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Francisco', 'Milian', 'fmilian@EndOfLine.gt', '99016789', '2023-06-22', 'fmilian', '2024356', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\fmilian.jpg'), 1);
insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, foto, codigoConcesionario) 
	values ('Isaac', 'Tiguilá', 'itiguila@EndOfLine.gt', '33457890', '2022-09-05', 'itiguila', '2024295', load_file('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\itiguila.jpg'), 1);
	
SHOW VARIABLES LIKE 'secure_file_priv';

insert into Contratos (clausula, precio, fechaInicio, fechaFin, codigoConcesionario)
	values('Este contrato entrará en vigencia a partir de la fecha de firma y tendrá una duración de 6 meses, con opción a renovación.','268900.00','2025-01-06','2025-07-06',1);
insert into Contratos (clausula, precio, fechaInicio, fechaFin, codigoConcesionario) 
	values('El proveedor se compromete a entregar los productos conforme a las especificaciones detalladas, y el cliente se compromete a pagar el precio estipulado en el contrato.','160000.00','2025-03-14','2025-07-14',2);
insert into Contratos (clausula, precio, fechaInicio, fechaFin , codigoConcesionario)
	values('El proveedor garantiza que los productos entregados estarán libres de defectos de fabricación por un periodo de 12 meses a partir de la fecha de entrega.','185000.00','2025-01-01','2026-01-01',3);
insert into Contratos (clausula, precio, fechaInicio, fechaFin, codigoConcesionario) 
	values('El cliente realizará el pago del monto acordado en tres (3) partes: un 30% al momento de la firma del contrato, 40% en el primer mes de entrega y el 30% restante al finalizar la entrega.','150000.00','2025-07-23','2026-04-23',4);
insert into Contratos (clausula, precio, fechaInicio, fechaFin, codigoConcesionario) 
	values('El cliente firmo el contrato por el vehiculo que se ordeno y se compromete a pagarlo a lo largo de 6 meses en coutas de 28,335 mensualmente','170000.00','2025-10-06','2026-04-06',5);
    
insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro)
	values ('2025-01-01', '2025-01-31', 5000.00, 'Toyota', 1);
insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro)
	values ('2025-02-01', '2025-02-28', 3500.50, 'Ford', 2);
insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro)
	values ('2025-03-01', '2025-03-31', 4200.75, 'Chevrolet', 3);
insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro)
	values ('2025-04-01', '2025-04-30', 6000.00, 'BMW', 4);
insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro)
	values ('2025-05-01', '2025-05-31', 4500.30, 'Honda', 5);
    
insert into Servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) 
values('2023-12-05','Sucio','Limpieza General','2023-12-10','1',1);
insert into Servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) 
values('2023-11-05','Torcido','enderezado general','2023-11-10','2',2);
insert into Servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) 
values('2023-10-05','motor con problemas','Cambio de aceite','2023-10-10','3',3);
insert into Servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) 
values('2023-08-05','frenos gastados','Mantenimiento de frenos','2023-08-10','4',4);
insert into Servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) 
values('2023-07-05','Desgaste uniforme en las llantas','Rotación de llantas','2023-07-10','5',5);

insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato)
	values (2, 500.00, 250.00, 'Producto en promoción',1);
insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato)
	values (1, 120.00, 120.00, 'Entrega inmediata',2);
insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato)
	values (5, 1500.00, 300.00, 'Incluye garantía',3);
insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato)
	values (3, 450.00, 150.00, 'Pago en efectivo',4);
insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato)
	values (4, 800.00, 200.00, 'Descuento aplicado',5);
    
insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente)
	values ('2025-07-01', 1250.75, 'Pagado', 'Tarjeta de Crédito',1,1,1);
insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente)
	values ('2025-07-05', 580.00, 'Pendiente', 'Efectivo',2,2,2);
insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente)
	values ('2025-07-10', 980.20, 'Cancelado', 'Transferencia',3,3,3);
insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente)
	values ('2025-07-15', 1420.00, 'Pagado', 'Débito',4,4,4);
insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente)
	values ('2025-07-20', 760.50, 'Pendiente', 'Paypal',5,5,5);
    
SELECT carne, LENGTH(foto) FROM Empleados;