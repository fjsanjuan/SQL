CREATE PROCEDURE dbo.xpSeguimientoweb(
		@IdVenta		int         ,
    @Edo        varchar(30) ,
    @Nuevo      varchar(30) ,
    @Situacion  varchar(30) ,
    @Renglon    float       ,
    @RenglonId  int         ,
    @Comentarios varchar(250),
		@Realizado	      int OUTPUT
	)
AS 
BEGIN
	DECLARE 
    @IdSeg      int
		--@Realizado VARCHAR(2)
   
  IF EXISTS (SELECT * FROM CA_SeguimientoOperaciones WHERE idVenta = @IdVenta AND Renglon = @Renglon AND RenglonId = @RenglonId AND Estado = @Edo) 
  BEGIN
  SELECT @IdSeg = (SELECT TOP(1) Id FROM CA_SeguimientoOperaciones WHERE idVenta = @IdVenta 
                      AND Renglon = @Renglon AND RenglonId = @RenglonId AND Estado = @Edo ORDER BY ID DESC)
    UPDATE CA_SeguimientoOperaciones
       SET FechaFin = CURRENT_TIMESTAMP
     WHERE Id = @IdSeg

  END
  INSERT INTO CA_SeguimientoOperaciones
         (IdVenta , Renglon , RenglonId , Estado, FechaInicio, FechafIN, Usuario, Comentarios )
  VALUES (@IdVenta, @Renglon, @RenglonId, @Nuevo, CURRENT_TIMESTAMP, NULL, NULL ,NULLIF(@Comentarios,''))

  IF @@IDENTITY IS NOT NULL
  BEGIN
    UPDATE VentaD
       SET Estado = @Nuevo,
           FechaEstado = CONVERT(datetime, FLOOR(CONVERT(float, CURRENT_TIMESTAMP)))
     WHERE id = @IdVenta 
       AND Renglon = @Renglon 
     
			SELECT @Realizado = 1 
  END
	ELSE
			SELECT @Realizado = 0
			
	--SELECT @Realizado 
	RETURN
END

GO