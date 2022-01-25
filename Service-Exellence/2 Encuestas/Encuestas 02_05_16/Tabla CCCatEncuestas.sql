IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCCatEncuestas') AND Type = 'U')
  DROP TABLE dbo.CCCatEncuestas
GO
CREATE TABLE [dbo].[CCCatEncuestas] (
[IdCatEncuesta] int NOT NULL IDENTITY(1,1) ,
[Depto] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[Tipo] varchar(50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[Titulo] varchar(100) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[Estatus] varchar(20) COLLATE Modern_Spanish_CI_AS NOT NULL 
)
ON [PRIMARY]
GO

--DBCC CHECKIDENT(N'[dbo].[CCCatEncuestas]', RESEED, 4)
--GO