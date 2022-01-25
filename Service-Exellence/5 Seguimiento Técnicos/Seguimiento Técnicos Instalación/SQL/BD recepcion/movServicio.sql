USE [Recepcion]
GO
/****** Object:  Table [dbo].[mov_servicio]    Script Date: 05/12/2019 07:00:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mov_servicio](
	[id_mov] [int] IDENTITY(1,1) NOT NULL,
	[movimiento] [varchar](50) NULL,
	[eliminado] [int] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[mov_servicio] ON 

INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (1, N'Servicio', 0, CAST(N'2019-08-08 10:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (2, N'servicio2', 0, CAST(N'2019-08-08 10:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (3, N'Servicio HYP', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (4, N'Servicio Garantia', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (5, N'Servicio Reclamacion', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (6, N'Servicio', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (7, N'Serv Linc HYP', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (8, N'Serv Linc Garantia', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (9, N'Serv Linc Reclam', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
INSERT [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (10, N'Serv Linc', 0, CAST(N'2019-08-12 13:16:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[mov_servicio] OFF
