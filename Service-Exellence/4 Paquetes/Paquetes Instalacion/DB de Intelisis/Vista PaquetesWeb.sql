IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.PaquetesWeb') AND Type = 'V')
  DROP VIEW dbo.PaquetesWeb
GO
CREATE VIEW [dbo].[PaquetesWeb] AS 
SELECT A.IdPaquete, A.Regla, A.Definicion AS Articulo, 
			M.Definicion AS Modelo, 
			C.Definicion AS Cilindros, 
			T.Definicion AS Transmision, 
			MT.Definicion AS Motor,
			SP.DescripcionC, SP.DescripcionL, SP.TipoPaquete, SP.Kilometraje, SP.ClavePlanta
    FROM ServicioPaquetesR  A
JOIN ServicioPaquetesR M ON A.IdPaquete = M.IdPaquete AND A.Regla = M.Regla
JOIN ServicioPaquetesR C ON A.IdPaquete = C.IdPaquete AND A.Regla = C.Regla
JOIN ServicioPaquetesR T ON A.IdPaquete = T.IdPaquete AND A.Regla = T.Regla
JOIN ServicioPaquetesR MT ON A.IdPaquete = MT.IdPaquete AND A.Regla = MT.Regla
JOIN ServicioPaquetes SP ON A.IdPaquete = SP.Id AND SP.Estatus = 1
   WHERE  A.Condicion = 'Articulo'
AND M.Condicion = 'Modelo'
AND C.Condicion = 'Cilindros'
AND T.Condicion = 'Transmision'
AND MT.Condicion = 'Motor'
GO