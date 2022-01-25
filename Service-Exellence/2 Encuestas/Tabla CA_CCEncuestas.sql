IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_CCEncuestas') AND Type = 'U')
  DROP TABLE dbo.CA_CCEncuestas
GO
CREATE TABLE [dbo].[CA_CCEncuestas] (
[IdCatEncuesta] int NOT NULL ,
[Idventa] int NOT NULL ,
[Fecha] datetime NOT NULL ,
[Depto] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[Tipo] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[Titulo] varchar(100) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[IdFactServicio] int NULL 
)
ON [PRIMARY]
GO