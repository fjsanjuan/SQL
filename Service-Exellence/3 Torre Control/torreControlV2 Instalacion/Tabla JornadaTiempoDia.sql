IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.JornadaTiempoDia') AND Type = 'U')
  DROP TABLE dbo.JornadaTiempoDia
GO
CREATE TABLE [dbo].[JornadaTiempoDia] (
[Jornada] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[Entrada] datetime NULL ,
[SalidaComida] datetime NULL ,
[EntradaComida] datetime NULL ,
[Salida] datetime NULL ,
[Fecha] datetime NULL ,
[Dia] int NULL ,
[TipoHorario] varchar(20) COLLATE Modern_Spanish_CI_AS NULL ,
[SalidaL1] datetime NULL , 
[EntradaL1] datetime NULL , 
[SalidaL2] datetime NULL , 
[EntradaL2] datetime NULL 
)
ON [PRIMARY]
GO