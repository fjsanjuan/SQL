
CREATE TABLE [dbo].[OperacionesEreactValidas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Articulo] [varchar](20) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL
) ON [PRIMARY]
SET ANSI_PADDING ON
ALTER TABLE [dbo].[OperacionesEreactValidas] ADD [claveEreact] [varchar](20) NOT NULL
SET ANSI_PADDING OFF
ALTER TABLE [dbo].[OperacionesEreactValidas] ADD [GrupoOperacion] [varchar](50) NULL
ALTER TABLE [dbo].[OperacionesEreactValidas] ADD [GrupoEreact] [varchar](50) NULL
 CONSTRAINT [PK_OperacionesEreactValidas] PRIMARY KEY CLUSTERED 
(
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[OperacionesEreactValidas] ON 

GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (170, N'10', N'Reparación del radiador', N'10', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (184, N'100', N'Cambio tanque combustible', N'100', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (188, N'101', N'Ensamble sensor de presión llanta', N'101', N'Reparación Mayor', N'Transmisión, Clutch y Eje')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (189, N'102', N'Cambio Palanca selectora', N'102', N'Reparación Mayor', N'Transmisión, Clutch y Eje')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (100, N'11', N'Cambio de llantas', N'11', N'Llantas', N'Llantas')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (206, N'110', N'Cambio corredera puerta', N'110', N'Misceláneo', N'Accesorios')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (171, N'12', N'Cambio depósito/refrigerante', N'12', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (207, N'120', N'Cambio Bocina', N'120', N'Misceláneo', N'Radio/Audio')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (165, N'15', N'Auto prueba del sistema de control eléctrico.', N'15', N'Reparación Menor', N'Escape')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (152, N'17', N'Cambio de acumulador', N'17', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (153, N'18', N'Checar régimen de carga.', N'18', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (154, N'19', N'revisión de luces en general', N'19', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (190, N'2', N'Cambio de soportes de motor (delanteros  tiempo por cada uno)', N'2', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (102, N'20', N'Balanceo', N'20', N'Llantas', N'Ruedas (Alineación y Balanceo)')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (103, N'21', N'Alineación eje delantero', N'21', N'Llantas', N'Ruedas (Alineación y Balanceo)')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (104, N'22', N'Alineación eje delantero y trasero.', N'22', N'Llantas', N'Ruedas (Alineación y Balanceo)')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (226, N'23', N'Lavado de motor externo (maquina de vapor)', N'23', N'Reparación Mayor', N'Lavado')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (227, N'24', N'Lavado de chasis', N'24', N'Diagnóstico, Inspección y Lavado', N'Lavado')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (101, N'25', N'Rotación de ruedas', N'25', N'Llantas', N'Llantas')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (105, N'26', N'Ensamble rodamiento rueda y/o maza', N'26', N'Llantas', N'Ruedas (Alineación y Balanceo)')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (155, N'27', N'Cambio del motor de ventana de puerta', N'27', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (156, N'28', N'Cambio del interruptor de ventana de puerta', N'28', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (87, N'33', N'Limpieza y ajuste de frenos generales.', N'33', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (88, N'34', N'Cambio de zapatas de frenos estacionamiento.', N'34', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (89, N'35', N'Cambio de balatas delanteras.', N'35', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (90, N'36', N'Cambio de balatas/zapatas, traseras', N'36', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (91, N'37', N'Rectificado de dos tambores.', N'37', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (92, N'38', N'Rectificado de dos discos  rotores', N'38', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (93, N'39', N'Ensamble caliper', N'39', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (191, N'4', N'Cambio de soportes de motor y transeje. (Todos.)', N'4', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (94, N'40', N'Cambio de balatas delanteras y zapatas traseras (frenos generales)', N'40', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (95, N'41', N'Reprogramación módulo ABS', N'41', N'Llantas', N'Frenos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (148, N'42', N'Revisión y carga aire acondicionado', N'42', N'Reparación Menor', N'Aire Acondicionado y Calefacción')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (149, N'43', N'Carga completa aire acondicionado.', N'43', N'Reparación Menor', N'Aire Acondicionado y Calefacción')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (167, N'44', N'Cambio de banda del motor', N'44', N'Reparación Menor', N'Cinturones y Mangueras')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (106, N'45', N'Cambio de filtro de aire', N'45', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (157, N'46', N'Cambio de cables de bujías.', N'46', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (193, N'47', N'Cambio de bujías.', N'47', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (172, N'48', N'Revisión del sistema de enfriamiento', N'48', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (178, N'49', N'Cambio de filtro de gasolina', N'49', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (194, N'50', N'Lavado de inyectores', N'50', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (195, N'51', N'Cambio de aceite y filtro', N'51', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (192, N'6', N'Cambio sello cigüeñal', N'6', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (179, N'60', N'Prueba presión de bomba de combustible', N'60', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (96, N'61', N'Cambio de amortiguadores delanteros.', N'61', N'Llantas', N'Amortiguador')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (97, N'62', N'Cambio de amortiguadores traseros.', N'62', N'Llantas', N'Amortiguador')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (98, N'63', N'Cambio de amortiguadores delanteros y traseros', N'63', N'Llantas', N'Amortiguador')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (166, N'64', N'Cambio de filtro ventilación de carter. (pcv)', N'64', N'Reparación Menor', N'Escape')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (150, N'65', N'Cambio de filtro de compartimento (filtro de polen)', N'65', N'Reparación Menor', N'Aire Acondicionado y Calefacción')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (173, N'66', N'Cambio de anticongelante', N'66', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (201, N'67', N'Cambio de barra estabilizadora', N'67', N'Reparación Mayor', N'Sistema de Dirección')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (202, N'68', N'Cambio del eslabón de barra estabilizadora', N'68', N'Reparación Mayor', N'Sistema de Dirección')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (208, N'69', N'Diagnostico menor', N'69', N'Diagnóstico, Inspección y Lavado', N'Diagnóstico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (209, N'70', N'Diagnostico mayor', N'70', N'Diagnóstico, Inspección y Lavado', N'Diagnóstico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (174, N'71', N'Cambio de tapón de radiador', N'71', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (205, N'72', N'Cambio de plumas limpia parabrisas del.', N'72', N'Misceláneo', N'Accesorios')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (107, N'73', N'Cambio de filtros de aire y combustible', N'73', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (175, N'74', N'Cambio del recuperador de anticongelante', N'74', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (176, N'75', N'Cambio de termostato y toma de agua', N'75', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (177, N'76', N'Cambio de termostato', N'76', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (158, N'77', N'Cambio de terminales de dirección externas', N'77', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (159, N'78', N'Cambio de terminales de dirección internas', N'78', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (99, N'79', N'Cambio de bielitas', N'79', N'Llantas', N'Amortiguador')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (168, N'8', N'Cambio motor ventilador enfriamiento radiador', N'8', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (180, N'80', N'Cambio de bomba de combustible', N'80', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (185, N'81', N'Cambio Kit de embrague', N'81', N'Reparación Mayor', N'Transmisión, Clutch y Eje')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (160, N'82', N'Cambio de alternador', N'82', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (151, N'83', N'Cambio de compresor de aire acondicionado', N'83', N'Reparación Menor', N'Aire Acondicionado y Calefacción')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (196, N'84', N'Cambio de inyectores para motor diesel', N'84', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (203, N'85', N'Cambio del fluido (aceite) de dirección', N'85', N'Reparación Mayor', N'Sistema de Dirección')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (204, N'86', N'Cambio de caja de dirección', N'86', N'Reparación Mayor', N'Sistema de Dirección')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (186, N'87', N'Cambio de aceite en la caja de transmisión', N'87', N'Reparación Mayor', N'Transmisión, Clutch y Eje')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (161, N'88', N'Reemplazo y programación de llave', N'88', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (197, N'89', N'Cambio de poleas: tensora y loca', N'89', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (169, N'9', N'Cambio de radiador', N'9', N'Reparación Menor', N'Sistema de Enfriamiento')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (162, N'90', N'Motor de arranque', N'90', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (163, N'91', N'Sistema de ignición', N'91', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (198, N'92', N'Bomba de aceite (diesel)', N'92', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (199, N'93', N'Lavado de motor interno', N'93', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (200, N'94', N'Cambio de motor', N'94', N'Reparación Mayor', N'Motor')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (187, N'95', N'Cambio de Transmisión', N'95', N'Reparación Mayor', N'Transmisión, Clutch y Eje')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (164, N'96', N'Cambio de Marcha', N'96', N'Reparación Menor', N'Eléctrico')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (181, N'97', N'Cambio canister', N'97', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (182, N'98', N'Ensamble tubería y llenado tanque', N'98', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (183, N'99', N'Cambio Indicador combustible', N'99', N'Reparación Mayor', N'Sistema de Combustible')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (210, N'99P', N'INSPECCION HOJA MULTIPUNTOS', N'99P', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (211, N'BALATAA', N'INSPECCION BALATA - AMARILLO', N'BALATAA', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (212, N'BALATAR', N'INSPECCION BALATA - ROJO', N'BALATAR', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (213, N'BALATAV', N'INSPECCION BALATA - VERDE', N'BALATAV', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (214, N'BATEA', N'INSPECCION BATERIA - AMARILLO', N'BATEA', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (215, N'BATER', N'INSPECCION BATERIA - ROJO', N'BATER', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (216, N'BATEV', N'INSPECCION BATERIA - VERDE', N'BATEV', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (217, N'DISCOA', N'INSPECCION  DISCOS - AMARILLO', N'DISCOA', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (218, N'DISCOR', N'INSPECCION DISCOS - ROJO', N'DISCOR', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (219, N'DISCOV', N'INSPECCION  DISCOS - VERDE', N'DISCOV', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (228, N'LAVADO', N'Lavado del Vehículo', N'LAVADO', N'Diagnóstico, Inspección y Lavado', N'Lavado')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (220, N'LLANTAA', N'INSPECCION LLANTA - AMARILLO', N'LLANTAA', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (221, N'LLANTAR', N'INSPECCION LLANTA - ROJO', N'LLANTAR', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (222, N'LLANTAV', N'INSPECCION LLANTA - VERDE', N'LLANTAV', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (108, N'SERV10', N'Servicio 10000 km', N'SERV10', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (109, N'SERV100', N'Servicio 100000 km', N'SERV100', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (110, N'SERV105', N'Servicio 105000 km', N'SERV105', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (111, N'SERV110', N'Servicio 110000 km', N'SERV110', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (112, N'SERV115', N'Servicio 115000 km', N'SERV115', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (113, N'SERV120', N'Servicio 120000 km', N'SERV120', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (114, N'SERV125', N'Servicio 125000 km', N'SERV125', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (115, N'SERV130', N'Servicio 130000 km', N'SERV130', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (116, N'SERV135', N'Servicio 135000 km', N'SERV135', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (117, N'SERV140', N'Servicio 140000 km', N'SERV140', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (118, N'SERV145', N'Servicio 145000 km', N'SERV145', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (119, N'SERV15', N'Servicio 15000 km', N'SERV15', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (120, N'SERV150', N'Servicio 150000 km', N'SERV150', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (121, N'SERV155', N'Servicio 155000 km', N'SERV155', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (122, N'SERV160', N'Servicio 160000 km', N'SERV160', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (123, N'SERV165', N'Servicio 165000 km', N'SERV165', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (124, N'SERV170', N'Servicio 170000 km', N'SERV170', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (125, N'SERV175', N'Servicio 175000 km', N'SERV175', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (126, N'SERV180', N'Servicio 180000 km', N'SERV180', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (127, N'SERV185', N'Servicio 185000 km', N'SERV185', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (128, N'SERV190', N'Servicio 190000 km', N'SERV190', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (129, N'SERV195', N'Servicio 195000 km', N'SERV195', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (130, N'SERV20', N'Servicio 20000 km', N'SERV20', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (131, N'SERV200', N'Servicio 200000 km', N'SERV200', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (132, N'SERV25', N'Servicio 25000 km', N'SERV25', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (133, N'SERV30', N'Servicio 30000 km', N'SERV30', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (134, N'SERV35', N'Servicio 35000 km', N'SERV35', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (135, N'SERV40', N'Servicio 40000 km', N'SERV40', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (136, N'SERV45', N'Servicio 45000 km', N'SERV45', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (137, N'SERV5', N'Servicio 5000 Km.', N'SERV5', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (138, N'SERV50', N'Servicio 50000 km', N'SERV50', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (139, N'SERV55', N'Servicio 55000 km', N'SERV55', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (140, N'SERV60', N'Servicio 60000 km', N'SERV60', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (141, N'SERV65', N'Servicio 65000 km', N'SERV65', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (142, N'SERV70', N'Servicio 70000 km', N'SERV70', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (143, N'SERV75', N'Servicio 75000 km', N'SERV75', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (144, N'SERV80', N'Servicio 80000 km', N'SERV80', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (145, N'SERV85', N'Servicio 85000 km', N'SERV85', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (146, N'SERV90', N'Servicio 90000 km', N'SERV90', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (147, N'SERV95', N'Servicio 95000 km', N'SERV95', N'Mantenimiento kilometrados', N'Mantenimiento kilometrados')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (223, N'TAMBORA', N'INSPECCION TAMBORES - AMARILLO', N'TAMBORA', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (224, N'TAMBORR', N'INSPECCION TAMBORES - ROJO', N'TAMBORR', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
INSERT [dbo].[OperacionesEreactValidas] ([id], [Articulo], [Descripcion], [claveEreact], [GrupoOperacion], [GrupoEreact]) VALUES (225, N'TAMBORV', N'INSPECCION  TAMBORES - VERDE', N'TAMBORV', N'Diagnóstico, Inspección y Lavado', N'Inspección Multipuntos')
GO
SET IDENTITY_INSERT [dbo].[OperacionesEreactValidas] OFF
GO
