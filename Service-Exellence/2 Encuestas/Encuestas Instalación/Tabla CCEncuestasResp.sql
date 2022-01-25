IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCEncuestasResp') AND Type = 'U')
  DROP TABLE dbo.CCEncuestasResp
GO
CREATE TABLE [dbo].[CCEncuestasResp] (
[IdCatEncuesta] int NOT NULL ,
[IdPregunta] int NOT NULL ,
[IdResp] int NOT NULL ,
[selRespuesta] varchar(40) COLLATE Modern_Spanish_CI_AS NULL 
)
ON [PRIMARY]
GO