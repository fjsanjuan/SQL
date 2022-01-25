CREATE PROC xpCA_GenerarAnexoMovRa
@Modulo  VARCHAR(5),
@ID      INT, -- id orden servico recepcion
@Tipo    VARCHAR(10), --XML o PDF
@NomArch VARCHAR(100),
@Ruta    VARCHAR(255),
@OkRef   VARCHAR(255) OUTPUT
AS
BEGIN

DECLARE 
		@idIntelisis  INT,
        @Mov          VARCHAR(20),
        @Serie        VARCHAR(20),
        @Archivo      VARCHAR(255),
        @Empresa      VARCHAR(5),
        @Nombre       VARCHAR(100),
        @Estatus      VARCHAR(15),
        @Folio        BIGINT,
        @FechaEmision DATETIME,
        @Sucursal     INT,
        @Existe       INT


SELECT @idIntelisis = id_orden_intelisis FROM Recepcion.dbo.orden_servicio WHERE id = @ID

IF @Modulo = 'VTAS'
  SELECT @Empresa = Empresa, @Sucursal = Sucursal, @Mov = RTRIM(Mov), @FechaEmision = FechaEmision, @Sucursal = Sucursal, @Estatus = Estatus FROM Venta WHERE ID = @idIntelisis
IF @Modulo = 'CXC'
  SELECT @Empresa = Empresa, @Sucursal = Sucursal, @Mov = RTRIM(Mov), @FechaEmision = FechaEmision, @Sucursal = Sucursal, @Estatus = Estatus FROM CXC WHERE ID = @idIntelisis



  IF @Tipo = 'XML'
  BEGIN
      INSERT AnexoMov (Sucursal,  Rama,    ID,  Nombre,                                               Direccion,    Tipo,      Icono, CFD,FechaEmision) 
               VALUES (@Sucursal, @Modulo, @idIntelisis, @NomArch+ '.xml', @Ruta,        'Archivo',  17,    1, @FechaEmision)
  END
  ELSE IF @Tipo = 'PDF'
  BEGIN
      INSERT AnexoMov (Sucursal,  Rama,    ID,  Nombre,                                              Direccion,   Tipo,      Icono, CFD, FechaEmision) 
               VALUES (@Sucursal, @Modulo, @idIntelisis, @NomArch, @Ruta,       'Archivo',  745,   1,  @FechaEmision )
  END

--INSERT AnexoMov (Sucursal,  Rama,    ID,  Nombre,                                     Direccion,   Tipo,      Icono, CFD) 
--               VALUES (1, 'VTAS', 383060, 'FormatoDeInventario34755.pdf', 'C:\wamp64\www\Git\se\recepcion\archivos_recepcion\FormatoDeInventario34755.pdf',       'Archivo',  745,   1)

SELECT @OkRef = 'KO'



IF @@ROWCOUNT <> 0
	SELECT @OkRef = 'OK'

END
