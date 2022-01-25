IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCCatEncuestasPreguntas') AND Type = 'U')
  DROP TABLE dbo.CCCatEncuestasPreguntas
GO
CREATE TABLE [dbo].[CCCatEncuestasPreguntas] (
[IdCatEncuesta] int NOT NULL ,
[IdPregunta] int NOT NULL ,
[TipoResp] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[TipoVal] varchar(30) COLLATE Modern_Spanish_CI_AS NULL ,
[Pregunta] varchar(500) COLLATE Modern_Spanish_CI_AS NULL ,
[Dependencia] bit NOT NULL DEFAULT ((0)) ,
[IdDependencia] int NULL ,
[DependeRespuesta] varchar(40) COLLATE Modern_Spanish_CI_AS NULL ,
[IdRespuesta] int NULL ,
[Renglon] float(53) NULL 
)
ON [PRIMARY]
GO