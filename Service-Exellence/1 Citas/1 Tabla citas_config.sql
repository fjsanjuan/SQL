IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.citas_config') AND Type = 'U')
  DROP TABLE dbo.citas_config
GO
CREATE TABLE [dbo].[citas_config] (
[id_config] int NOT NULL IDENTITY(1,1) ,
[hora_anterior] int NULL ,
[hora_posterior] int NULL ,
[concluidas] int NULL ,
[actualizacion] int NULL ,
[tolerancia] int NULL ,
[vista_suc] int NULL ,
CONSTRAINT [PK__citas_co__8F0A1FB22A06C1FC] PRIMARY KEY ([id_config])
)
ON [PRIMARY]
GO

DBCC CHECKIDENT(N'[dbo].[citas_config]', RESEED, 0)
GO

insert into citas_config (hora_anterior, hora_posterior, concluidas, actualizacion, tolerancia, vista_suc) values(8, 12, 1, 5, 15, '-1')
GO
insert into citas_config (hora_anterior, hora_posterior, concluidas, actualizacion, tolerancia, vista_suc) values(8, 12, 1, 5, 15, '1')
GO
insert into citas_config (hora_anterior, hora_posterior, concluidas, actualizacion, tolerancia, vista_suc) values(8, 12, 1, 5, 15, '3')
GO
--insert into citas_config (hora_anterior, hora_posterior, concluidas, actualizacion, tolerancia, vista_suc) values(8, 12, 1, 5, 15, '5')
--GO
--insert into citas_config (hora_anterior, hora_posterior, concluidas, actualizacion, tolerancia, vista_suc) values(8, 12, 1, 5, 15, '7')
--GO