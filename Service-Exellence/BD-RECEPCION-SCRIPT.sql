USE [recepcion]
GO
/****** Object:  Table [dbo].[agencia]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[agencia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[ip_agencia] [varchar](50) NULL,
	[usuario_agencia] [varchar](50) NULL,
	[bd_agencia] [varchar](50) NULL,
	[pass_agencia] [varchar](50) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[consecutivo] [int] NULL,
	[razon_social] [varchar](100) NULL,
	[dom_calle_fiscal] [varchar](100) NULL,
	[dom_col_fiscal] [varchar](100) NULL,
	[dom_numExt_fiscal] [varchar](10) NULL,
	[dom_numInt_fiscal] [varchar](5) NULL,
	[dom_ciudad_fiscal] [varchar](50) NULL,
	[dom_estado_fiscal] [varchar](50) NULL,
	[dom_cp_fiscal] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[archivo]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[archivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orden_servicio] [int] NULL,
	[tipo_archivo] [int] NULL,
	[ruta_archivo] [nvarchar](500) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[comentario] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bitacora_lavado]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bitacora_lavado](
	[id_servicio] [varchar](20) NULL,
	[inicia_lavado] [varchar](10) NULL,
	[finaliza_lavado] [varchar](10) NULL,
	[FechaCreacion] [timestamp] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[datos_sucursal]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[datos_sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_sucursal] [int] NULL,
	[dom_calle] [varchar](100) NULL,
	[dom_numExt] [varchar](20) NULL,
	[dom_numInt] [varchar](20) NULL,
	[dom_colonia] [varchar](100) NULL,
	[dom_cp] [int] NULL,
	[dom_ciudad] [varchar](100) NULL,
	[dom_estado] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[cedula_empresarial] [varchar](50) NULL,
	[reg_cam_nal_com] [varchar](50) NULL,
	[email_contacto] [varchar](50) NULL,
	[sitio_web] [varchar](50) NULL,
	[horario_recep] [varchar](100) NULL,
	[horario_caja] [varchar](100) NULL,
	[rfc] [varchar](20) NULL,
	[ruta_logo] [varchar](250) NULL,
	[noyexpediente] [varchar](250) NULL,
	[horario_entrega] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[firma_electronica]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[firma_electronica](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orden_servicio] [int] NULL,
	[firma] [nvarchar](max) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[firma_multipuntos] [nvarchar](max) NULL,
	[firma_formatoInventario] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mov_servicio]    Script Date: 22/01/2020 06:51:06 p. m. ******/
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
/****** Object:  Table [dbo].[orden_servicio]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orden_servicio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cliente] [varchar](30) NULL,
	[vin] [varchar](30) NULL,
	[num_orden] [varchar](20) NULL,
	[num_cita] [varchar](20) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[asesor] [varchar](100) NULL,
	[torre] [varchar](20) NULL,
	[fecha_recepcion] [smalldatetime] NULL,
	[hora_recepcion] [varchar](10) NULL,
	[fecha_entrega] [smalldatetime] NULL,
	[hora_entrega] [varchar](10) NULL,
	[nombre_cliente] [varchar](200) NULL,
	[ap_cliente] [varchar](50) NULL,
	[am_cliente] [varchar](50) NULL,
	[nom_compania] [varchar](100) NULL,
	[nom_contacto_compania] [varchar](50) NULL,
	[ap_contacto_compania] [varchar](50) NULL,
	[am_contacto_compania] [varchar](50) NULL,
	[email_cliente] [varchar](50) NULL,
	[email_compania] [varchar](50) NULL,
	[rfc_cliente] [varchar](20) NULL,
	[dir_calle] [varchar](100) NULL,
	[dir_num_ext] [varchar](20) NULL,
	[dir_num_int] [varchar](20) NULL,
	[dir_colonia] [varchar](100) NULL,
	[dir_municipio] [varchar](100) NULL,
	[dir_estado] [varchar](50) NULL,
	[dir_cp] [varchar](10) NULL,
	[tel_movil] [varchar](13) NULL,
	[otro_tel] [varchar](13) NULL,
	[placas_v] [varchar](20) NULL,
	[vin_v] [varchar](20) NULL,
	[kilometraje_v] [float] NULL,
	[marca_v] [varchar](50) NULL,
	[anio_modelo_v] [varchar](10) NULL,
	[color_v] [varchar](50) NULL,
	[tipo_orden] [varchar](30) NULL,
	[subtotal_orden] [float] NULL,
	[iva_orden] [float] NULL,
	[anticipo] [float] NULL,
	[total_orden] [float] NULL,
	[clave_asesor] [varchar](10) NULL,
	[id_orden_intelisis] [int] NULL,
	[id_sucursal_intelisis] [int] NULL,
	[multipuntos] [int] NULL,
	[regimen] [varchar](10) NULL,
	[torrecolor] [varchar](15) NULL,
	[torrenumero] [varchar](15) NULL,
	[comentario_cliente] [nvarchar](max) NULL,
	[comentario_tecnico_multip] [nvarchar](2500) NULL,
	[iva_aplicado] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orden_servicio_desglose]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orden_servicio_desglose](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orden] [int] NULL,
	[articulo] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[cantidad] [float] NULL,
	[precio_unitario] [float] NULL,
	[total] [float] NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orden_servicio_inspeccion]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orden_servicio_inspeccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_servicio] [int] NOT NULL,
	[cajuela] [varchar](100) NULL,
	[exteriores] [varchar](100) NULL,
	[documentacion] [varchar](100) NULL,
	[gasolina] [varchar](3) NULL,
	[dejaArticulos] [varchar](15) NULL,
	[articulos] [varchar](250) NULL,
	[aceiteMotor] [varchar](25) NULL,
	[direccionHidraulica] [varchar](25) NULL,
	[liquidoTransmision] [varchar](25) NULL,
	[liquidoLimpiaPara] [varchar](25) NULL,
	[liquidoFreno] [varchar](25) NULL,
	[pruebaParabrisas] [varchar](25) NULL,
	[plumas] [varchar](25) NULL,
	[llantas] [varchar](25) NULL,
	[tambores] [varchar](25) NULL,
	[discos] [varchar](25) NULL,
	[balatas] [varchar](25) NULL,
	[img] [nvarchar](max) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[bateria] [varchar](25) NULL,
	[corriente_fabrica] [int] NULL,
	[corriente_real] [int] NULL,
	[nivel_carga] [int] NULL,
	[luces] [varchar](25) NULL,
	[parabrisas] [varchar](25) NULL,
	[multipuntos] [bit] NULL,
	[multipuntos_box] [nvarchar](max) NULL,
	[multipuntos_input] [nvarchar](max) NULL,
	[perdida_fluidos] [varchar](2) NULL,
	[nivel_fluidos_cambiado] [varchar](2) NULL,
	[plumaslimp_cambiado] [varchar](2) NULL,
	[bateria_cambiado] [varchar](2) NULL,
	[sistemas1_cambiado] [varchar](2) NULL,
	[sistemas2_cambiado] [varchar](2) NULL,
	[deposito_refrigerante] [varchar](25) NULL,
	[multipuntos_text] [nvarchar](max) NULL,
	[tecnico_inspeccion] [varchar](150) NULL,
	[claxon] [varchar](13) NULL,
	[luces_int] [varchar](13) NULL,
	[radio] [varchar](13) NULL,
	[pantalla] [varchar](13) NULL,
	[ac] [varchar](13) NULL,
	[encendedor] [varchar](13) NULL,
	[vidrios] [varchar](13) NULL,
	[espejos] [varchar](13) NULL,
	[seguros_ele] [varchar](13) NULL,
	[co] [varchar](13) NULL,
	[asientosyvesti] [varchar](13) NULL,
	[tapetes] [varchar](13) NULL,
	[multipuntos_radio] [nvarchar](max) NULL,
	[extension_garantia] [varchar](2) NULL,
	[existen_danios] [bit] NULL,
	[dan_costDerecho] [bit] NULL,
	[dan_parteDel] [bit] NULL,
	[dan_intAsAlf] [bit] NULL,
	[dan_costIzq] [bit] NULL,
	[dan_parteTras] [bit] NULL,
	[dan_cristFaros] [bit] NULL,
	[inf_sistEsc] [varchar](20) NULL,
	[inf_amort] [varchar](20) NULL,
	[inf_tuberias] [varchar](20) NULL,
	[inf_transeje_transm] [varchar](20) NULL,
	[inf_sistDir] [varchar](20) NULL,
	[inf_chasisSucio] [varchar](20) NULL,
	[inf_golpesEspecif] [varchar](20) NULL,
	[sfrenos_ddBalata] [varchar](20) NULL,
	[sfrenos_ddDisco] [varchar](20) NULL,
	[sfrenos_ddNeumat] [varchar](20) NULL,
	[sfrenos_diBalata] [varchar](20) NULL,
	[sfrenos_diDisco] [varchar](20) NULL,
	[sfrenos_diNeumat] [varchar](20) NULL,
	[sfrenos_tdBalata] [varchar](20) NULL,
	[sfrenos_tdDisco] [varchar](20) NULL,
	[sfrenos_tdNeumat] [varchar](20) NULL,
	[sfrenos_tiBalata] [varchar](20) NULL,
	[sfrenos_tiDisco] [varchar](20) NULL,
	[sfrenos_tiNeumat] [varchar](20) NULL,
	[sfrenos_refNeumat] [varchar](20) NULL,
	[reqRev_inferior] [bit] NULL,
	[reqRev_sistFrenos] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[id_servicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ParametrosAgencia]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ParametrosAgencia](
	[IdParametro] [int] IDENTITY(1,1) NOT NULL,
	[Clave] [varchar](10) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Valor] [varchar](100) NULL,
	[Grupo] [varchar](50) NOT NULL,
	[Empresa] [varchar](5) NOT NULL,
	[Sucursal] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[perfil]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[perfil](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[perfil] [varchar](100) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[presupuesto_detalle]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presupuesto_detalle](
	[id_articulo] [int] IDENTITY(1,1) NOT NULL,
	[id_presupuesto] [int] NOT NULL,
	[cve_articulo] [varchar](50) NULL,
	[descripcion] [varchar](250) NULL,
	[cantidad] [float] NULL,
	[precio_unitario] [float] NULL,
	[total_arts] [float] NULL,
	[autorizado] [bit] NULL,
	[comentario] [varchar](255) NULL,
	[quien_autoriza] [varchar](30) NULL,
	[fecha_autorizacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[presupuestos]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[presupuestos](
	[id_presupuesto] [int] IDENTITY(1,1) NOT NULL,
	[id_orden] [int] NOT NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[eliminado] [int] NULL,
	[total_presupuesto] [float] NULL,
	[autorizado] [int] NULL,
	[vista_email] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_presupuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_agencia] [int] NULL,
	[nombre] [varchar](100) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[id_intelisis] [int] NULL,
	[id_servicio] [int] NULL,
	[rampas] [int] NULL,
	[horas_rampas] [varchar](8) NULL,
	[rampas_x_disponibilidad] [varchar](10) NULL,
	[servicio_express] [varchar](10) NULL,
	[max_agenexpress] [varchar](10) NULL,
	[max_agennormal] [varchar](10) NULL,
	[hora_Actualizacion] [smalldatetime] NULL,
	[empresa] [varchar](5) NULL,
	[sucursal_int] [int] NULL,
	[almacen_servicio] [varchar](20) NULL,
	[almacen_refacciones] [varchar](20) NULL,
	[moneda] [nvarchar](20) NULL,
	[sucursal_marca] [varchar](30) NULL,
	[email_refacciones] [varchar](200) NULL,
	[tickaje] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_archivo]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_archivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 22/01/2020 06:51:06 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](30) NULL,
	[nombre] [varchar](30) NULL,
	[apellidos] [varchar](45) NULL,
	[email] [varchar](45) NULL,
	[salt] [varchar](45) NULL,
	[password] [varchar](65) NULL,
	[perfil] [int] NULL,
	[creado] [datetime] NULL,
	[eliminado] [tinyint] NULL,
	[id_sucursal] [int] NULL,
	[cve_intelisis] [varchar](8) NULL,
	[firma_electronica] [nvarchar](max) NULL,
	[actualizado] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[agencia] ON 

INSERT [dbo].[agencia] ([id], [nombre], [ip_agencia], [usuario_agencia], [bd_agencia], [pass_agencia], [fecha_creacion], [fecha_actualizacion], [eliminado], [consecutivo], [razon_social], [dom_calle_fiscal], [dom_col_fiscal], [dom_numExt_fiscal], [dom_numInt_fiscal], [dom_ciudad_fiscal], [dom_estado_fiscal], [dom_cp_fiscal]) VALUES (1, N'FORZA', N'172.16.50.36', N'sa', N'ACF_Zacatecas', N'1234567Qwerty', CAST(N'2018-02-05 12:59:00' AS SmallDateTime), CAST(N'2018-02-05 12:59:00' AS SmallDateTime), 0, 13, N'FORD SERVICE EXCELLENCE', N'Direecion demo', N'BLVD. LOPEZ PORTILLO', N'201', NULL, N'', N'Zacatecas', N'55714')
SET IDENTITY_INSERT [dbo].[agencia] OFF
SET IDENTITY_INSERT [dbo].[datos_sucursal] ON 

INSERT [dbo].[datos_sucursal] ([id], [id_sucursal], [dom_calle], [dom_numExt], [dom_numInt], [dom_colonia], [dom_cp], [dom_ciudad], [dom_estado], [telefono], [cedula_empresarial], [reg_cam_nal_com], [email_contacto], [sitio_web], [horario_recep], [horario_caja], [rfc], [ruta_logo], [noyexpediente], [horario_entrega]) VALUES (1, 1, N'Blvd López Portillo', N'201', NULL, N'Dependencias Federales', 98618, N'Guadalupe', N'Michoacan', N'(492) 923 3413 ', NULL, NULL, N'buzondesugerencias@ford.com', N'www.ford.com', N'Lunes a Viernes de 8 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 8:30 AM a 2 PM', N'Lunes a Viernes de 8 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 8:30 AM a 2 PM', N'ACZ970422FS0
', N'./assets/img/logo/logo_toyota2.png', N'34-2016, Expediente No. PFC.B.E.7/000042-2016', NULL)
INSERT [dbo].[datos_sucursal] ([id], [id_sucursal], [dom_calle], [dom_numExt], [dom_numInt], [dom_colonia], [dom_cp], [dom_ciudad], [dom_estado], [telefono], [cedula_empresarial], [reg_cam_nal_com], [email_contacto], [sitio_web], [horario_recep], [horario_caja], [rfc], [ruta_logo], [noyexpediente], [horario_entrega]) VALUES (2, 2, N'Paseo del Mineral Esq. Camelias', N'352', NULL, N'Huertas de Abajo', 98054, N'Fresnillo', N'Michoacan', N'(493) 932 9501 ', NULL, NULL, N'buzondesugerencias@ford.mx', N'www.ford.com', N'Lunes a Viernes de 9 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 9:00 AM a 2 PM', N'Lunes a Viernes de 9 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 9:00 AM a 2 PM', N'ACZ970422FS0', N'./assets/img/logo/ford.png', N'26-2016, Expediente No. PFC.B.E.7/000039-2016', NULL)
SET IDENTITY_INSERT [dbo].[datos_sucursal] OFF
SET IDENTITY_INSERT [dbo].[perfil] ON 

INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (1, N'Superusuario', CAST(N'2018-11-10 12:16:00' AS SmallDateTime), 0)
INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (2, N'Recepcionista', CAST(N'2018-11-10 12:16:00' AS SmallDateTime), 0)
INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (3, N'Asesor', CAST(N'2018-11-10 12:16:00' AS SmallDateTime), 0)
INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (4, N'Jefe de Taller', CAST(N'2018-11-10 12:17:00' AS SmallDateTime), 1)
INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (5, N'Técnico', CAST(N'2018-11-10 12:17:00' AS SmallDateTime), 1)
INSERT [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (6, N'Refacciones', CAST(N'2018-11-10 12:17:00' AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[perfil] OFF
SET IDENTITY_INSERT [dbo].[sucursal] ON 

INSERT [dbo].[sucursal] ([id], [id_agencia], [nombre], [fecha_creacion], [fecha_actualizacion], [eliminado], [id_intelisis], [id_servicio], [rampas], [horas_rampas], [rampas_x_disponibilidad], [servicio_express], [max_agenexpress], [max_agennormal], [hora_Actualizacion], [empresa], [sucursal_int], [almacen_servicio], [almacen_refacciones], [moneda], [sucursal_marca], [email_refacciones], [tickaje]) VALUES (1, 1, N'Zacatecas', CAST(N'2018-10-11 16:42:00' AS SmallDateTime), CAST(N'2018-10-11 16:42:00' AS SmallDateTime), 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FORZA', 1, N'S', N'R', N'PESOS', N'FORD', N'sistemas.intelisis@gmail.com', 0)
INSERT [dbo].[sucursal] ([id], [id_agencia], [nombre], [fecha_creacion], [fecha_actualizacion], [eliminado], [id_intelisis], [id_servicio], [rampas], [horas_rampas], [rampas_x_disponibilidad], [servicio_express], [max_agenexpress], [max_agennormal], [hora_Actualizacion], [empresa], [sucursal_int], [almacen_servicio], [almacen_refacciones], [moneda], [sucursal_marca], [email_refacciones], [tickaje]) VALUES (2, 1, N'Fresnillo', CAST(N'2018-10-11 16:42:00' AS SmallDateTime), CAST(N'2018-10-11 16:42:00' AS SmallDateTime), 0, 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'FORZA', 3, N'SS1 ', N'RS1', N'PESOS', N'FORD', N'sistemas.intelisis@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[sucursal] OFF
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [usuario], [nombre], [apellidos], [email], [salt], [password], [perfil], [creado], [eliminado], [id_sucursal], [cve_intelisis], [firma_electronica], [actualizado]) VALUES (1, N'SOPDESA', N'Intelisis', N'Solutions', N'desarrollo@intelisis.com', N'7db5fsPGzuNlcDwISEHyxAQ6', N'db9ddccc9a72cd4a384a9786883ed9df0c8d0111258580cede639753f82d4e3f', 1, CAST(N'2018-12-05 17:46:34.347' AS DateTime), 0, 1, N'', NULL, NULL)
INSERT [dbo].[usuarios] ([id], [usuario], [nombre], [apellidos], [email], [salt], [password], [perfil], [creado], [eliminado], [id_sucursal], [cve_intelisis], [firma_electronica], [actualizado]) VALUES (2, N'usu_refacc', N'Refacciones', N'Perfil', N'refacc@maserp.com', N'7db5fsPGzuNlcDwISEHyxAQ6', N'db9ddccc9a72cd4a384a9786883ed9df0c8d0111258580cede639753f82d4e3f', 6, CAST(N'2018-12-05 17:46:34.347' AS DateTime), 0, 1, N'', NULL, NULL)
INSERT [dbo].[usuarios] ([id], [usuario], [nombre], [apellidos], [email], [salt], [password], [perfil], [creado], [eliminado], [id_sucursal], [cve_intelisis], [firma_electronica], [actualizado]) VALUES (3, N'recepcion', N'Recepcion', N'Activa', N'recepcion@maserp.com', N'7db5fsPGzuNlcDwISEHyxAQ6', N'db9ddccc9a72cd4a384a9786883ed9df0c8d0111258580cede639753f82d4e3f', 2, CAST(N'2018-12-05 17:46:34.347' AS DateTime), 0, 1, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[usuarios] OFF
/****** Object:  Index [UQ__orden_se__3213E83E5A83D594]    Script Date: 22/01/2020 06:51:06 p. m. ******/
ALTER TABLE [dbo].[orden_servicio_inspeccion] ADD UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Email_Unico]    Script Date: 22/01/2020 06:51:06 p. m. ******/
ALTER TABLE [dbo].[usuarios] ADD  CONSTRAINT [Email_Unico] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[agencia] ADD  DEFAULT ((0)) FOR [consecutivo]
GO
ALTER TABLE [dbo].[orden_servicio] ADD  DEFAULT ((0)) FOR [multipuntos]
GO
ALTER TABLE [dbo].[orden_servicio_inspeccion] ADD  DEFAULT ((0)) FOR [multipuntos]
GO
ALTER TABLE [dbo].[usuarios] ADD  DEFAULT (getdate()) FOR [creado]
GO
ALTER TABLE [dbo].[archivo]  WITH CHECK ADD FOREIGN KEY([id_orden_servicio])
REFERENCES [dbo].[orden_servicio] ([id])
GO
ALTER TABLE [dbo].[archivo]  WITH CHECK ADD FOREIGN KEY([tipo_archivo])
REFERENCES [dbo].[tipo_archivo] ([id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([id_agencia])
REFERENCES [dbo].[agencia] ([id])
GO
