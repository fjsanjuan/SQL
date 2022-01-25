IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCEncuestas') AND Type = 'U')
  DROP TABLE dbo.CCEncuestas
GO
CREATE TABLE [dbo].[CCEncuestas] (
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