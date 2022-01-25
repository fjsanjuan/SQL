IF NOT EXISTS(SELECT * FROM SYS.COLUMNS WHERE OBJECT_ID = OBJECT_ID(N'cte') AND NAME = 'CRM_id')
BEGIN
	alter table cte
  		ADD CRM_id int
 END
 GO
 alter table ventaMPPedidoDMS
 	alter column nombre varchar(150)
 GO

IF OBJECT_ID(N'CRM_AutosComprados') IS NOT NULL
BEGIN
	DROP VIEW CRM_AutosComprados
END

GO

CREATE VIEW CRM_AutosComprados AS 
SELECT DISTINCT
	ct.Cliente,ct.Nombre,ct.eMail1,ct.eMail2,ct.TelefonosLada,ct.Telefonos,ct.PersonalTelefonoMovil,ct.Sexo,ct.Profesion,ct.EstadoCivil,ct.CodigoPostal,ct.Estado,ct.Direccion,ct.DireccionNumero,ct.DireccionNumeroInt,ct.Delegacion,ct.Colonia,
	ct.Poblacion,i.Descripcion,v.ServicioSerie,Art.Descripcion1 as modelo,v.FechaEmision,v.Sucursal as sucursal
FROM
	Cte ct
INNER JOIN Venta v ON v.Cliente = ct.Cliente
INNER JOIN VIN vi ON vi.VIN = v.ServicioSerie
INNER JOIN Art ON Art.Articulo = vi.Articulo
LEFT JOIN Identificacion i ON i.IdIdentificacion = ct.IdIdentificacion
WHERE
	v.Mov IN ('Factura unidad','Factura usado','Factura intercambio','FEL intercambio','FEL unidad','FEL usados')
AND v.Estatus = 'Concluido'
AND ISNULL(ct.CRM_id, -1) = -1
AND v.CancelacionID IS NULL

GO

IF OBJECT_ID(N'CRMISCliente') IS NOT NULL
BEGIN
	DROP VIEW CRMISCliente
END
GO

CREATE VIEW CRMISCliente AS 
SELECT DISTINCT
    cte.nombre,
    Cte.personalnombres,
    Cte.personalapellidopaterno,
    Cte.personalapellidomaterno,
    Cte.email1,
    Cte.telefonoslada,
    Cte.telefonos,
    Cte.contacto2,
    cte.sexo,
    cte.rfc,
    Cte.cliente,
    Cte.alta,
    Cte.ultimocambio,
    Cte.apoderadonombre,
    Cte.apoderadopaterno,
    cte.apoderadomaterno,
    Cte.apoderadorfc,
    Cte.ctemantenimiento,
    Cte.fiscalregimen,
    Cte.CRM_id,
    Cte.direccion,
    Cte.direccionnumero,
    Cte.delegacion,
    Cte.colonia,
    cte.codigopostal,
    cte.estado,
    Cte.pais,
    venta.sucursal,
    Venta.agente
FROM
    venta
JOIN cte ON Cte.cliente = Venta.cliente
AND cte.estatus = 'alta'
JOIN MovTipo ON MovTipo.Mov = Venta.Mov
AND MovTipo.Modulo = 'VTAS'
WHERE
    Venta.estatus IN ('concluido')
AND MovTipo.Clave IN ('VTAS.f', 'VTAS.s')
GROUP BY
    cte.nombre,
    Cte.personalnombres,
    Cte.personalapellidopaterno,
    Cte.personalapellidomaterno,
    Cte.email1,
    Cte.telefonoslada,
    Cte.telefonos,
    Cte.contacto2,
    cte.sexo,
    cte.rfc,
    Cte.cliente,
    Cte.alta,
    Cte.ultimocambio,
    Cte.apoderadonombre,
    Cte.apoderadopaterno,
    cte.apoderadomaterno,
    Cte.apoderadorfc,
    Cte.ctemantenimiento,
    Cte.fiscalregimen,
    Cte.CRM_id,
    Cte.direccion,
    Cte.direccionnumero,
    Cte.delegacion,
    Cte.colonia,
    cte.codigopostal,
    cte.estado,
    Cte.pais,
    venta.sucursal,
    Venta.agente
UNION ALL
    SELECT DISTINCT
        cte.nombre,
        Cte.personalnombres,
        Cte.personalapellidopaterno,
        Cte.personalapellidomaterno,
        Cte.email1,
        Cte.telefonoslada,
        Cte.telefonos,
        Cte.contacto2,
        cte.sexo,
        cte.rfc,
        Cte.cliente,
        Cte.alta,
        Cte.ultimocambio,
        Cte.apoderadonombre,
        Cte.apoderadopaterno,
        cte.apoderadomaterno,
        Cte.apoderadorfc,
        Cte.ctemantenimiento,
        Cte.fiscalregimen,
        Cte.CRM_id,
        Cte.direccion,
        Cte.direccionnumero,
        Cte.delegacion,
        Cte.colonia,
        cte.codigopostal,
        cte.estado,
        Cte.pais,
        agente.SucursalEmpresa,
        Agente.agente
    FROM
        cte
    JOIN Agente ON Cte.Agente = agente.agente
    AND cte.estatus = 'ALTA'
    GROUP BY
        cte.nombre,
        Cte.personalnombres,
        Cte.personalapellidopaterno,
        Cte.personalapellidomaterno,
        Cte.email1,
        Cte.telefonoslada,
        Cte.telefonos,
        Cte.contacto2,
        cte.sexo,
        cte.rfc,
        Cte.cliente,
        Cte.alta,
        Cte.ultimocambio,
        Cte.apoderadonombre,
        Cte.apoderadopaterno,
        cte.apoderadomaterno,
        Cte.apoderadorfc,
        Cte.ctemantenimiento,
        Cte.fiscalregimen,
        Cte.CRM_id,
        Cte.direccion,
        Cte.direccionnumero,
        Cte.delegacion,
        Cte.colonia,
        cte.codigopostal,
        cte.estado,
        Cte.pais,
        agente.SucursalEmpresa,
        agente.agente

IF OBJECT_ID(N'CRMISDetalle') IS NOT NULL
BEGIN
	DROP VIEW CRMISDetalle
END

GO

CREATE VIEW CRMISDetalle AS 
select venta_id_cliente,articuloactual,descripcion1,Precio from ((

select venta_id_cliente, codigo, articuloactual,Precio from ((select id as venta_id_cliente from Venta where Mov in ('Factura Servicio','CFD Serv Matriz',
'CFD Serv Suc','Factura Seguro','Factura Garantía','Consumo Interno' ,'FEL Servicio','FEL Seguro','FEL Garantía',
'Fac Interna Serv','Factura Refacc','FEL Refacc','Fac Interna Ref')) as venta_id JOIN
(select id, codigo, articuloactual,Precio from ventad) as venta_descripcion on venta_id_cliente=venta_descripcion.ID) 
) as venta_identificador
join 

(select articulo, descripcion1 from art) as descripcion

ON articuloactual=articulo


)
GO

IF OBJECT_ID(N'CRMISServicio') IS NOT NULL
BEGIN
	DROP VIEW CRMISServicio
END
GO 
CREATE VIEW CRMISServicio AS 
SELECT
	facturas.movid,facturas.cliente,VIN.articulo,facturas.servicioarticulo,facturas.ServicioTipoOperacion,facturas.fechaemision,facturas.servicioserie,facturas.preciototal,facturas.sucursal
FROM
	(
		SELECT
			movid,cliente,fechaemision,servicioserie,servicioarticulo,ServicioTipoOperacion,preciototal,sucursal
		FROM
			venta
		WHERE
			estatus = 'CONCLUIDO'
		AND cancelacionid != ''
		AND mov IN ('FEL Servicio','FEL Seguro','FEL Garantia','Factura Servicio','Factura Garantía','Factura Seguro')
	) AS facturas
LEFT JOIN vin ON facturas.servicioserie = VIN.VIN
GO
/*
IF OBJECT_ID(N'IntelisisWEBInventarios') IS NOT NULL
BEGIN
	DROP VIEW IntelisisWEBInventarios
END
GO
CREATE VIEW IntelisisWEBInventarios as
    SELECT 'Agencia'           = (SELECT RTRIM(E.FordDistribuidor) + RTRIM(E.FordMercado) FROM EmpresaGral E WHERE E.Empresa = V.Empresa),
         'TipoVenta'           = SUBSTRING(V.NumeroEconomico,1,1),
         'NumerodeInventario1' = SUBSTRING(CONVERT(varchar,V.Modelo),3,2),
         'NumerodeInventario2' = CONVERT(int,SUBSTRING(V.NumeroEconomico,8,6)),
         'DiasDeInventario'    = CASE WHEN V.FechaFacturaCompra IS NULL 
                                      THEN DATEDIFF(day, C.FechaEmision, GETDATE())
                                      ELSE DATEDIFF(day, V.FechaFacturaCompra, GETDATE()) END,
         'Estatus'             = CASE WHEN V.Estatus = 'DISPONIBLE' THEN 'R' WHEN V.Estatus = 'BLOQUEADO' THEN 'B' ELSE 'A' END,
         'Marca'               = A.Fabricante,
         'Modelo'              = V.Modelo,
         'ClaveModelo'         = V.Articulo,
         'Presentacion'        = A.Presentacion,
         'Descripcion'         = SUBSTRING(A.Descripcion1,1,80),
         'ColorExterior'       = SUBSTRING(V.ColorExteriorDescripcion,1,30),
         'ColorInterior'       = SUBSTRING(V.ColorInteriorDescripcion,1,30),
         'Transmision'         = CASE WHEN V.Transmision = 'STANDARD' THEN 'M' ELSE 'A' END,
         'Ubicacion'           = SUBSTRING(V.UbicacionFisica,1,20),
         'CostoUnidad'         = ISNULL(C.Importe,0) + ISNULL(C.Impuestos,0),
         'PrecioUnidad'        = (SELECT SUM(ISNULL(PrecioContado,0)) 
                                    FROM VinAccesorio VA 
                                   WHERE VA.Vin = V.Vin AND Va.Tipo IN (SELECT Tipo FROM VinTipoAccesorio WHERE AfectaPrecio = 1)),
         'Dolares_Pesos'       = CASE WHEN A.MonedaPrecio = 'Pesos' THEN 'P' ELSE 'D' END,
         'Observaciones'       = NULL,
         'ConsigRemisionados'  = CASE WHEN ISNULL(V.FechaPago,'01/01/1900') <= GETDATE() THEN 'N' ELSE 'S' END,
         'EquipoOpcional'      = dbo.fnVinEquipoOpcional(V.Vin),
         'FechaCompra'         = CASE WHEN CONVERT(varchar, V.FechaFacturacompra,111) IS NULL 
                                      THEN CONVERT(varchar, C.FechaEmision,111)
                                      ELSE CONVERT(varchar, V.FechaFacturacompra,111) END,
         'Demo'                = CASE WHEN V.VehiculoDemo = 0 THEN 'N' ELSE ISNULL(SUBSTRING(V.TipoVehiculoDemo,1,1),'D') END, 
         'NumeroDeSerie'       = V.Vin,
         'Localidad'           = CASE WHEN SL.Sucursal = 0 THEN '1' ELSE SL.Sucursal END,
         'FechaLiquidacion'    = CONVERT(varchar, V.FechaPago,103),
         'Empresa'             = V.Empresa,
         'Sucursal'            = SL.Sucursal,
         'Almacen'             = SL.Almacen,
         'Motor'               = V.Motor,
	 'NombreAgente'        = (SELECT TOP 1 ISNULL(Agente.nombre, '') from Agente LEFT JOIN ApartadoUnidades AU ON AU.agente = Agente.Agente WHERE AU.VIN = V.VIN ORDER BY AU.id DESC)
    FROM Vin    V
    JOIN Art    A  ON A.Articulo = V.Articulo
    JOIN Compra C  ON C.ID = V.CompraID
    JOIN SerieLote SL ON SL.Empresa=C.Empresa AND SL.Sucursal=C.Sucursal AND SL.Almacen=C.Almacen AND V.Vin=SL.SerieLote AND SL.Existencia>0
    WHERE  V.Estatus IN ('BLOQUEADO', 'DISPONIBLE', 'RESERVADO', 'ENFIRME')
    AND NOT EXISTS (SELECT I.* FROM SerieloteMov SLM JOIN INV I ON I.Id = SLM.Id WHERE SLM.SerieLote = V.Vin AND I.Mov IN ('Entrada Diversa','Recibo Traspaso', 'Recibo Trasp Unidad') AND SLM.Sucursal = SL.Sucursal AND SLM.Modulo = 'INV' AND ((I.FechaEmision>C.FechaEmision) OR ((I.FechaEmision=C.FechaEmision) AND (I.UltimoCambio>C.UltimoCambio))) AND I.Estatus = 'CONCLUIDO')--LJG se cambio C.ESTATUS por I.estatus
    UNION ALL
    SELECT 'Agencia'             = (SELECT RTRIM(E.FordDistribuidor) + RTRIM(E.FordMercado) FROM EmpresaGral E WHERE E.Empresa = V.Empresa), 
         'TipoVenta'           = SUBSTRING(V.NumeroEconomico,1,1),
         'NumerodeInventario1' = SUBSTRING(CONVERT(varchar,V.Modelo),3,2),
         'NumerodeInventario2' = CONVERT(int,SUBSTRING(V.NumeroEconomico,8,6)),
         'DiasDeInventario'    = CASE WHEN V.FechaFacturaCompra IS NULL 
                                      THEN DATEDIFF(day, I.FechaEmision, GETDATE())
                                      ELSE DATEDIFF(day, V.FechaFacturaCompra, GETDATE()) END,
         'Estatus'             = CASE WHEN V.Estatus = 'DISPONIBLE' THEN 'R' WHEN V.Estatus = 'BLOQUEADO' THEN 'B' ELSE 'A' END,
         'Marca'               = A.Fabricante,
         'Modelo'              = V.Modelo,
         'ClaveModelo'         = V.Articulo,
         'Presentacion'        = A.Presentacion,
         'Descripcion'         = SUBSTRING(A.Descripcion1,1,80),
         'ColorExterior'       = SUBSTRING(V.ColorExteriorDescripcion,1,30),
         'ColorInterior'       = SUBSTRING(V.ColorInteriorDescripcion,1,30),
         'Transmision'         = CASE WHEN V.Transmision = 'STANDARD' THEN 'M' ELSE 'A' END,
         'Ubicacion'           = SUBSTRING(V.UbicacionFisica,1,20),
         'CostoUnidad'         = dbo.fnVinCostoDetalle(I.ID, V.Vin, A.Articulo),
         'PrecioUnidad'        = (SELECT SUM(ISNULL(PrecioContado,0)) 
                                    FROM VinAccesorio VA 
                                   WHERE VA.Vin = V.Vin AND Va.Tipo IN (SELECT Tipo FROM VinTipoAccesorio WHERE AfectaPrecio = 1)),
         'Dolares_Pesos'       = CASE WHEN A.MonedaPrecio = 'Pesos' THEN 'P' ELSE 'D' END,
         'Observaciones'       = NULL,
         'ConsigRemisionados'  = CASE WHEN ISNULL(V.FechaPago,'01/01/1900') <= GETDATE() THEN 'N' ELSE 'S' END,
         'EquipoOpcional'      = dbo.fnVinEquipoOpcional(V.Vin),
         'FechaCompra'         = CASE WHEN CONVERT(varchar, V.FechaFacturacompra,111) IS NULL 
                                      THEN CONVERT(varchar, I.FechaEmision,111)
                                      ELSE CONVERT(varchar, V.FechaFacturacompra,111) END,
         'Demo'                = CASE WHEN V.VehiculoDemo = 0 THEN 'N' ELSE ISNULL(SUBSTRING(V.TipoVehiculoDemo,1,1),'D') END, 
         'NumeroDeSerie'       = V.Vin,
         'Localidad'           = CASE WHEN SL.Sucursal = 0 THEN '1' ELSE SL.Sucursal END,
         'FechaLiquidacion'    = CONVERT(varchar, V.FechaPago,103),
         'Empresa'             = V.Empresa,
         'Sucursal'            = SL.Sucursal,
         'Almacen'             = SL.Almacen,
         'Motor'               = V.Motor,
	 'NombreAgente'        = (SELECT TOP 1 ISNULL(Agente.nombre, '') from Agente LEFT JOIN ApartadoUnidades AU ON AU.agente = Agente.Agente WHERE AU.VIN = V.VIN ORDER BY AU.id DESC)
    FROM Vin    V
    JOIN Art    A       ON A.Articulo = V.Articulo
    JOIN SerieLote SL   ON SL.SerieLote=V.Vin AND SL.Existencia>0
    JOIN SerieLoteMov S ON S.Empresa=SL.Empresa AND S.Sucursal=SL.Sucursal AND S.Modulo='INV' AND S.SerieLote=VIN AND S.ID=(Select Max(L.ID) From SerieLoteMov L JOIN INV IV ON IV.ID=L.ID AND IV.Estatus = 'CONCLUIDO' AND IV.Mov IN ('Entrada Diversa','Recibo Traspaso', 'Recibo Trasp Unidad') Where L.Empresa=SL.Empresa AND L.Sucursal=SL.Sucursal AND L.Modulo='INV' AND L.SerieLote=V.Vin)
    JOIN Inv I          ON I.ID = S.ID
   WHERE V.Estatus IN ('BLOQUEADO', 'DISPONIBLE', 'RESERVADO', 'ENFIRME')
     AND S.Modulo = 'INV'
     AND I.Estatus = 'CONCLUIDO'
     AND I.Mov IN ('Entrada Diversa','Recibo Traspaso', 'Recibo Trasp Unidad')
	 AND NOT EXISTS (SELECT C.* FROM SerieloteMov SLM JOIN Compra C ON C.Id = SLM.Id WHERE SLM.SerieLote = V.Vin AND C.Mov IN ('Recepción','Recepción Usados') AND SLM.Sucursal = SL.Sucursal AND SLM.Modulo = 'COMS' AND ((C.FechaEmision>I.FechaEmision) OR ((C.FechaEmision=I.FechaEmision) AND (C.UltimoCambio>I.UltimoCambio))) AND C.Cancelacionid IS NULL AND C.Estatus = 'CONCLUIDO')--LJG

     GO
     */