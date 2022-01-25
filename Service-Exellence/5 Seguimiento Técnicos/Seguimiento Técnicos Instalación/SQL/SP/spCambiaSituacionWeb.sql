CREATE PROCEDURE dbo.spCambiaSituacionWeb(
		@IdVenta		int         ,
    @Edo        varchar(30) ,
    @Nuevo      varchar(30) ,
    @Situacion  varchar(30) ,
    @Detiene    varchar(2) 
	)

AS BEGIN
	DECLARE
    @NuevaSituacion as varchar(30)

SELECT @NuevaSituacion = NULL
    IF @Edo = 'No Comenzada' AND @Nuevo = 'En Curso' AND (SELECT Situacion FROM Venta WHERE ID = @IdVenta) = 'No Asignada'
    BEGIN  
      EXEC spCambiarSituacion 'VTAS',@IdVenta,'Asignada',NULL,'SOPDESA',NULL,'Situaci�n cambiada desde Seguimiento de Operaciones WEB'
      SELECT @NuevaSituacion = 'Asignada'
    END  
    IF @Detiene = 'Si' AND (@Nuevo IN ('Detenida por Autorizaci�n','Detenida por TOT','Detenida por Refacciones','Detenida por Soporte Planta','Detenida por Otros'))-- OR @Situacion = 'Reactivar')
    BEGIN
      EXEC spCambiarSituacion 'VTAS',@IdVenta,@Situacion,NULL,'SOPDESA',NULL,'Situaci�n asignada por la detenci�n de una operaci�n'
      SELECT @NuevaSituacion = @Situacion
    END
    ELSE IF @Detiene = 'Si' AND @Situacion IN ('Reactivar','En Curso','En Proceso')
    BEGIN
      IF EXISTS(SELECT * FROM CA_SeguimientoOperaciones WHERE Estado = 'En Curso' AND IdVenta = @IdVenta)  
        SELECT @NuevaSituacion = 'En Proceso'  
      ELSE  
        SELECT @NuevaSituacion = 'Asignada'
      EXEC spCambiarSituacion 'VTAS',@IdVenta,@NuevaSituacion,NULL,'SOPDESA',NULL,'Situaci�n asignada por la reactivaci�n de una operaci�n'  
    END
END
      


