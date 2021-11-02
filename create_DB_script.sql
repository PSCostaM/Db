-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-10-26 13:49:36.976

-- tables
-- Table: AgenteRecursosHumanos
CREATE TABLE AgenteRecursosHumanos (
    C_IDagenteRRHH int  NOT NULL,
    Empleado_C_empleado int  NOT NULL,
    CONSTRAINT AgenteRecursosHumanos_pk PRIMARY KEY (C_IDagenteRRHH)
);
 
-- Table: AgentesAfiliados
CREATE TABLE AgentesAfiliados (
    C_IDAgente int  NOT NULL,
    C_DNIAgente int  NOT NULL,
    N_Nombre varchar(64)  NOT NULL,
    N_Apellido varchar(64)  NOT NULL,
    T_Correo varchar(128)  NOT NULL,
    Num_Telefono int  NOT NULL,
    Proveedor_C_IDProvedor int  NOT NULL,
    CONSTRAINT AgentesAfiliados_pk PRIMARY KEY (C_IDAgente)
);

-- Table: Articulo
CREATE TABLE Articulo (
    C_IdArticulo int  NOT NULL,
    Num_PrecioUnidad int  NOT NULL,
    Num_UnidadedesStock int  NOT NULL,
    Num_UnidadesPedidas int  NOT NULL,
    Num_PrecioVenta int  NOT NULL,
    Num_PrecioCompra int  NOT NULL,
    N_nombreArticulo varchar(64)  NOT NULL,
    T_DescripcionArticulo text  NOT NULL,
    Marca_C_IdMarca varchar(64)  NOT NULL,
    Oferta_C_IdOferta int  NOT NULL,
    Proveedor_C_IDProvedor int  NOT NULL,
    CONSTRAINT Articulo_pk PRIMARY KEY (C_IdArticulo)
);

-- Table: Asesordeventa
CREATE TABLE Asesordeventa (
    C_IDAsesor int  NOT NULL,
    C_DNI int  NOT NULL,
    T_correo varchar(64)  NOT NULL,
    N_NombreAsesor varchar(128)  NOT NULL,
    N_Apellido varchar(128)  NOT NULL,
    M_Sueldo int  NOT NULL,
    Empleado_C_empleado int  NOT NULL,
    CONSTRAINT Asesordeventa_pk PRIMARY KEY (C_IDAsesor)
);

-- Table: Cliente
CREATE TABLE Cliente (
    C_cliente int  NOT NULL,
    N_nombreCliente varchar(64)  NOT NULL,
    N_ApellidoCliente varchar(64)  NOT NULL,
    T_DireccionCliente varchar(128)  NOT NULL,
    Num_Dni int  NOT NULL,
    N_Ciudad varchar(64)  NOT NULL,
    N_Pais varchar(64)  NOT NULL,
    N_telefono int  NOT NULL,
    T_Correo varchar(128)  NOT NULL,
    Num_Tarjeta int  NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY (C_cliente)
);

-- Table: CompraTienda
CREATE TABLE CompraTienda (
    C_IDCompra int  NOT NULL,
    Num_Descuento int  NOT NULL,
    Venta_C_venta int  NOT NULL,
    CONSTRAINT CompraTienda_pk PRIMARY KEY (C_IDCompra)
);

-- Table: Comprobante_de_Venta
CREATE TABLE Comprobante_de_Venta (
    C_Comprobante int  NOT NULL,
    Num_productos int  NOT NULL,
    M_totalCompra int  NOT NULL,
    D_Hora date  NOT NULL,
    D_fechaEmision date  NOT NULL,
    N_ciudad varchar(64)  NOT NULL,
    Cliente_C_cliente int  NOT NULL,
    Venta_C_venta int  NOT NULL,
    CONSTRAINT Comprobante_de_Venta_pk PRIMARY KEY (C_Comprobante)
);

-- Table: Conductor
CREATE TABLE Conductor (
    C_IDconductor int  NOT NULL,
    N_Nombre varchar(64)  NOT NULL,
    N_Apellido varchar(64)  NOT NULL,
    Num_telefono int  NOT NULL,
    Num_Tarjeta int  NOT NULL,
    N_Destino varchar(64)  NOT NULL,
    C_IDpedido int  NOT NULL,
    Empleado_C_empleado int  NOT NULL,
    CONSTRAINT Conductor_pk PRIMARY KEY (C_IDconductor)
);

-- Table: Cotizacion
CREATE TABLE Cotizacion (
    C_IDCotizacion int  NOT NULL,
    C_Proveedor int  NOT NULL,
    T_Articulos text  NOT NULL,
    Num_Cantidad int  NOT NULL,
    D_Fecha date  NOT NULL,
    M_Precio money  NOT NULL,
    Asesordeventa_C_IDAsesor int  NOT NULL,
    Detalle_C_IDdetalle int  NOT NULL,
    CONSTRAINT Cotizacion_pk PRIMARY KEY (C_IDCotizacion)
);

-- Table: Detalle
CREATE TABLE Detalle (
    C_IDdetalle int  NOT NULL,
    Num_Cantidad int  NOT NULL,
    N_tipoProducto varchar(128)  NOT NULL,
    Num_PrecioTotalProducto int  NOT NULL,
    CONSTRAINT Detalle_pk PRIMARY KEY (C_IDdetalle)
);

-- Table: DetalleSorteo
CREATE TABLE DetalleSorteo (
    Sorteo_C_IDSorteo int  NOT NULL,
    Articulo_C_IdArticulo int  NOT NULL,
    CONSTRAINT DetalleSorteo_pk PRIMARY KEY (Sorteo_C_IDSorteo)
);

-- Table: DetalleXArticulo
CREATE TABLE DetalleXArticulo (
    C_IdHoraCompra int  NOT NULL,
    Detalle_C_IDdetalle int  NOT NULL,
    Articulo_C_IdArticulo int  NOT NULL,
    CONSTRAINT DetalleXArticulo_pk PRIMARY KEY (C_IdHoraCompra)
);

--Table: Empleado
CREATE TABLE Empleado (
    C_empleado int  NOT NULL,
    D_nombreEmpleado varchar(64)  NOT NULL,
    D_ApellidoEmpleado varchar(64)  NOT NULL,
    Num_telefono int  NOT NULL,
    Num_DNI int  NOT NULL,
    D_fechaNacimiento date  NOT NULL,
    D_Contratacion date  NOT NULL,
    T_correo varchar(64)  NOT NULL,
    D_ingresoHorario date  NOT NULL,
    C_equipo int  NOT NULL,
    T_direccion text  NOT NULL,
    N_rol varchar(128)  NOT NULL,
    N_sexo varchar(8)  NOT NULL,
    N_fotoPerfil varchar(64)  NOT NULL,
    T_direccionFoto varchar(256)  NOT NULL,
    Num_HorasTrabajadas int  NOT NULL,
    C_Ruc int  NOT NULL,
    Tienda_C_IdTienda int  NOT NULL,
    CONSTRAINT Empleado_pk PRIMARY KEY (C_empleado)
);

-- Table: Evento
CREATE TABLE Evento (
    C_IDEvento int  NOT NULL,
    D_inicioFechaEvento date  NOT NULL,
    D_finFechaEvento date  NOT NULL,
    T_DescripcionEvento varchar(128)  NOT NULL,
    TiendaPrincipal_C_IdTienda int  NOT NULL,
    CONSTRAINT Evento_pk PRIMARY KEY (C_IDEvento)
);

-- Table: Factura
CREATE TABLE Factura (
    C_IDFactura int  NOT NULL,
    C_NumeroRuc int  NOT NULL,
    N_PagoImpuestos int  NOT NULL,
    Comprobante_de_Venta_C_Comprobante int  NOT NULL,
    CONSTRAINT Factura_pk PRIMARY KEY (C_IDFactura)
);

-- Table: LibrodeReclamaciones
CREATE TABLE LibrodeReclamaciones (
    C_IDReclamo int  NOT NULL,
    D_FechaReclamo date  NOT NULL,
    TiendaPrincipal_C_IdTienda int  NOT NULL,
    CONSTRAINT LibrodeReclamaciones_pk PRIMARY KEY (C_IDReclamo)
);

-- Table: Marca
CREATE TABLE Marca (
    C_IdMarca varchar(32)  NOT NULL,
    Num_PrecioMarca int  NOT NULL,
    T_DetalleMarca varchar(32)  NOT NULL,
    Num_unidadesMarca int  NOT NULL,
    CONSTRAINT Marca_pk PRIMARY KEY (C_IdMarca)
);

-- Table: Mecanico
CREATE TABLE Mecanico (
    C_DNI int  NOT NULL,
    N_NombreMecanico varchar(64)  NOT NULL,
    N_ApellidoMecanico varchar(64)  NOT NULL,
    Num_telefono int  NOT NULL,
    T_Descripcion varchar(128)  NOT NULL,
    T_Correo varchar(128)  NOT NULL,
    CONSTRAINT Mecanico_pk PRIMARY KEY (C_DNI)
);

-- Table: Oferta
CREATE TABLE Oferta (
    C_IdOferta int  NOT NULL,
    C_IDPedido int  NOT NULL,
    N_DescripcionOferta varchar(128)  NOT NULL,
    Num_Descuento int  NOT NULL,
    C_IDDetalle int  NOT NULL,
    Tienda_C_IdTienda int  NOT NULL,
    CONSTRAINT Oferta_pk PRIMARY KEY (C_IdOferta)
);

-- Table: Pago
CREATE TABLE Pago (
    C_Pago int  NOT NULL,
    N_Remitente varchar(128)  NOT NULL,
    N_Receptor varchar(128)  NOT NULL,
    N_Razon varchar(128)  NOT NULL,
    D_fechaPago date  NOT NULL,
    D_horaPago date  NOT NULL,
    M_monto money  NOT NULL,
    Venta_C_venta int  NOT NULL,
    CONSTRAINT Pago_pk PRIMARY KEY (C_Pago)
);

-- Table: PagoEfectivo
CREATE TABLE PagoEfectivo (
    Pago_C_Transaccion int  NOT NULL,
    Num_dni int  NOT NULL,
    C_PagoEfectivo int  NOT NULL,
    CONSTRAINT PagoEfectivo_pk PRIMARY KEY (C_PagoEfectivo)
);

-- Table: PagoTransaccion
CREATE TABLE PagoTransaccion (
    Pago_C_Transaccion int  NOT NULL,
    Num_numTarjeta int  NOT NULL,
    C_CCV int  NOT NULL,
    F_fechaEXP date  NOT NULL,
    D_BancoTarjeta varchar(60)  NOT NULL,
    CONSTRAINT PagoTransaccion_pk PRIMARY KEY (Pago_C_Transaccion)
);

-- Table: PedidoDelivery
CREATE TABLE PedidoDelivery (
    C_IDpedido int  NOT NULL,
    D_fechaPedido date  NOT NULL,
    D_fechaEntrega date  NOT NULL,
    N_CiudadEntrega varchar(64)  NOT NULL,
    M_PagoTransporte money  NOT NULL,
    M_Monto money  NOT NULL,
    F_ValidacionPedido int  NOT NULL,
    Venta_C_venta int  NOT NULL,
    CONSTRAINT PedidoDelivery_pk PRIMARY KEY (C_IDpedido)
);

-- Table: Proveedor
CREATE TABLE Proveedor (
    C_IDProvedor int  NOT NULL,
    C_DNI int  NOT NULL,
    N_NombreProveedor varchar(64)  NOT NULL,
    N_Apellido varchar(64)  NOT NULL,
    T_Correo varchar(128)  NOT NULL,
    Articulo_C_IDaticulo int  NOT NULL,
    CONSTRAINT Proveedor_pk PRIMARY KEY (C_IDProvedor)
);

-- Table: ReciboBoleta
CREATE TABLE ReciboBoleta (
    C_IDBoleta int  NOT NULL,
    N_sucursal varchar(128)  NOT NULL,
    Num_impuestos int  NOT NULL,
    Comprobante_de_Venta_C_Comprobante int  NOT NULL,
    CONSTRAINT ReciboBoleta_pk PRIMARY KEY (C_IDBoleta)
);

-- Table: Reembolso
CREATE TABLE Reembolso (
    C_IDReembolso int  NOT NULL,
    M_PrecioReebolso money  NOT NULL,
    M_ValidacionRembolso money  NOT NULL,
    D_fechaReembolso date  NOT NULL,
    D_horaReembolso date  NOT NULL,
    Venta_C_venta int  NOT NULL,
    CONSTRAINT Reembolso_pk PRIMARY KEY (C_IDReembolso)
);

-- Table: Repartidor
CREATE TABLE Repartidor (
    C_IDrepartidor int  NOT NULL,
    N_categoriaBrevete varchar(64)  NOT NULL,
    T_Correo varchar(128)  NOT NULL,
    Num_telefono int  NOT NULL,
    T_Vehiculo varchar(128)  NOT NULL,
    N_Sucursal varchar(512)  NOT NULL,
    Conductor_C_IDconductor int  NOT NULL,
    CONSTRAINT Repartidor_pk PRIMARY KEY (C_IDrepartidor)
);

-- Table: ServicioalCliente
CREATE TABLE ServicioalCliente (
    T_ProblemaCliente varchar(128)  NOT NULL,
    T_CorreoCliente varchar(128)  NOT NULL,
    LibrodeReclamaciones_C_IDReclamo int  NOT NULL,
    Cliente_C_cliente int  NOT NULL,
    AgenteRecursosHumanos_C_IDagenteRRHH int  NOT NULL,
    CONSTRAINT ServicioalCliente_pk PRIMARY KEY (Cliente_C_cliente,LibrodeReclamaciones_C_IDReclamo,AgenteRecursosHumanos_C_IDagenteRRHH)
);

-- Table: Sorteo
CREATE TABLE Sorteo (
    C_IDSorteo int  NOT NULL,
    N_nombresorteo varchar(64)  NOT NULL,
    T_descripcionSorteo varchar(128)  NOT NULL,
    D_FechaSorteo date  NOT NULL,
    C_IDArticulo int  NOT NULL,
    N_Ganador varchar(64)  NOT NULL,
    C_IDDetalle int  NOT NULL,
    Tienda_C_IdTienda int  NOT NULL,
    CONSTRAINT Sorteo_pk PRIMARY KEY (C_IDSorteo)
);

-- Table: Sucursales
CREATE TABLE Sucursales (
    C_IdSucursal int  NOT NULL,
    N_NombreSucursal varchar(64)  NOT NULL,
    N_UbicacionSucursal varchar(128)  NOT NULL,
    C_IDempleado int  NOT NULL,
    TiendaPrincipal_C_IdTienda int  NOT NULL,
    CONSTRAINT Sucursales_pk PRIMARY KEY (C_IdSucursal)
);

-- Table: TiendaPrincipal
CREATE TABLE TiendaPrincipal (
    C_IdTienda int  NOT NULL,
    T_Direccion varchar(128)  NOT NULL,
    N_NombreTienda varchar(128)  NOT NULL,
    Num_TelefonoTienda varchar(64)  NOT NULL,
    T_Referencia varchar(128)  NOT NULL,
    Num_CantidadEmpleados int  NOT NULL,
    Num_Aforo int  NOT NULL,
    CONSTRAINT TiendaPrincipal_pk PRIMARY KEY (C_IdTienda)
);

-- Table: ValidacionEntregaDelivery
CREATE TABLE ValidacionEntregaDelivery (
    PedidoDelivery_C_IDpedido int  NOT NULL,
    Conductor_C_IDconductor int  NOT NULL,
    F_Entregado int  NOT NULL,
    CONSTRAINT ValidacionEntregaDelivery_pk PRIMARY KEY (PedidoDelivery_C_IDpedido,Conductor_C_IDconductor)
);

-- Table: Vehiculo
CREATE TABLE Vehiculo (
    C_IDvehiculo int  NOT NULL,
    T_PlacaVehiculo varchar(8)  NOT NULL,
    N_destinoVehiculo varchar(128)  NOT NULL,
    C_IDconductor int  NOT NULL,
    Repartidor_C_IDrepartidor int  NOT NULL,
    CONSTRAINT Vehiculo_pk PRIMARY KEY (C_IDvehiculo)
);

-- Table: VehiculoXMecanico
CREATE TABLE VehiculoXMecanico (
    C_IDconsulta int  NOT NULL,
    Mecanico_C_DNI int  NOT NULL,
    Vehiculo_C_IDvehiculo int  NOT NULL,
    CONSTRAINT VehiculoXMecanico_pk PRIMARY KEY (C_IDconsulta)
);

-- Table: Venta
CREATE TABLE Venta (
    C_venta int  NOT NULL,
    Asesordeventa_C_IDAsesor int  NOT NULL,
    Cliente_C_cliente int  NOT NULL,
    D_fechaCompra date  NOT NULL,
    Num_monto int  NOT NULL,
    Detalle_C_IDdetalle int  NOT NULL,
    CONSTRAINT Venta_pk PRIMARY KEY (C_venta)
);

-- foreign keys
-- Reference: AgenteRecursosHumanos_Empleado (table: AgenteRecursosHumanos)
ALTER TABLE AgenteRecursosHumanos ADD CONSTRAINT AgenteRecursosHumanos_Empleado
    FOREIGN KEY (Empleado_C_empleado)
    REFERENCES Empleado (C_empleado)  
;

-- Reference: AgentesAfiliados_Proveedor (table: AgentesAfiliados)
ALTER TABLE AgentesAfiliados ADD CONSTRAINT AgentesAfiliados_Proveedor
    FOREIGN KEY (Proveedor_C_IDProvedor)
    REFERENCES Proveedor (C_IDProvedor)  
     
      
;

-- Reference: Articulo_Marca (table: Articulo)
ALTER TABLE Articulo ADD CONSTRAINT Articulo_Marca
    FOREIGN KEY (Marca_C_IdMarca)
    REFERENCES Marca (C_IdMarca)  
     
      
;

-- Reference: Articulo_Oferta (table: Articulo)
ALTER TABLE Articulo ADD CONSTRAINT Articulo_Oferta
    FOREIGN KEY (Oferta_C_IdOferta)
    REFERENCES Oferta (C_IdOferta)  
     
      
;

-- Reference: Articulo_Proveedor (table: Articulo)
ALTER TABLE Articulo ADD CONSTRAINT Articulo_Proveedor
    FOREIGN KEY (Proveedor_C_IDProvedor)
    REFERENCES Proveedor (C_IDProvedor)  
     
      
;

-- Reference: Asesordeventa_Empleado (table: Asesordeventa)
ALTER TABLE Asesordeventa ADD CONSTRAINT Asesordeventa_Empleado
    FOREIGN KEY (Empleado_C_empleado)
    REFERENCES Empleado (C_empleado)  
     
      
;

-- Reference: CompraTienda_Venta (table: CompraTienda)
ALTER TABLE CompraTienda ADD CONSTRAINT CompraTienda_Venta
    FOREIGN KEY (Venta_C_venta)
    REFERENCES Venta (C_venta)  
     
      
;

-- Reference: Comprobante_de_Venta_Cliente (table: Comprobante_de_Venta)
ALTER TABLE Comprobante_de_Venta ADD CONSTRAINT Comprobante_de_Venta_Cliente
    FOREIGN KEY (Cliente_C_cliente)
    REFERENCES Cliente (C_cliente)  
     
      
;

-- Reference: Comprobante_de_Venta_Venta (table: Comprobante_de_Venta)
ALTER TABLE Comprobante_de_Venta ADD CONSTRAINT Comprobante_de_Venta_Venta
    FOREIGN KEY (Venta_C_venta)
    REFERENCES Venta (C_venta)  
     
      
;

-- Reference: Conductor_Empleado (table: Conductor)
ALTER TABLE Conductor ADD CONSTRAINT Conductor_Empleado
    FOREIGN KEY (Empleado_C_empleado)
    REFERENCES Empleado (C_empleado)  
     
      
;

-- Reference: Cotizacion_Asesordeventa (table: Cotizacion)
ALTER TABLE Cotizacion ADD CONSTRAINT Cotizacion_Asesordeventa
    FOREIGN KEY (Asesordeventa_C_IDAsesor)
    REFERENCES Asesordeventa (C_IDAsesor)  
     
      
;

-- Reference: Cotizacion_Detalle (table: Cotizacion)
ALTER TABLE Cotizacion ADD CONSTRAINT Cotizacion_Detalle
    FOREIGN KEY (Detalle_C_IDdetalle)
    REFERENCES Detalle (C_IDdetalle)  
     
      
;

-- Reference: DetalleSorteo_Articulo (table: DetalleSorteo)
ALTER TABLE DetalleSorteo ADD CONSTRAINT DetalleSorteo_Articulo
    FOREIGN KEY (Articulo_C_IdArticulo)
    REFERENCES Articulo (C_IdArticulo)  
     
      
;

-- Reference: DetalleSorteo_Sorteo (table: DetalleSorteo)
ALTER TABLE DetalleSorteo ADD CONSTRAINT DetalleSorteo_Sorteo
    FOREIGN KEY (Sorteo_C_IDSorteo)
    REFERENCES Sorteo (C_IDSorteo)  
     
      
;

-- Reference: DetalleXArticulo_Articulo (table: DetalleXArticulo)
ALTER TABLE DetalleXArticulo ADD CONSTRAINT DetalleXArticulo_Articulo
    FOREIGN KEY (Articulo_C_IdArticulo)
    REFERENCES Articulo (C_IdArticulo)  
     
      
;

-- Reference: DetalleXArticulo_Detalle (table: DetalleXArticulo)
ALTER TABLE DetalleXArticulo ADD CONSTRAINT DetalleXArticulo_Detalle
    FOREIGN KEY (Detalle_C_IDdetalle)
    REFERENCES Detalle (C_IDdetalle)  
     
      
;

-- Reference: Empleado_Tienda (table: Empleado)
ALTER TABLE Empleado ADD CONSTRAINT Empleado_Tienda
    FOREIGN KEY (Tienda_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: Evento_TiendaPrincipal (table: Evento)
ALTER TABLE Evento ADD CONSTRAINT Evento_TiendaPrincipal
    FOREIGN KEY (TiendaPrincipal_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: Factura_Comprobante_de_Venta (table: Factura)
ALTER TABLE Factura ADD CONSTRAINT Factura_Comprobante_de_Venta
    FOREIGN KEY (Comprobante_de_Venta_C_Comprobante)
    REFERENCES Comprobante_de_Venta (C_Comprobante)  
     
      
;

-- Reference: LibrodeReclamaciones_TiendaPrincipal (table: LibrodeReclamaciones)
ALTER TABLE LibrodeReclamaciones ADD CONSTRAINT LibrodeReclamaciones_TiendaPrincipal
    FOREIGN KEY (TiendaPrincipal_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: Oferta_Tienda (table: Oferta)
ALTER TABLE Oferta ADD CONSTRAINT Oferta_Tienda
    FOREIGN KEY (Tienda_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: PagoEfectivo_Pago (table: PagoEfectivo)
ALTER TABLE PagoEfectivo ADD CONSTRAINT PagoEfectivo_Pago
    FOREIGN KEY (Pago_C_Transaccion)
    REFERENCES Pago (C_Pago)  
     
      
;

-- Reference: Pago_Venta (table: Pago)
ALTER TABLE Pago ADD CONSTRAINT Pago_Venta
    FOREIGN KEY (Venta_C_venta)
    REFERENCES Venta (C_venta)  
     
      
;

-- Reference: PedidoDelivery_Venta (table: PedidoDelivery)
ALTER TABLE PedidoDelivery ADD CONSTRAINT PedidoDelivery_Venta
    FOREIGN KEY (Venta_C_venta)
    REFERENCES Venta (C_venta)  
     
      
;

-- Reference: ReciboBoleta_Comprobante_de_Venta (table: ReciboBoleta)
ALTER TABLE ReciboBoleta ADD CONSTRAINT ReciboBoleta_Comprobante_de_Venta
    FOREIGN KEY (Comprobante_de_Venta_C_Comprobante)
    REFERENCES Comprobante_de_Venta (C_Comprobante)  
     
      
;

-- Reference: Reembolso_Venta (table: Reembolso)
ALTER TABLE Reembolso ADD CONSTRAINT Reembolso_Venta
    FOREIGN KEY (Venta_C_venta)
    REFERENCES Venta (C_venta)  
     
      
;

-- Reference: Repartidor_Conductor (table: Repartidor)
ALTER TABLE Repartidor ADD CONSTRAINT Repartidor_Conductor
    FOREIGN KEY (Conductor_C_IDconductor)
    REFERENCES Conductor (C_IDconductor)  
     
      
;

-- Reference: ServicioalCliente_AgenteRecursosHumanos (table: ServicioalCliente)
ALTER TABLE ServicioalCliente ADD CONSTRAINT ServicioalCliente_AgenteRecursosHumanos
    FOREIGN KEY (AgenteRecursosHumanos_C_IDagenteRRHH)
    REFERENCES AgenteRecursosHumanos (C_IDagenteRRHH)  
     
      
;

-- Reference: ServicioalCliente_Cliente (table: ServicioalCliente)
ALTER TABLE ServicioalCliente ADD CONSTRAINT ServicioalCliente_Cliente
    FOREIGN KEY (Cliente_C_cliente)
    REFERENCES Cliente (C_cliente)  
     
      
;

-- Reference: ServicioalCliente_LibrodeReclamaciones (table: ServicioalCliente)
ALTER TABLE ServicioalCliente ADD CONSTRAINT ServicioalCliente_LibrodeReclamaciones
    FOREIGN KEY (LibrodeReclamaciones_C_IDReclamo)
    REFERENCES LibrodeReclamaciones (C_IDReclamo)  
     
      
;

-- Reference: Sorteo_Tienda (table: Sorteo)
ALTER TABLE Sorteo ADD CONSTRAINT Sorteo_Tienda
    FOREIGN KEY (Tienda_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: Sucursales_TiendaPrincipal (table: Sucursales)
ALTER TABLE Sucursales ADD CONSTRAINT Sucursales_TiendaPrincipal
    FOREIGN KEY (TiendaPrincipal_C_IdTienda)
    REFERENCES TiendaPrincipal (C_IdTienda)  
     
      
;

-- Reference: Table_37_Pago (table: PagoTransaccion)
ALTER TABLE PagoTransaccion ADD CONSTRAINT Table_37_Pago
    FOREIGN KEY (Pago_C_Transaccion)
    REFERENCES Pago (C_Pago)  
     
      
;

-- Reference: ValidacionEntregaDelivery_Conductor (table: ValidacionEntregaDelivery)
ALTER TABLE ValidacionEntregaDelivery ADD CONSTRAINT ValidacionEntregaDelivery_Conductor
    FOREIGN KEY (Conductor_C_IDconductor)
    REFERENCES Conductor (C_IDconductor)  
     
      
;

-- Reference: ValidacionEntregaDelivery_PedidoDelivery (table: ValidacionEntregaDelivery)
ALTER TABLE ValidacionEntregaDelivery ADD CONSTRAINT ValidacionEntregaDelivery_PedidoDelivery
    FOREIGN KEY (PedidoDelivery_C_IDpedido)
    REFERENCES PedidoDelivery (C_IDpedido)  
     
      
;

-- Reference: VehiculoXMecanico_Mecanico (table: VehiculoXMecanico)
ALTER TABLE VehiculoXMecanico ADD CONSTRAINT VehiculoXMecanico_Mecanico
    FOREIGN KEY (Mecanico_C_DNI)
    REFERENCES Mecanico (C_DNI)  
     
      
;

-- Reference: VehiculoXMecanico_Vehiculo (table: VehiculoXMecanico)
ALTER TABLE VehiculoXMecanico ADD CONSTRAINT VehiculoXMecanico_Vehiculo
    FOREIGN KEY (Vehiculo_C_IDvehiculo)
    REFERENCES Vehiculo (C_IDvehiculo)  
     
      
;

-- Reference: Vehiculo_Repartidor (table: Vehiculo)
ALTER TABLE Vehiculo ADD CONSTRAINT Vehiculo_Repartidor
    FOREIGN KEY (Repartidor_C_IDrepartidor)
    REFERENCES Repartidor (C_IDrepartidor)  
     
      
;

-- Reference: Venta_Asesordeventa (table: Venta)
ALTER TABLE Venta ADD CONSTRAINT Venta_Asesordeventa
    FOREIGN KEY (Asesordeventa_C_IDAsesor)
    REFERENCES Asesordeventa (C_IDAsesor)  
     
      
;

-- Reference: Venta_Cliente (table: Venta)
ALTER TABLE Venta ADD CONSTRAINT Venta_Cliente
    FOREIGN KEY (Cliente_C_cliente)
    REFERENCES Cliente (C_cliente)  
;

-- Reference: Venta_Detalle (table: Venta)
ALTER TABLE Venta ADD CONSTRAINT Venta_Detalle
    FOREIGN KEY (Detalle_C_IDdetalle)
    REFERENCES Detalle (C_IDdetalle)  
     
      
;

-- End of file. 
