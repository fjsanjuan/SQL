CREATE FUNCTION existeOrdenCita ( @cliente VARCHAR ( 30 ), @vin VARCHAR ( 30 ), @movId VARCHAR ( 30 ) ) 
RETURNS VARCHAR ( 20 ) 
AS BEGIN
	DECLARE
		@RES VARCHAR ( 20 ) 

			--	SELECT TOP 1 @RES =  id  FROM orden_servicio 
			--	WHERE cliente = @cliente AND vin =
		 --@vin AND num_cita =@movId 
		 --and id_orden_intelisis IS NULL
		 --AND CONVERT(DATE,fecha_creacion)   = CONVERT (DATE, GETDATE())
			--	ORDER BY ID DESC

		IF @movId = '0'
		BEGIN
			SELECT TOP 1 @RES =  id  FROM orden_servicio 
			WHERE cliente = @cliente 
			AND vin =@vin 
			AND num_cita =@movId 
			AND id_orden_intelisis IS NULL
			AND CONVERT(DATE,fecha_creacion)   = CONVERT (DATE, GETDATE())
		END 
		ELSE
		BEGIN
			SELECT TOP 1 @RES =  id  FROM orden_servicio 
			WHERE cliente = @cliente 
			AND vin =@vin 
			AND num_cita =@movId 
		END

	RETURN @RES 
END