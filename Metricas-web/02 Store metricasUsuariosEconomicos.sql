IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.metricasUsuariosEconomicos') AND Type = 'P') 
  DROP PROCEDURE dbo.metricasUsuariosEconomicos
GO
CREATE PROCEDURE [dbo].[metricasUsuariosEconomicos] (@cantidadUsuario int, @fechaInicio DATE, @fechaFin DATE, @usuario VARCHAR(600), @usuariou VARCHAR(100))  
AS  
BEGIN  
  --ESTA PARTE PREGUNTA SI EXISTE UNA TABLA TEMPORAL GLOBAL Y FUNCIONA TAMBIEN PARA LAS TEMPORALES QUE NO SON GLOBALES.
  IF object_id(N'tempdb.dbo.##usuariosCCEconomicos', N'U') IS NOT NULL
    DROP TABLE ##usuariosCCEconomicos;
 
SELECT  *  
  INTO ##usuariosCCEconomicos  
  FROM IndicadoresCCEconomicos
  WHERE  
    (  
     (@cantidadUsuario = 1 and CCUsu = @usuario) or  
     (CCUsu BETWEEN @usuario AND @usuariou)  
    )  
  AND Fecha BETWEEN @fechaInicio AND @fechaFin
  ORDER BY CCUsu, Fecha 

END
GO