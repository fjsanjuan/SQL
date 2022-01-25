/****** Object:  View [dbo].[PaquetesWeb_VV]    Script Date: 07/06/2016 05:43:33 p. m. ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO

CREATE VIEW [dbo].[PaquetesWeb_VV] AS 
SELECT A.IdPaquete,A.Definicion AS Articulo, 
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
GROUP BY A.IdPaquete,A.Definicion, 
			M.Definicion, 
			C.Definicion, 
			T.Definicion, 
			MT.Definicion,
			SP.DescripcionC, SP.DescripcionL, SP.TipoPaquete, SP.Kilometraje, SP.ClavePlanta
--order by 1

GO


