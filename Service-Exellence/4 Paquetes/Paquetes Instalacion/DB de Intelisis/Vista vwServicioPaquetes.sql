IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwServicioPaquetes') AND Type = 'V')
  DROP VIEW dbo.vwServicioPaquetes
GO
CREATE VIEW [dbo].[vwServicioPaquetes] AS 
SELECT 
	(SELECT COUNT(Renglon) FROM ServicioPaquetesD WHERE IdPaquete = ServicioPaquetes.Id) AS Detalle, 
	(SELECT COUNT(IdPaquete) FROM ServicioPaquetesR WHERE IdPaquete = ServicioPaquetes.Id) AS Configurado, 
	*
FROM ServicioPaquetes
WHERE  Estatus IN (1,2)
GO