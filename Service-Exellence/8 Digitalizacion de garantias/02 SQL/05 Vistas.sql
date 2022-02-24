-- =============================================
-- Autor:Francisco San Juan
-- Creación: 25/07/2022
-- Descripción: Vista para obtener informacion del detalle de Partes y Operaciones para el Formato F-1863 en las garantías web para FORD
-- =============================================
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_GarantiasPartsOperaciones') AND Type = 'V')
  DROP VIEW dbo.vwCA_GarantiasPartsOperaciones
GO
CREATE VIEW vwCA_GarantiasPartsOperaciones 
AS  
SELECT IdVenta			= VentaD.Id,
       articulo			= Art.ClaveFabricante,
	   tipo				= Art.Tipo,
	   prefijo			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),1),  
	   basico			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),2),
	   sufijo			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),3),
	   iva_total		= (Precio * Cantidad) + ( ( SUM ( ( Precio * Cantidad ) ) * ventad.Impuesto1 ) / 100 ) ,  
	   descripcion		= DescripcionExtra,
	   cantidad			= cantidad,
	   precio_unitario	= Precio ,
	   importe			= (Precio * Cantidad) ,
	   FordStar			= ( SELECT TOP 1 FordStar FROM Agente WHERE Agente.Agente = VentaD.Agente ),
	  RenglonID			= MAX(VentaD.RenglonID),
	  Renglon			= MAX(VentaD.Renglon),
	  RenglonSub		= MAX(VentaD.RenglonSub),
	  Agente			= VentaD.Agente,
	  Nombre			= ( SELECT TOP 1 Agente.Nombre FROM Agente WHERE Agente.Agente = VentaD.Agente ),
	  IDDanno			= MAX(CA_VentaD.IDDanno),
	  RenglonDanno		= MAX(CA_VentaD.RenglonDanno),
	  RenglonIDDanno	= MAX(CA_VentaD.RenglonIDSubDanno),
	  RenglonSubDanno	= MAX(CA_VentaD.RenglonSubDanno),
	  Adicional			= (CAST(MAX(CAST(CA_VentaD.Adicional as INT)) AS BIT)),
	  Autoriz_grte	= (CAST(MAX(CAST(CA_VentaD.Autoriz_grte as INT)) AS BIT)),
	  Autoriz_grtias	= (CAST(MAX(CAST(CA_VentaD.Autoriz_grtias as INT)) AS BIT)),
	  Autoriz_jefe	= (CAST(MAX(CAST(CA_VentaD.Autoriz_jefe as INT)) AS BIT)),
	  Nombre_gte =  CA_VentaD.nombre_gte,
	  Nombre_grtias =  CA_VentaD.nombre_grtias,
	  Nombre_jefe=  CA_VentaD.nombre_jefe
		
	   FROM VentaD 
			-- validar por que solo debe aplicar para articulo de tipo normal es decir de tipo refacciones
			JOIN art on ventad.articulo = art.articulo --and art.tipo = 'Normal' 
		LEFT JOIN CA_VentaD ON VentaD.ID = CA_VentaD.VentaID AND VentaD.Renglon = CA_VentaD.Renglon AND VentaD.RenglonID = CA_VentaD.RenglonID AND VentaD.RenglonSub = CA_VentaD.RenglonSub
	   WHERE ventad.cantidad > isnull( ventad.cantidadcancelada, 0 ) 
       --AND ID = 386560 
	
	   GROUP BY precio,cantidad,ventad.impuesto1,ventad.articulo,DescripcionExtra,Agente,Art.ClaveFabricante,art.Tipo,VentaD.Id,CA_VentaD.nombre_gte,CA_VentaD.nombre_grtias,CA_VentaD.nombre_jefe

-- =============================================
-- Autor:Manuel López V.
-- Creación: 04/02/2022
-- Descripción: Vista para obtener los técnicos disponibles en las garantías web para FORD se utiliza con filtro de SucursalEmpresa
-- =============================================
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_GarantiasTecnicosDisponibles') AND Type = 'V')
  DROP VIEW dbo.vwCA_GarantiasTecnicosDisponibles
GO
CREATE VIEW vwCA_GarantiasTecnicosDisponibles AS
	SELECT * FROM Agente
	WHERE "Tipo" = 'Mecanico'
	AND "Estatus" = 'ALTA'
	AND "Categoria" = 'Servicio'
	AND "Jornada" IS NOT NULL

-- =============================================
-- Autor:Manuel López V.
-- Creación: 04/02/2022
-- Descripción: Vista para obtener las manos de obra que son de tipo daño relacionado
-- =============================================
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_GarantiasMoDannos') AND Type = 'V')
  DROP VIEW dbo.vwCA_GarantiasMoDannos
GO
CREATE VIEW vwCA_GarantiasMoDannos 
AS
SELECT * FROM vwCA_GarantiasPartsOperaciones as VentaD WHERE CONCAT(IdVenta, ',',Renglon, ',', RenglonID, ',', RenglonSub) NOT IN (SELECT  CONCAT(IDDanno, ',',RenglonDanno, ',', RenglonIDSubDanno, ',', RenglonSubDanno) FROM CA_VentaD WHERE IDDanno IS NOT NULL AND IdDanno = VentaD.IdVenta)


--select vwCA_GarantiasMoDannos.*,CA_VentaD.ID AS idDetalles FROM vwCA_GarantiasMoDannos LEFT JOIN CA_VentaD ON IdVenta = CA_VentaD.VentaID AND vwCA_GarantiasMoDannos.Renglon = CA_VentaD.Renglon AND vwCA_GarantiasMoDannos.RenglonID = CA_VentaD.RenglonID AND vwCA_GarantiasMoDannos.RenglonSub = CA_VentaD.RenglonSub WHERE Tipo = 'Servicio' AND IdVenta = 386581