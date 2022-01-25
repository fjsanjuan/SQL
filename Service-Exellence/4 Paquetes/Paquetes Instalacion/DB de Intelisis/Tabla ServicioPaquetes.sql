IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.ServicioPaquetes') AND Type = 'U')
BEGIN
	DROP TABLE dbo.ServicioPaquetesR
	DROP TABLE dbo.ServicioPaquetesD
  DROP TABLE dbo.ServicioPaquetes
END
GO
CREATE TABLE [dbo].[ServicioPaquetes] (
[Id] int NOT NULL IDENTITY(1,1) ,
[DescripcionC] varchar(150) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[DescripcionL] varchar(250) COLLATE Modern_Spanish_CI_AS NULL ,
[TipoPaquete] varchar(30) COLLATE Modern_Spanish_CI_AS NULL ,
[Kilometraje] int NULL ,
[Precio] money NULL ,
[TipoPrecio] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[Prorrateo] varchar(25) COLLATE Modern_Spanish_CI_AS NULL ,
[TTabulador] float(53) NULL ,
[TFacturado] float(53) NULL ,
[ClavePlanta] varchar(100) COLLATE Modern_Spanish_CI_AS NULL ,
[Estatus] int NULL ,
[Actualizacion] smalldatetime NULL ,
CONSTRAINT [PK__Servicio__3214EC0708B54D69] PRIMARY KEY ([Id])
)
ON [PRIMARY]
GO