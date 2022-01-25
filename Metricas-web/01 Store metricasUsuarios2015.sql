IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.metricasUsuarios2015') AND Type = 'P') 
  DROP PROCEDURE dbo.metricasUsuarios2015
GO
CREATE PROCEDURE [dbo].[metricasUsuarios2015] (@cantidadUsuario int, @fechaInicio DATE, @fechaFin DATE, @usuario VARCHAR(600), @usuariou VARCHAR(100))  
AS  
BEGIN  
  --ESTA PARTE PREGUNTA SI EXISTE UNA TABLA TEMPORAL GLOBAL Y FUNCIONA TAMBIEN PARA LAS TEMPORALES QUE NO SON GLOBALES.
  IF object_id(N'tempdb.dbo.##usuariosCC2015', N'U') IS NOT NULL
    DROP TABLE ##usuariosCC2015;
 
SELECT  *  
  INTO ##usuariosCC2015  
  FROM IndicadoresCCompleta2015 WITH (NOLOCK)
  WHERE  
    (  
     (@cantidadUsuario = 1 and CCUsu = @usuario) or  
     (CCUsu BETWEEN @usuario AND @usuariou)  
    )  
  AND Fecha BETWEEN @fechaInicio AND @fechaFin
  ORDER BY CCUsu, Fecha 

END  

GO