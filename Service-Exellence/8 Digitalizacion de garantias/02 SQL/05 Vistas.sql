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
	  RenglonID			= MAX(RenglonID),
	  Renglon			= MAX(Renglon),
	  RenglonSub		= MAX(RenglonSub),
	  Agente			= VentaD.Agente,
	  Nombre			= ( SELECT TOP 1 Agente.Nombre FROM Agente WHERE Agente.Agente = VentaD.Agente )
		
	   FROM VentaD 
			-- validar por que solo debe aplicar para articulo de tipo normal es decir de tipo refacciones
			JOIN art on ventad.articulo = art.articulo --and art.tipo = 'Normal' 
	   WHERE ventad.cantidad > isnull( ventad.cantidadcancelada, 0 ) 
       --AND ID = 386560 
	
	   GROUP BY precio,cantidad,ventad.impuesto1,ventad.articulo,DescripcionExtra,Agente,Art.ClaveFabricante,art.Tipo,VentaD.Id