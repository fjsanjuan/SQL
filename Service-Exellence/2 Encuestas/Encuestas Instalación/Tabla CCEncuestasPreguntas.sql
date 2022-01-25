IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCEncuestasPreguntas') AND Type = 'U')
  DROP TABLE dbo.CCEncuestasPreguntas
GO
CREATE TABLE [dbo].[CCEncuestasPreguntas] (
[IdCatEncuesta] int NOT NULL ,
[Idventa] int NOT NULL ,
[IdPregunta] int NOT NULL ,
[Pregunta] varchar(500) COLLATE Modern_Spanish_CI_AS NULL ,
[TipoResp] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[selRespuesta] varchar(40) COLLATE Modern_Spanish_CI_AS NULL ,
[Respuesta] varchar(500) COLLATE Modern_Spanish_CI_AS NULL 
)
ON [PRIMARY]
GO