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
SELECT Articulo			= Art.ClaveFabricante,
	   Tipo				= Art.Tipo,
	   PREFIJO			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),1),  
	   BASICO			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),2),
	   SUFIJO			= dbo.fnCA_ParteCodigoGrtias(rtrim(ltrim(Art.ClaveFabricante)),3),
	   Iva_total		= (Precio * Cantidad) + ( ( SUM ( ( Precio * Cantidad ) ) * ventad.Impuesto1 ) / 100 ) ,  
	   Descripcion		= DescripcionExtra,
	   Cantidad			= cantidad,
	   Precio_unitario	= Precio ,
	   Total			= (Precio * Cantidad) ,
	   FordStar			= ( SELECT TOP 1 FordStar FROM Agente WHERE Agente.Agente = VentaD.Agente ) 
		
	   FROM VentaD 
			-- validar por que solo debe aplicar para articulo de tipo normal es decir de tipo refacciones
			JOIN art on ventad.articulo = art.articulo --and art.tipo = 'Normal' 
	   WHERE ID = 386560  AND ventad.cantidad > isnull( ventad.cantidadcancelada, 0 ) 
	
	   GROUP BY precio,cantidad,ventad.impuesto1,ventad.articulo,DescripcionExtra,Agente,Art.ClaveFabricante,art.Tipo