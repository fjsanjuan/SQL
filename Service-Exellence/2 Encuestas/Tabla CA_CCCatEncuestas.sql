IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_CCCatEncuestas') AND Type = 'U')
  DROP TABLE dbo.CA_CCCatEncuestas
GO
CREATE TABLE [dbo].[CA_CCCatEncuestas] (
  [IdCatEncuesta] int  IDENTITY(1,1) NOT NULL,
  [Depto] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Tipo] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Titulo] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Estatus] varchar(20) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [IdPregunta] int  NULL
)
ON [PRIMARY]
GO

--DBCC CHECKIDENT(N'[dbo].[CCCatEncuestas]', RESEED, 4)
--GO