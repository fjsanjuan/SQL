IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.PaquetesHomologacionPrecio') AND Type = 'U')
  DROP TABLE dbo.PaquetesHomologacionPrecio
GO
CREATE TABLE [dbo].[PaquetesHomologacionPrecio] (
[Servicio] int NOT NULL ,
[Vehiculo] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[CodigoPaquete] varchar(50) COLLATE Modern_Spanish_CI_AS NULL ,
[Homologacion] money NULL ,
[Varios] money NULL ,
[Actualizacion] smalldatetime NULL DEFAULT (getdate()) ,
CONSTRAINT [PK__Paquetes__589274E896B6E281] PRIMARY KEY ([Servicio], [Vehiculo])
)
ON [PRIMARY]
GO