IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_ServicioPaquetes') AND Type = 'V')
  DROP VIEW dbo.vwCA_ServicioPaquetes
GO
CREATE VIEW [dbo].vwCA_ServicioPaquetes AS 
SELECT 
	(SELECT COUNT(Renglon) FROM CA_ServicioPaquetesD WHERE IdPaquete = CA_ServicioPaquetes.Id) AS Detalle, 
	(SELECT COUNT(IdPaquete) FROM CA_ServicioPaquetesR WHERE IdPaquete = CA_ServicioPaquetes.Id) AS Configurado, 
	*
FROM CA_ServicioPaquetes
WHERE  Estatus IN (1,2)
GO