IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_ServicioPaquetesR') AND Type = 'U')
  DROP TABLE dbo.CA_ServicioPaquetesR
GO
CREATE TABLE [dbo].[CA_ServicioPaquetesR] (
[IdPaquete] int NULL ,
[Regla] int NULL ,
[Condicion] varchar(50) COLLATE Modern_Spanish_CI_AS NULL ,
[Definicion] varchar(50) COLLATE Modern_Spanish_CI_AS NULL ,
[Actualizacion] smalldatetime NULL ,
CONSTRAINT [fk_ServPaqR] FOREIGN KEY ([IdPaquete]) REFERENCES [dbo].[CA_ServicioPaquetes] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
)
ON [PRIMARY]
GO