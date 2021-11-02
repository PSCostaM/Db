USE MEMORYKINGS
--Entities for Cliente
insert into dbo.Cliente
values(1,'Cesar Manuel', 'Mosqueira Chacón','Av. Lima 1130',73904929,'Lima','Peru',974404999,'cesarmanuel18@gmail.com',1235)

insert into dbo.Cliente
values(2,'Jonas Omar', 'Curi Montero','Jr. Invasión 1250',75906959,'SJL','Peru',944344989,'dotajona159@gmail.com',5541)

insert into dbo.Cliente
values(3,'Alfredo Norberto', 'Farro Caballero','Av. Bellavista 1041',72104709,'Callao','Peru',984410987,'gaturrex18@gmail.com',3382)

insert into dbo.Cliente
values(4,'Kendall Ramiro', 'Contreras Salazar','Av. No Universitaria 2030',72104709,'Callao','Peru',994420155,'kendallrcs@gmail.com',1323)

insert into dbo.Cliente
values(5,'Fabricio', 'Sotil ','Av. Marina 4030',73101009,'Pueblo Libre','Peru',973476908,'rawrtil19@gmail.com',1000)

Select * from dbo.Cliente

--Entities for Empleado
insert into dbo.Empleado
values(1,'Juan','Arroyo Abanto',949733590,74896709,'1999-10-20','2020-03-15','juanarroyo@hotmail.com','2021-10-30',1,'AV. La mar 1950','RRHH','M','juan_perfil.png','images/juan_perfil.png',20,433581,1)

insert into dbo.Empleado
values(2,'Jorge','Guerrero Abanto',959743590,76810709,'1997-06-13','2020-02-15','JorgeGuerrero19@hotmail.com','2021-10-30',1,'AV. Libertad 950','Asesor_Venta','M','jorge_perfil.png','images/jorge_perfil.png',40,473141,1)

insert into dbo.Empleado
values(3,'William','Perez Bustamante',929763590,72896609,'1995-02-26','2021-03-15','killy@gmail.com','2021-10-20',1,'AV. Peru 1240','Conductor','M','willy_perfil.png','images/willy_perfil.png',30,478181,1)

insert into dbo.Empleado
values(4,'Manuel','Costa León',919503100,73635093,'1997-03-16','2021-03-20','mcostam22@gmail.com','2021-09-10',1,'Jr. Amaru 387','Repart.','M','manuel_perfil.png','images/manuel_perfil.png',30,421911,1)


Select * from dbo.Empleado

--RRHH
insert into dbo.AgenteRecursosHumanos
values(1,1)
select * from dbo.AgenteRecursosHumanos

--Asesor de venta
insert into dbo.Asesordeventa
values(2,2500,2)

Select * from dbo.Asesordeventa

--Conductor
INSERT INTO dbo.Conductor
values(1,0382,'Av. Universitaria 840',1,3)


SELECT * FROM dbo.Conductor

--Repartidor
insert into dbo.Repartidor
values(1,1,4)


Select * FROM dbo.Repartidor
