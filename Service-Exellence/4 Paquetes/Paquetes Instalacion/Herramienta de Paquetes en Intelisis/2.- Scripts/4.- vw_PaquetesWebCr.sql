/****** Object:  View [dbo].[vwPaquetesWebCr]    Script Date: 01/06/2016 11:05:17 a. m. ******/

SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

-- =============================================
-- Autor: José Ivan Morales Ceja
-- Creación: 01-Junio-2016
-- Descripción: Visualiza los articulos que contiene cada paquete
-- Parámetros: Ninguno
-- Resultado: Ninguno
-- Modificó: --
-- =============================================
IF EXISTS(SELECT * FROM sysobjects WHERE name='vwPaquetesWebCr')
DROP VIEW vwPaquetesWebCr
GO
CREATE VIEW [dbo].[vwPaquetesWebCr]
AS
    SELECT SPD.Articulo,SPD.SubtipoCuenta,SPD.Cantidad,SPD.AlmacenEsp,SPD.ListaPreciosEsp,Art.Unidad,Art.Tipo,Art.Impuesto1, Art.Impuesto2,Art.Impuesto3,Art.Descripcion1,
           SPD.PrecioUnitario,SPD.TTabulado,SP.Precio,SP.TipoPrecio,SP.Prorrateo,SPD.IdPaquete
      FROM ServicioPaquetesD SPD 
 INNER JOIN Art ON SPD.Articulo = Art.Articulo 
 INNER JOIN ServicioPaquetes SP ON SPD.IdPaquete = SP.Id
GO