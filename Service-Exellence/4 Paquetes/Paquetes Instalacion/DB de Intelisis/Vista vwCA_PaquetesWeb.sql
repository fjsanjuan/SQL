IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_PaquetesWeb') AND Type = 'V')
  DROP VIEW dbo.vwCA_PaquetesWeb
GO
CREATE VIEW [dbo].[vwCA_PaquetesWeb] AS 
SELECT A.IdPaquete, A.Regla, A.Definicion AS Articulo, 
			M.Definicion AS Modelo, 
			C.Definicion AS Cilindros, 
			T.Definicion AS Transmision, 
			MT.Definicion AS Motor,
			SP.DescripcionC, SP.DescripcionL, SP.TipoPaquete, SP.Kilometraje, SP.ClavePlanta
    FROM CA_ServicioPaquetesR  A
JOIN CA_ServicioPaquetesR M ON A.IdPaquete = M.IdPaquete AND A.Regla = M.Regla
JOIN CA_ServicioPaquetesR C ON A.IdPaquete = C.IdPaquete AND A.Regla = C.Regla
JOIN CA_ServicioPaquetesR T ON A.IdPaquete = T.IdPaquete AND A.Regla = T.Regla
JOIN CA_ServicioPaquetesR MT ON A.IdPaquete = MT.IdPaquete AND A.Regla = MT.Regla
JOIN CA_ServicioPaquetes SP ON A.IdPaquete = SP.Id AND SP.Estatus = 1
   WHERE  A.Condicion = 'Articulo'
AND M.Condicion = 'Modelo'
AND C.Condicion = 'Cilindros'
AND T.Condicion = 'Transmision'
AND MT.Condicion = 'Motor'
GO