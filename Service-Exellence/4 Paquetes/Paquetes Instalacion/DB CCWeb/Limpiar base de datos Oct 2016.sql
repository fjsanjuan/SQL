select * from cte_evento
delete from cte_evento
DBCC CHECKIDENT(N'[dbo].[cte_evento]', RESEED, 0)
select * from cte_evento

select * from cte_prosp_contacto
truncate table cte_prosp_contacto
select * from cte_prosp_contacto

select * from cte_propietario
truncate table cte_propietario
select * from cte_propietario

select * from cte_prospecto
delete from cte_prospecto
DBCC CHECKIDENT(N'[dbo].[cte_prospecto]', RESEED, 0)
select * from cte_prospecto

select * from cte_vehiculo
delete from cte_vehiculo
select * from cte_vehiculo

select * from ctrl_sessions
truncate table ctrl_sessions

select * from ctrl_usuario --where id > 4
delete from ctrl_usuario where id > 4
DBCC CHECKIDENT(N'[dbo].[ctrl_usuario]', RESEED, 4)
select * from ctrl_usuario --where id > 4

select * from dms_art
truncate table dms_art
select * from dms_art

select * from dms_catalogo_detalle
truncate table dms_catalogo_detalle
select * from dms_catalogo_detalle

select * from VehiculosPaquetes
truncate table VehiculosPaquetes
select * from VehiculosPaquetes
--DBCC CHECKIDENT(N'[dbo].[VehiculosPaquetes]', RESEED, 0)

select * from ServicioPaquetesR
truncate table ServicioPaquetesR
select * from ServicioPaquetesR

select * from ServicioPaquetesD
truncate table ServicioPaquetesD
select * from ServicioPaquetesD

select * from ServicioPaquetes
delete from ServicioPaquetes
DBCC CHECKIDENT(N'[dbo].[ServicioPaquetes]', RESEED, 0)
select * from ServicioPaquetes