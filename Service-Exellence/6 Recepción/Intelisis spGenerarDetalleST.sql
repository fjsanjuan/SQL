CREATE PROCEDURE [dbo].[spGenerarDetalleST]  
	@Tabla			nvarchar(30),
	@Id				int,
	@Empresa        char(5),
	@Sucursal       int, 
	@Estacion		int,
	@Produccion     bit,
    @OkRef          varchar(255) OUTPUT  

AS BEGIN 
	DECLARE
	@ListaPreciosEsp		varchar(50),
	@MovMoneda				char(10),   
    @MovTipoCambio			float,    
	@Mov					varchar(20),
    @ServicioTipo			varchar(50),    
    @FechaRequerida			datetime, 
	@FechaEmision			datetime,
	@EnviarA				int,
	@Vin					varchar( 20), 
    @Renglon				float,  
    @Articulo				varchar(20),  
    @Descripcion			varchar(100),  
    @Cantidad				float,  
    @RenglonID				int,    
    @SubCuenta				varchar( 50),    
    @Precio					float,  
    @Unidad					varchar( 50),    
    @ArtTipo				varchar( 20),    
    @RenglonTipo			char(1),    
    @Impuesto1				float,    
    @Impuesto2				float,    
    @Impuesto3				money,    
    @ZonaImpuesto			varchar( 50),    
    @ListaPrecios			varchar( 50),    
    @Contacto				varchar(10),  
    @Automovil				char(20),  
    @Modelo					varchar(  4),  
    @DescripcionArt			varchar(100),  
    @PrecioPaquete			money,  
    @Diferencia				money,  
    @PrecioComponentes		money,  
    @DescuentoImporte		money,   
    @DescuentoLinea			money,  
    @TipoPrecio				varchar( 20),  
    @Prorrateo				varchar( 25),  
    @Operacion				varchar( 15),  
    @AlmacenSer				varchar( 10),  
    @AlmacenRef				varchar( 10), 
	@Almacen				char(10),   
	@UsarWa					int, 
	@Origen					varchar(20),
	@PrecioPlantilla		float,
	@DescripcionExtra		varchar(100),
	@AlmacenMO				varchar( 10),  
	@Cilindros				char(4),
	@Transmision			char(40),
	@IdPaquete				int,
	@IdPaqueteLP			int,
	@TiempoTab				float, 
    @ArticuloPF             varchar(20)
	
	CREATE TABLE #Renglones
  (  
    ID                  int, 
    Renglon             float         NULL,  
    RenglonID           int           NULL,  
    RenglonTipo         char(1)       NULL,        
    Articulo            char(20)      NULL,  
    SubCuenta           varchar( 50)  NULL,  
    Ut                  float         NULL,  
    Cantidad            float         NULL,
    Unidad              varchar( 50)  NULL,
    Precio              money         NULL,
    Almacen             char(10)      NULL,
    FechaRequerida      datetime      NULL,
    Impuesto1           float         NULL,
    Impuesto2           float         NULL,
    Impuesto3           money         NULL,
    DescripcionExtra    varchar(100)  NULL,
    Paquete             int           NULL,
    DescuentoImporte    money         NULL, 
    DescuentoLinea      money         NULL,
    ArtTipo             varchar( 20)  NULL,
	Ttabulado			float
   )  


	IF (SELECT COUNT(ID) FROM VentaD WHERE Id = @ID) =0
		BEGIN
			SELECT @Renglon = 0.0, @RenglonID = 0  
		END
	ELSE
		BEGIN
			SELECT @Renglon = (SELECT MAX(Renglon) 
			  FROM VentaD 
			 WHERE Id = @ID), @RenglonID = (SELECT MAX(RenglonId) FROM VENTAD WHERE Id = @ID)  
		END

  SELECT @Mov = Mov, @ZonaImpuesto = Venta.ZonaImpuesto, @FechaEmision = Venta.FechaEmision, @Contacto = Venta.Cliente, 
         @EnviarA = Venta.EnviarA, @Automovil = Art.Articulo, @Vin = Venta.ServicioSerie, @ServicioTipo = Venta.ServicioTipo,  
		     @Almacen = Venta.Almacen, @ListaPreciosEsp = Venta.ListaPreciosEsp,@MovMoneda = Venta.Moneda,@MovTipoCambio = Venta.TipoCambio,
		     @Cilindros = Art.CilindrosArt, @Transmision = Art.TransmisionArt
    FROM Venta
		LEFT OUTER JOIN Art ON Venta.ServicioArticulo = Art.Articulo
	 WHERE ID = @ID  

	SELECT @Modelo = Modelo
    FROM Vin
	 WHERE Vin = @Vin

	DELETE VentaD 
	 WHERE ID = @ID  AND Paquete IN (SELECT Clave FROM ListaSt WHERE Estacion = @Estacion)

	SELECT @OkRef = NULL 

	SELECT @AlmacenRef = AlmacenPrincipal, @AlmacenSer = wAlmacen 
	  FROM Sucursal 
	 WHERE Sucursal = @Sucursal
    
	SELECT @UsarWA =  ISNULL(UsarWA,0) 
	  FROM empresaGral 
	 WHERE Empresa <> 'DEMO'    
	
	SELECT @Origen = Origen  
	  FROM PaquetesTodos 
	 where TipoServicio = @ServicioTipo    

  DECLARE crPlantilla CURSOR FOR  
	SELECT Articulo,SubtipoCuenta,Cantidad,NULLIF(AlmacenEsp,''),ISNULL(NULLIF(ListaPreciosEsp,''),@ListaPreciosEsp),Unidad,Tipo,Impuesto1,Impuesto2,Impuesto3,Descripcion1,PrecioUnitario,IdPaquete,TTabulado
	  FROM vwPaquetesWebCr
     WHERE IdPaquete in (SELECT Clave FROM ListaSt WHERE Estacion = @Estacion) 

  OPEN crPlantilla  
  FETCH NEXT FROM crPlantilla 
	INTO @Articulo, @SubCuenta, @Cantidad, @Almacen, @ListaPrecios, @Unidad, @ArtTipo, @Impuesto1, @Impuesto2, @Impuesto3, @DescripcionArt, @PrecioPlantilla,@IdPaquete,@TiempoTab         
  WHILE @@FETCH_STATUS <> -1 AND @OkRef IS NULL  
	BEGIN  
	 IF @@FETCH_STATUS <> -2 AND @OkRef IS NULL
		BEGIN  
			SELECT @Renglon   = @Renglon + 2048.0, @RenglonID = @RenglonID + 1, @Precio    = NULL  
			EXEC spRenglonTipo @ArtTipo, @SubCuenta, @RenglonTipo OUTPUT  
			 
			IF @PrecioPlantilla IS NOT NULL and @PrecioPlantilla <> 0--(@UsarWa = 1 AND @Origen = 'Planta')
			BEGIN
				  SELECT @Precio = @PrecioPlantilla    
			END --FIN BEGIN PRECIO PLANTILLA
			ELSE
			BEGIN
				EXEC spPCGet @Sucursal, @Empresa, @Articulo, @SubCuenta, @Unidad, @MovMoneda, @MovTipoCambio, @ListaPrecios, @Precio OUTPUT  
				IF ISNULL(@Precio,0) = 0
				BEGIN
					SELECT @OkRef = 'El artículo: ' + ISNULL(@Articulo,'') + ' no tiene configurado un precio en la lista de precios: ' + ISNULL(@ListaPrecios,'')
				END--FIN BEGIN PRECIO 
			END--FIN ELSE

			IF @OkRef IS NULL
			BEGIN
				EXEC spZonaImp @ZonaImpuesto, @Impuesto1 OUTPUT  
				EXEC spZonaImp @ZonaImpuesto, @Impuesto2 OUTPUT  
				EXEC spZonaImp @ZonaImpuesto, @Impuesto3 OUTPUT  
				EXEC spTipoImpuesto 'VTAS', @ID, @Mov, @FechaEmision, @Empresa, @Sucursal, @Contacto, @EnviarA, @Articulo = @Articulo, @EnSilencio = 1, @Impuesto1 = @Impuesto1 OUTPUT, @Impuesto2 = @Impuesto2 OUTPUT, @Impuesto3 = @Impuesto3 OUTPUT
			
				IF @ArtTipo = 'SERVICIO'
				  BEGIN
					  INSERT #Renglones (ID,  Renglon,  RenglonID,  RenglonTipo,  Articulo,  SubCuenta,  UT,        Cantidad,  Unidad,  Precio,  Almacen,                      FechaRequerida,  Impuesto1,  Impuesto2,  Impuesto3, DescripcionExtra,Paquete,ArtTipo,Ttabulado)   
					  VALUES (@ID, @Renglon, @RenglonID, @RenglonTipo, @Articulo, @SubCuenta, @Cantidad, @Cantidad, @Unidad, @Precio, ISNULL(@AlmacenSer,@Almacen), @FechaRequerida, @Impuesto1, @Impuesto2, @Impuesto3, @DescripcionArt,@IdPaquete,@ArtTipo,@TiempoTab)  
				  END--FIN @ARTTIPO = 'SERVICIO'
				ELSE
					INSERT #Renglones (ID,  Renglon,  RenglonID,  RenglonTipo,  Articulo,  SubCuenta,  Cantidad,  Unidad,  Precio,  Almacen,                      FechaRequerida,  Impuesto1,  Impuesto2,  Impuesto3, DescripcionExtra,Paquete,ArtTipo,Ttabulado)   
					VALUES (@ID, @Renglon, @RenglonID, @RenglonTipo, @Articulo, @SubCuenta, @Cantidad, @Unidad, @Precio, ISNULL(@Almacen,@AlmacenSer), @FechaRequerida, @Impuesto1, @Impuesto2, @Impuesto3, @DescripcionArt,@IdPaquete,@ArtTipo,@TiempoTab)      
			END--FIN @OkRef 
		END--FIN @@FETCH_STATUS <> -2
    FETCH NEXT FROM crPlantilla INTO @Articulo, @SubCuenta, @Cantidad, @Almacen, @ListaPrecios, @Unidad, @ArtTipo, @Impuesto1, @Impuesto2, @Impuesto3, @DescripcionArt, @PrecioPlantilla,@IdPaquete,@TiempoTab
  END--FIN @@FETCH_STATUS <> -1  
  CLOSE crPlantilla  
  DEALLOCATE crPlantilla  

  IF @OkRef IS NULL
  BEGIN
	  DECLARE ListaPaq CURSOR FOR 
		SELECT ISNULL(Precio,0), ISNULL(TipoPrecio,'Suma de componentes'), Prorrateo, Id
		  FROM ServicioPaquetes 
		 WHERE Id in (SELECT Clave FROM ListaSt WHERE Estacion = @Estacion) 
       AND ISNULL(TipoPrecio,'Suma de componentes') = 'Precio Fijo'
	  OPEN ListaPaq
	  FETCH NEXT FROM ListaPaq INTO  @PrecioPaquete,@TipoPrecio, @Prorrateo,@IdPaqueteLP
	  WHILE (@@FETCH_STATUS = 0)
		BEGIN
			IF @TipoPrecio = 'Precio Fijo'
			BEGIN 
				SELECT @PrecioComponentes = (SELECT SUM(Cantidad*Precio) FROM #Renglones WHERE Paquete = @IdPaqueteLP)
				SELECT @Diferencia = @PrecioPaquete - @PrecioComponentes
				IF @Diferencia >= 0 
					SELECT @Operacion = 'Agregar'
				ELSE IF @Diferencia < 0
					SELECT @Operacion ='Descontar',@Diferencia = @Diferencia*(-1)
        ELSE
          SELECT @Operacion ='NA'

		    IF @Operacion <> 'NA'
        BEGIN
				   /************** PRORATEO POR REFACCIONES **************/
				  IF @Prorrateo = 'Refacciones'
				  BEGIN
					SELECT @PrecioComponentes = (SELECT SUM(Cantidad*Precio) FROM #Renglones WHERE ArtTipo NOT IN ('SERVICIO','JUEGO'))--<> 'SERVICIO')
					IF @Operacion = 'Descontar'
						 UPDATE #Renglones 
						    SET DescuentoImporte = ((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia,
						        DescuentoLinea = ((((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/(CASE WHEN (((ISNULL(Precio,0)*ISNULL(Cantidad,0)))) = 0 THEN 1 ELSE (((ISNULL(Precio,0)*ISNULL(Cantidad,0)))) END))*100
						  WHERE ArtTipo NOT IN ('SERVICIO','JUEGO')
                AND Paquete = @IdPaqueteLP
				   ELSE
						 UPDATE #Renglones 
						    SET Precio = Precio +( (((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/ISNULL(Cantidad,0)    ) 
						  WHERE ArtTipo NOT IN ('SERVICIO','JUEGO')
                AND Paquete = @IdPaqueteLP
				END
				
				  /************** PRORATEO POR SERVICIO **************/
				  ELSE IF @Prorrateo = 'Servicio'
				  BEGIN
					  IF EXISTS (SELECT * FROM #Renglones WHERE ArtTipo IN ('SERVICIO','JUEGO'))--ArtTipo = 'SERVICIO')
					  BEGIN
						  SELECT @PrecioComponentes = (SELECT SUM(Cantidad*Precio) FROM #Renglones WHERE ArtTipo = 'SERVICIO' AND Paquete = @IdPaqueteLP)
						  IF @Operacion = 'Descontar'
							  UPDATE #Renglones 
                   SET DescuentoImporte = ((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia,DescuentoLinea = ((((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/(((ISNULL(Precio,0)*ISNULL(Cantidad,0)))))*100
							   WHERE ArtTipo IN ('SERVICIO','JUEGO')
                   AND Paquete = @IdPaqueteLP
						  ELSE
							  UPDATE #Renglones 
                   SET Precio = Precio +( (((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/ISNULL(Cantidad,0)    ) 
						     WHERE ArtTipo IN ('SERVICIO','JUEGO')
                   AND Paquete = @IdPaqueteLP
					  END
					  ELSE
					  /************** PRORATEO POR SERVICIO AGREGANDO LA OPERACIÓN DE MANO DE OBRA **************/
            BEGIN
					    EXEC spZonaImp @ZonaImpuesto, @Impuesto1 OUTPUT  
						  EXEC spZonaImp @ZonaImpuesto, @Impuesto2 OUTPUT  
						  EXEC spZonaImp @ZonaImpuesto, @Impuesto3 OUTPUT  

					    SELECT @Renglon   = @Renglon + 2048.0,  
						         @RenglonID = @RenglonID + 1,  
								     @Precio    = NULL  
						  SELECT @ArtTipo = Tipo, @Unidad = Unidad, @DescripcionExtra = Descripcion1, @AlmacenMO = AlmacenROP 
							  FROM Art 
						   WHERE Articulo = 'MO PAQ'    

						  --SELECT @AlmacenSer = AlmacenPrincipal
						--	  FROM Sucursal 
               --WHERE Sucursal = @Sucursal
						  SELECT @AlmacenSer = ISNULL(@AlmacenSer,@AlmacenMO)

						  IF @Operacion = 'Descontar'
						  BEGIN
						    SELECT @DescuentoImporte =(@Diferencia+1) 
							  SELECT @DescuentoLinea = @DescuentoImporte * 100
							  INSERT #Renglones (ID ,Renglon,  RenglonID,  RenglonTipo,Articulo,SubCuenta,Ut,Cantidad,Unidad, Precio,     DescuentoImporte, DescuentoLinea, Almacen,    FechaRequerida, Impuesto1, Impuesto2, Impuesto3, Paquete,            DescripcionExtra ,ArtTipo,Ttabulado)
							  VALUES(@ID,@Renglon, @RenglonID, 'N',        'MO PAQ',NULL,     1, 1,       @Unidad,1,          @DescuentoImporte,@DescuentoLinea,@AlmacenSer,@FechaRequerida,@Impuesto1,@Impuesto2,@Impuesto3,@IdPaqueteLP,@DescripcionExtra,@ArtTipo,NULL)
						  END
						  ELSE
						    INSERT #Renglones (ID ,Renglon,  RenglonID,  RenglonTipo,Articulo,SubCuenta,Ut,Cantidad,Unidad, Precio,     DescuentoImporte, DescuentoLinea, Almacen,    FechaRequerida, Impuesto1, Impuesto2, Impuesto3, Paquete,            DescripcionExtra,ArtTipo,Ttabulado)
							  VALUES(@ID,@Renglon, @RenglonID, 'N',        'MO PAQ',NULL,     1, 1,       @Unidad,@Diferencia,0,               0,              @AlmacenSer,@FechaRequerida,@Impuesto1,@Impuesto2,@Impuesto3,@IdPaqueteLP,@DescripcionExtra,@ArtTipo,NULL)
					  END
				  END --- end prorrateo =  'servicio'      
				  /************** PRORATEO POR SERVICIO Y REFACCIONES **************/
				  ELSE IF @Prorrateo = 'Ambos'
				  BEGIN
          IF EXISTS (SELECT * FROM #Renglones WHERE ArtTipo IN ('SERVICIO','JUEGO') AND Paquete = @IdPaqueteLP)--ArtTipo = 'SERVICIO')
					BEGIN
					  SELECT @PrecioComponentes = (SELECT SUM(Cantidad*Precio) FROM #Renglones)
						IF @Operacion = 'Descontar'
						  UPDATE #Renglones 
                 SET DescuentoImporte = ((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia,DescuentoLinea = ((((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/(((ISNULL(Precio,0)*ISNULL(Cantidad,0)))))*100
               WHERE Paquete = @IdPaqueteLP
						ELSE
            BEGIN
						  UPDATE #Renglones 
                 SET Precio = Precio +( (((ISNULL(Precio,0)*ISNULL(Cantidad,0))/@PrecioComponentes)*@Diferencia)/ISNULL(Cantidad,0)    ) 
               WHERE Paquete = @IdPaqueteLP
            END
					END
					ELSE
					/************** PRORATEO POR SERVICIO Y REFACCIONES AGREGANDO LA OPERACIÓN DE MANO DE OBRA **************/
					BEGIN
					  EXEC spZonaImp @ZonaImpuesto, @Impuesto1 OUTPUT  
						EXEC spZonaImp @ZonaImpuesto, @Impuesto2 OUTPUT  
						EXEC spZonaImp @ZonaImpuesto, @Impuesto3 OUTPUT  

						SELECT @Renglon   = @Renglon + 2048.0,  
									 @RenglonID = @RenglonID + 1,  
									 @Precio    = NULL  
						SELECT @ArtTipo = Tipo, @Unidad = Unidad, @DescripcionExtra = Descripcion1, @AlmacenMO = AlmacenROP FROM Art WHERE Articulo = 'MO PAQ'     
						--SELECT @AlmacenSer = AlmacenPrincipal FROM Sucursal WHERE Sucursal = @Sucursal
						SELECT @AlmacenSer = ISNULL(@AlmacenSer,@AlmacenMO)

						IF @Operacion = 'Descontar'
						BEGIN
						  SELECT @DescuentoImporte =(@Diferencia+1) 
							SELECT @DescuentoLinea = @DescuentoImporte * 100
							INSERT #Renglones(ID ,Renglon,  RenglonID,  RenglonTipo,Articulo,SubCuenta,Ut,Cantidad,Unidad, Precio,    DescuentoImporte, DescuentoLinea, Almacen,    FechaRequerida, Impuesto1, Impuesto2, Impuesto3, Paquete,            DescripcionExtra ,ArtTipo,Ttabulado)
							VALUES(@ID,@Renglon, @RenglonID, 'N',        'MO PAQ',NULL,     1, 1,       @Unidad,1,         @DescuentoImporte,@DescuentoLinea,@AlmacenSer,@FechaRequerida,@Impuesto1,@Impuesto2,@Impuesto3,@IdPaqueteLP,@DescripcionExtra,@ArtTipo,NULL)
						END
						ELSE
						  INSERT #Renglones(ID ,Renglon,  RenglonID,  RenglonTipo,Articulo,SubCuenta,Ut,Cantidad,Unidad, Precio,     DescuentoImporte,DescuentoLinea, Almacen,    FechaRequerida, Impuesto1, Impuesto2, Impuesto3, Paquete,            DescripcionExtra, ArtTipo,Ttabulado)
							VALUES(@ID,@Renglon, @RenglonID, 'N',        'MO PAQ',NULL,     1, 1,       @Unidad,@Diferencia,0,               0,              @AlmacenSer,@FechaRequerida,@Impuesto1,@Impuesto2,@Impuesto3,@IdPaqueteLP,@DescripcionExtra,@ArtTipo,NULL)
					END--else      
				END  ---prorrateo 'Ambos'
        END
			END--END @TipoPrecio = 'Precio configurado' 
	
			FETCH NEXT FROM ListaPaq 
			INTO @PrecioPaquete,@TipoPrecio, @Prorrateo,@IdPaqueteLP
		END    
	CLOSE ListaPaq;
	DEALLOCATE ListaPaq;
    
	If @Produccion = 1
		BEGIN
			INSERT VentaD(ID,Renglon,RenglonID,RenglonTipo,Articulo,SubCuenta,Ut,Cantidad, CCTiempoTab,Unidad,Precio,DescuentoImporte,DescuentoLinea,Almacen,FechaRequerida,Impuesto1,Impuesto2,Impuesto3,Paquete,DescripcionExtra)
			SELECT  ID,Renglon,RenglonID,RenglonTipo,Articulo,SubCuenta,Ut,Cantidad, Ttabulado,   Unidad,Precio,DescuentoImporte,DescuentoLinea,Almacen,FechaRequerida,Impuesto1,Impuesto2,Impuesto3,Paquete,DescripcionExtra
			  FROM #Renglones
		END
	ELSE
		BEGIN
			SELECT  ID,Renglon,RenglonID,RenglonTipo,Articulo,SubCuenta,Ut,Cantidad, Ttabulado,   Unidad,Precio,DescuentoImporte,DescuentoLinea,Almacen,FechaRequerida,Impuesto1,Impuesto2,Impuesto3,Paquete,DescripcionExtra
			FROM #Renglones
		END
	
  END--END @OkRef IS NULL  
  SELECT @OkRef=ISNULL(@OkRef, 'Ok')  
  RETURN    
END  

GO