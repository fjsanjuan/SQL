ALTER PROCEDURE dbo.xpEdoWebUtiliad(
    @Empresa        varchar(5), 
    @Periodo        int,
    @Ejercicio      int,
    @TipoReporte    Varchar(10),
    @CtaVenta       varchar(20),
    @CtaDescuento   varchar(20),
    @CtaDevolucion  varchar(20),
    @CtaCosto       varchar(20),
    @Utilidad       money OUTPUT
)
AS 
BEGIN
  DECLARE 
    @Venta money,
    @Costo money,
    @Descuento money,
    @Devolucion money
    
    
  IF EXISTS(SELECT * FROM cta WHERE Cuenta = @CtaVenta)
    EXEC xpCA_spReporteadorSaldo @Empresa, @Periodo, @Ejercicio, @CtaVenta, @TipoReporte, NULL, @Venta OUTPUT 
  ELSE 
    SELECT @Venta = 0
  IF EXISTS(SELECT * FROM cta WHERE Cuenta = @CtaDescuento)
    EXEC xpCA_spReporteadorSaldo @Empresa, @Periodo, @Ejercicio, @CtaCosto, @TipoReporte, NULL, @Costo OUTPUT 
  ELSE 
    SELECT @Costo = 0
  IF EXISTS(SELECT * FROM cta WHERE Cuenta = @CtaDevolucion)
    EXEC xpCA_spReporteadorSaldo @Empresa, @Periodo, @Ejercicio, @CtaDescuento, @TipoReporte, NULL, @Descuento OUTPUT 
  ELSE 
    SELECT @Descuento = 0
  IF EXISTS(SELECT * FROM cta WHERE Cuenta = @CtaCosto)
    EXEC xpCA_spReporteadorSaldo @Empresa, @Periodo, @Ejercicio, @CtaDevolucion, @TipoReporte, NULL, @Devolucion OUTPUT 
  ELSE 
    SELECT @Devolucion = 0
  
  --SELECT Venta=@Venta, Costo=@Costo, Descuento=@Descuento, Devolucion=@Devolucion
  SELECT @Utilidad =  @Venta + @Costo + @Descuento + @Devolucion

  RETURN
END
