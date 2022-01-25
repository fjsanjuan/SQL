CREATE FUNCTION fnEdoWebNoUnidades ( @Tipo varchar(20), @Articulo varchar(20), @Periodo int, @Ejercicio int, @TipoRep varchar(30), @Cuenta varchar(20))    
RETURNS int    
  
AS    
BEGIN  
  
  DECLARE   
    @Facturadas int,  
    @Canceladas int,  
    @Total      int  
  
  DECLARE @ArtTemp TABLE (Articulo varchar(20))  
  DECLARE @MovTemp TABLE (Mov varchar(20))  
    
  SELECT @Facturadas = 0, @Canceladas = 0, @Total = 0  
    
  IF @Tipo = 'Ordenes'  
  BEGIN  
    SELECT @Facturadas = (SELECT Count(*)  
                            FROM Venta WITH(NOLOCK)  
                           WHERE Mov IN ('FEL Servicio', 'FEL Seguro', 'FEL Garantía', 'Fac Interna Serv')  
                             AND Estatus = 'CONCLUIDO'  
                             AND ((Periodo = @Periodo AND @TipoRep = 'Mensual') OR (Periodo <= @Periodo AND @TipoRep = 'Acumulado'))  
                             AND Ejercicio = @Ejercicio)  
    SELECT @Canceladas = (SELECT COUNT(*)   
                            FROM Venta WITH(NOLOCK)  
                           WHERE Mov IN ('CE Servicio', 'CE Seguro', 'CE Garantía', 'Canc Interna Serv')  
                             AND Estatus = 'CONCLUIDO'  
                             AND ((Periodo = @Periodo AND @TipoRep = 'Mensual') OR (Periodo <= @Periodo AND @TipoRep = 'Acumulado'))  
                             AND Ejercicio = @Ejercicio)    
  END  
  ELSE IF @Tipo IN ('Nuevos', 'Usados Mayoreo', 'Usados Menudeo', 'Intercambios', 'Autofin','Flotilla')  
  BEGIN  
    INSERT INTO @ArtTemp  
    SELECT Articulo   
      FROM CA_CuentasContablesArticulo   
     WHERE Venta IN (SELECT Cuenta FROM Cta WHERE Rama = @Cuenta)   
       AND (    (@Tipo <> 'Nuevos')  
            OR  (@Tipo = 'Usados Mayoreo' AND Concepto = 'Mayoreo Usados')   
            OR  (@Tipo = 'Intercambios' AND Concepto = 'Intercambio')   
    )  
    UNION   
    SELECT Articulo  
      FROM Art   
     WHERE Rama IN (SELECT Articulo FROM CA_CuentasContablesArticulo   
                     WHERE Venta IN (SELECT Cuenta FROM Cta WHERE Rama = @Cuenta)   
                       AND (    (@Tipo <> 'Nuevos')  
                            OR  (@Tipo = 'Usados Mayoreo' AND Concepto = 'Mayoreo Usados')   
                            OR  (@Tipo = 'Usados Menudeo' AND Concepto = 'Menudeo Usados')  
                           ))  
    UNION  
    SELECT Articulo   
      FROM Art   
     WHERE Cuenta2 IN (SELECT Cuenta FROM Cta WHERE Rama = @Cuenta)  
       
    IF  NULLIF(@Articulo,'') IS NOT NULL  
    INSERT INTO @ArtTemp VALUES(@Articulo)  
  
    INSERT INTO @MovTemp  
    SELECT CA.Clave  
      FROM MovTipoContAuto CA  
      LEFT OUTER JOIN MovTipo MT ON CA.Modulo = MT.Modulo AND CA.Clave = MT.Mov  
     WHERE CA.Cuenta = 'por Omision'   
       AND MT.Clave = 'VTAS.F'  
       AND CA.CuentaOmision IN (SELECT Cuenta FROM Cta WHERE Rama = @Cuenta)   
  
    --select * from @ArtTemp  
    --select * from @MovTemp  
  
    SELECT @Facturadas = (SELECT COUNT(*)  
      FROM Venta WITH(NOLOCK)  
     WHERE Estatus = 'CONCLUIDO'  
       AND (   (EXISTS(SELECT * FROM @ArtTemp) AND ServicioArticulo IN (SELECT Articulo FROM @ArtTemp WHERE Articulo IS NOT NULL))  
            OR (NOT EXISTS(SELECT * FROM @ArtTemp WHERE Articulo IS NOT NULL) )  )  
       AND (    @Tipo  = 'Nuevos' AND Mov IN ('Factura Unidad','FEL Unidad')   
            OR  (@Tipo = 'Usados Mayoreo' AND Mov IN ('Factura Usados','FEL Usados') AND Concepto = 'Mayoreo Usados')  
            OR  (@Tipo = 'Usados Menudeo' AND Mov IN ('Factura Usados','FEL Usados') AND Concepto = 'Menudeo Usados')  
            OR  (@Tipo = 'Intercambios' AND Mov IN ('Factura Intercambio','FEL Intercambio'))  
            OR  (@Tipo = 'Autofin' AND Mov IN ('Factura Autofin','FEL Autofin'))  
            OR  (@Tipo = 'Flotilla' AND Mov IN ('Factura Flotilla','FEL Flotilla'))          
           )  
       AND ((Periodo = @Periodo AND @TipoRep = 'Mensual') OR (Periodo <= @Periodo AND @TipoRep = 'Acumulado'))  
       AND Ejercicio = @Ejercicio)  
         
    SELECT @Canceladas = (SELECT COUNT(*)  
      FROM Venta WITH(NOLOCK)  
     WHERE Estatus = 'CONCLUIDO'  
       AND (   (EXISTS(SELECT * FROM @ArtTemp) AND ServicioArticulo IN (SELECT Articulo FROM @ArtTemp WHERE Articulo IS NOT NULL))  
            OR (NOT EXISTS(SELECT * FROM @ArtTemp WHERE Articulo IS NOT NULL))  )  
       AND (  @Tipo = 'Nuevos' AND Mov IN ('Cancelación Unidad','CE Unidad')   
            OR  (@Tipo = 'Usados Mayoreo' AND Mov IN ('Cancelación Usados','CE Usados') AND Concepto = 'Mayoreo Usados')  
            OR  (@Tipo = 'Usados Menudeo' AND Mov IN ('Cancelación Usados','CE Usados') AND Concepto = 'Menudeo Usados')  
            OR  (@Tipo = 'Intercambios'   AND Mov IN ('Canc Intercambio','CE Intercambio'))  
            OR  (@Tipo = 'Autofin' AND Mov IN ('Cancelación Autofin','CE Autofin'))  
            OR  (@Tipo = 'Flotilla' AND Mov IN ('Cancelación Flotilla','CE Flotilla'))          
           )  
       AND ((Periodo = @Periodo AND @TipoRep = 'Mensual') OR (Periodo <= @Periodo AND @TipoRep = 'Acumulado'))  
       AND Ejercicio = @Ejercicio)  
  END  
  ELSE  
    SELECT @Facturadas =0, @Canceladas = 0  
  SELECT @Total = @Facturadas - @Canceladas  
  RETURN @Total  
END  
