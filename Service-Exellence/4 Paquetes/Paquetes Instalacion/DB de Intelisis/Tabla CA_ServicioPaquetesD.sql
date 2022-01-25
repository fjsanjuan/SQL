IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_ServicioPaquetesD') AND Type = 'U')
  DROP TABLE dbo.CA_ServicioPaquetesD
GO
CREATE TABLE [dbo].[CA_ServicioPaquetesD] (
[IdPaquete] int NOT NULL ,
[Renglon] float(53) NOT NULL ,
[Articulo] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[SubtipoCuenta] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[Cantidad] float(53) NULL ,
[TTabulado] float(53) NULL ,
[AlmacenEsp] varchar(10) COLLATE Modern_Spanish_CI_AS NULL ,
[ListaPreciosEsp] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[PrecioUnitario] money NULL ,
[PrecioTotal] money NULL ,
[Actualizacion] smalldatetime NULL ,
[TipoArticulo] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[Descripcion] varchar(100) COLLATE Modern_Spanish_CI_AS NULL ,
CONSTRAINT [PK__Servicio__7E1E34280C85DE4D] PRIMARY KEY ([IdPaquete], [Renglon]),
CONSTRAINT [fk_ServPaq_ServPaqD] FOREIGN KEY ([IdPaquete]) REFERENCES [dbo].[CA_ServicioPaquetes] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ON [PRIMARY]
GO