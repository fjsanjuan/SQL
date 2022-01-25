IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.UsuariosWeb') AND Type = 'U')
  DROP TABLE dbo.UsuariosWeb
GO
CREATE TABLE [dbo].[UsuariosWeb] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Usuario] varchar(255) COLLATE Modern_Spanish_CI_AS NULL ,
[Contrasenia] varchar(255) COLLATE Modern_Spanish_CI_AS NULL ,
[FechaCreacion] datetime NULL ,
[FechaActualizacion] datetime NULL ,
[Eliminado] bit NULL ,
CONSTRAINT [PK__Usuarios__3214EC073F36E90C] PRIMARY KEY ([Id])
)
ON [PRIMARY]
GO

DBCC CHECKIDENT(N'[dbo].[UsuariosWeb]', RESEED, 1)
GO

insert into UsuariosWeb (Usuario, Contrasenia, FechaCreacion, FechaActualizacion, Eliminado) values('encuesta', '202cb962ac59075b964b07152d234b70', GETDATE(), GETDATE(), 0);
GO