ALTER FUNCTION fnCA_fordValidaPlaneacionRealWeb ( @ID INT, @RenglonID INT ) RETURNS VARCHAR ( 200 ) AS BEGIN
	DECLARE
		@Ok VARCHAR ( 200 ),
		
		@FechaInicio datetime,
		@FechaFin datetime,
		@Articulo VARCHAR ( 20 ),
		@Grupo VARCHAR ( 50 ),
		@Presentacion VARCHAR ( 50 ),
		@Minutos INT 
	
	SELECT
		@Ok = 'ok'
		
	SELECT
		@FechaFin = NULLIF ( RTRIM( LTRIM( getdate() ) ), '' ) 

	
	-- en este select se evalua la planeacion inicial
	--SELECT
	--	@Articulo = D.Articulo, @CCFechaIni = NULLIF ( RTRIM( LTRIM( D.CCFechaIni ) ), '' ),  @CCFechaFin = NULLIF ( RTRIM( LTRIM( D.CCFechaFin ) ), '' ),  @Grupo = ISNULL( A.Grupo, '' ),  @Presentacion = ISNULL( A.Presentacion, '' ) 
	--FROM
	--	VentaD D
	--	JOIN Art A ON A.Articulo = D.Articulo 
	--WHERE
	--	D.ID = @Id 
	--	AND D.RenglonID = @RenglonID 
	--	AND A.Tipo = 'Servicio' 
	--	AND A.Categoria <> 'TOT' 
		
	
	--  en este select se evalua la planeacion de dashboard de I.Real y F.Real 
	SELECT
	TOP 1
	@Articulo = D.Articulo,
	@FechaInicio = NULLIF ( RTRIM( LTRIM( S.FechaInicio ) ), '' ),
	@Grupo = ISNULL( A.Grupo, '' ),
	@Presentacion =  ISNULL( A.Presentacion, '' ) 
	FROM
		SeguimientoOperaciones S
		JOIN VentaD D ON D.id = S.idVenta AND D.RenglonID = S.RenglonId
		JOIN Art A ON A.Articulo = D.Articulo	
	WHERE
		D.ID = @Id 
		AND D.RenglonID = @RenglonID
		AND S.Estado = 'En curso'
	
	ORDER BY S.FechaInicio	
		
	SELECT @Minutos = DATEDIFF( mi, @FechaInicio, @FechaFin )
	
	IF
		@Grupo = 'Mantenimiento kilometrados' 
		OR @Grupo = 'Mantenimiento' BEGIN
		IF
			@Minutos < 20 SELECT
			--@OK = 'La operacion: ' + @Articulo + ', debe de tener al menos 20 min. de diferencia, del I.Real y la hora actual para poder finalizar ' 
			@OK = ' Deben pasar al menos 20 minutos para poder finalizar la operación: '  + @Articulo
	END ELSE
	IF
		@Grupo = 'Diagnóstico, Inspección y Lavado' 
		AND @Presentacion = 'Lavado' BEGIN
		IF
			@Minutos < 10 SELECT
			--@OK = 'La operacion: ' + @Articulo + ', debe de tener al menos 10 min. de diferencia, del I.Real y la hora actual para poder finalizar '
			@OK = ' Deben pasar al menos 10 minutos para poder finalizar la operación: '  + @Articulo 
		END ELSE BEGIN
		IF
			@Minutos < 6 SELECT
			--@OK = 'La operacion: ' + @Articulo + ', debe de tener al menos 6 min. de diferencia, del I.Real  y la hora actual para poder finalizar '
			@OK = ' Deben pasar al menos 6 minutos para poder finalizar la operación: '  + @Articulo 
		END RETURN @Ok 
END 

--SELECT dbo.fnCA_fordValidaPlaneacionRealWeb ( 292037, 9) ok;




