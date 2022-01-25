USE [SG_Astro]
GO
/****** Object:  Table [dbo].[CatColorTC]    Script Date: 09/04/2021 17:51:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[CatColorTC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[concepto] [varchar](255) NULL,
	[color] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CatColorTC] ON 

INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (1, N'citaEstimado', N'#D500FA')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (2, N'ordenServicioEstimado', N'#DBC311')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (3, N'permiso', N'#9a939e')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (4, N'excedente', N'#D61111')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (5, N'ordenServicioSinHReal', N'#646491')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (6, N'operacionServicioSinHReal', N'#25F505')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (7, N'estimadoProceso', N'#1ADB00')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (8, N'estimadoDetenida', N'#C92724')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (9, N'estimadoFinalizada', N'#1032A1')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (10, N'alerta15min', N'#E0DC04')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (11, N'tiemposImproductivos', N'#582B09')
INSERT [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (12, N'trabajosFuera', N'#157D71')
SET IDENTITY_INSERT [dbo].[CatColorTC] OFF
