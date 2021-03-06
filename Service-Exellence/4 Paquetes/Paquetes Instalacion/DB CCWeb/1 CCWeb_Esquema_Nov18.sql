USE [CCWeb]
GO
/****** Object:  StoredProcedure [dbo].[spConsultaSuc]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spConsultaSuc] (@Suc INT, @FechaPeriodo DATE)
AS
BEGIN
	SELECT nom FROM dat_suc WHERE int_sucursal = @Suc AND fecha_creacion <= @FechaPeriodo
END

GO
/****** Object:  Table [dbo].[CargaPcksTemp]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CargaPcksTemp](
	[vehiculo] [varchar](100) NULL,
	[clave_pck] [varchar](100) NULL,
	[pck] [varchar](100) NULL,
	[parte] [varchar](100) NULL,
	[cantidad] [float] NULL,
	[precio] [money] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cat_codigo_postal]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_codigo_postal](
	[CP] [varchar](10) NULL,
	[Asentamiento] [varchar](256) NULL,
	[TipoAsentamiento] [varchar](256) NULL,
	[Municipio] [varchar](256) NULL,
	[Estado] [varchar](256) NULL,
	[Ciudad] [varchar](256) NULL,
	[Zona] [varchar](256) NULL,
	[CveEstado] [int] NULL,
	[CveTipoAsentamiento] [int] NULL,
	[CveMunicipio] [int] NULL,
	[CveCiudad] [int] NULL,
	[Pais] [varchar](30) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cat_sistema]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_sistema](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](15) NOT NULL,
	[Alias] [varchar](30) NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cat_sistema_detalle]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cat_sistema_detalle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_cat_sistema] [int] NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[Alias] [varchar](30) NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_evento]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_evento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idVehiculo] [int] NULL,
	[TipoEvento] [varchar](30) NULL,
	[Descripcion] [varchar](256) NULL,
	[idUsuario] [int] NULL,
	[idAgenteAsignado] [int] NULL,
	[Estatus] [int] NULL,
	[FechaEvento] [smalldatetime] NULL,
	[FechaDebeTerminar] [smalldatetime] NULL,
	[FechaEntrega] [smalldatetime] NULL,
	[FechaRealizado] [smalldatetime] NULL,
	[idRegistro] [int] NULL,
	[FechaRegistro] [smalldatetime] NULL,
	[FechaActualizacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_evento_procesos]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_evento_procesos](
	[idEvento] [int] NULL,
	[NumProceso] [int] NULL,
	[Proceso] [varchar](100) NULL,
	[idPaquete] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_propietario]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cte_propietario](
	[idProspecto] [int] NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[Principal] [bit] NULL,
	[Activo] [bit] NULL,
	[FechaActualizacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProspecto] ASC,
	[idVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cte_prosp_contacto]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_prosp_contacto](
	[idProspecto] [int] NOT NULL,
	[TipoContacto] [varchar](20) NULL,
	[Dato] [varchar](256) NULL,
	[Lada] [varchar](5) NULL,
	[Ext] [varchar](5) NULL,
	[Activo] [bit] NULL,
	[FechaActualizacion] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_prospecto]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_prospecto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSuc] [int] NULL,
	[idUsuario] [int] NULL,
	[Nombre] [varchar](256) NULL,
	[ApPaterno] [varchar](256) NULL,
	[ApMaterno] [varchar](256) NULL,
	[Celular] [varchar](15) NULL,
	[LadaTel] [varchar](5) NULL,
	[Telefono] [varchar](10) NULL,
	[LadaTO] [varchar](5) NULL,
	[TelOficina] [varchar](10) NULL,
	[Ext] [varchar](5) NULL,
	[Email] [varchar](256) NULL,
	[idRegistro] [int] NULL,
	[FechaRegistro] [smalldatetime] NULL,
	[Activo] [bit] NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[TipoPersona] [bit] NULL,
	[RFC] [varchar](30) NULL,
	[Direccion] [varchar](256) NULL,
	[Numero] [varchar](10) NULL,
	[NumInt] [varchar](10) NULL,
	[CP] [varchar](10) NULL,
	[Colonia] [varchar](100) NULL,
	[Delegacion] [varchar](30) NULL,
	[Estado] [varchar](30) NULL,
	[Pais] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_tipo_evento]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_tipo_evento](
	[Evento] [varchar](30) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Tipo] [varchar](20) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Evento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cte_vehiculo]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cte_vehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSuc] [int] NULL,
	[idUsuario] [int] NULL,
	[VIN] [varchar](50) NULL,
	[Marca] [varchar](30) NULL,
	[Modelo] [varchar](30) NULL,
	[Version] [varchar](30) NULL,
	[Anio] [int] NULL,
	[Estatus] [varchar](20) NULL,
	[TipoOperacion] [varchar](100) NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[idRegistro] [int] NULL,
	[FechaRegistro] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctrl_agente]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_agente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSuc] [int] NULL,
	[Usuario] [varchar](30) NULL,
	[Nombre] [varchar](100) NULL,
	[ApPaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](50) NULL,
	[TipoAgente] [varchar](50) NULL,
	[Activo] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctrl_agente_horario]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_agente_horario](
	[idAgente] [int] NULL,
	[Horario] [varchar](256) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctrl_menu]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu_texto] [varchar](100) NULL,
	[url] [varchar](100) NULL,
	[icono] [varchar](40) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[iconoMenuLateral] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctrl_nivel_us]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_nivel_us](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nivel] [varchar](100) NULL,
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
/****** Object:  Table [dbo].[ctrl_permiso]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_permiso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_config_menu] [int] NULL,
	[id_conf_nivel_us] [int] NULL,
	[permiso] [varchar](50) NULL,
	[primero] [bit] NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[orden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctrl_sessions]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctrl_sessions](
	[session_id] [nvarchar](40) NOT NULL,
	[ip_address] [nvarchar](16) NOT NULL,
	[user_agent] [nvarchar](120) NOT NULL,
	[last_activity] [int] NOT NULL,
	[user_data] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ctrl_usuario]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ctrl_usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_suc] [int] NOT NULL,
	[usuario] [varchar](55) NULL,
	[password] [varchar](100) NULL,
	[nombre] [varchar](255) NULL,
	[apellido_paterno] [varchar](255) NULL,
	[apellido_materno] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[telefono] [varchar](30) NULL,
	[celular] [varchar](50) NULL,
	[id_nivel] [int] NULL,
	[id_acceso] [int] NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[f_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[nombre_dms] [varchar](100) NULL,
	[Contrasena_dms] [varchar](32) NULL,
	[UltimoCambio_dms] [datetime] NULL,
	[vf_perfil] [varbinary](max) NULL,
	[vcf_perfil] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [key_us_suc] UNIQUE NONCLUSTERED 
(
	[id] ASC,
	[id_suc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_ag]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_ag](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_div] [int] NOT NULL,
	[agencia] [varchar](100) NOT NULL,
	[nom] [varchar](100) NULL,
	[intelisis_empresa] [varchar](30) NULL,
	[intelisis_db] [varchar](30) NULL,
	[intelisis_user] [varchar](30) NULL,
	[intelisis_password] [varchar](30) NULL,
	[intelisis_ip] [varchar](30) NULL,
	[razon_social] [varchar](255) NULL,
	[razon_social_corta] [varchar](255) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [key_ag_div] UNIQUE NONCLUSTERED 
(
	[id] ASC,
	[id_div] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_corp]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_corp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[corporativo] [varchar](100) NOT NULL,
	[nom] [varchar](100) NULL,
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
/****** Object:  Table [dbo].[dat_div]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_div](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_corp] [int] NOT NULL,
	[division] [varchar](100) NOT NULL,
	[nom] [varchar](100) NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [key_div_corp] UNIQUE NONCLUSTERED 
(
	[id] ASC,
	[id_corp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dat_suc]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dat_suc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_ag] [int] NULL,
	[sucursal] [varchar](100) NULL,
	[nom] [varchar](100) NULL,
	[id_dat_suc] [int] NULL,
	[id_dat_dir_suc] [int] NULL,
	[int_sucursal] [int] NOT NULL,
	[int_almacen_serv] [varchar](30) NULL,
	[int_almacen_ref] [varchar](30) NULL,
	[matriz] [tinyint] NULL,
	[servicios_web] [int] NULL,
	[logo] [varchar](255) NULL,
	[logo_cabezera] [varchar](255) NULL,
	[id_pedido] [int] NULL,
	[fecha_creacion] [smalldatetime] NULL,
	[fecha_actualizacion] [smalldatetime] NULL,
	[eliminado] [bit] NULL,
	[website] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [key_suc_ag] UNIQUE NONCLUSTERED 
(
	[id] ASC,
	[id_ag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dms_art]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dms_art](
	[Articulo] [varchar](20) NOT NULL,
	[Descripcion1] [varchar](100) NULL,
	[Tipo] [varchar](20) NOT NULL,
	[Estatus] [varchar](15) NOT NULL,
	[UltimoCambio] [datetime] NULL,
	[Id_Ag] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Articulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dms_catalogo]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dms_catalogo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Catalogo] [varchar](15) NULL,
	[Descripcion] [varchar](30) NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[Eliminado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[dms_catalogo_detalle]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[dms_catalogo_detalle](
	[id_catalogo] [int] NOT NULL,
	[Descripcion] [varchar](20) NULL,
	[FechaActualizacion] [smalldatetime] NULL,
	[Eliminado] [bit] NULL,
	[Id_Ag] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PaquetesHomologacionPrecio]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PaquetesHomologacionPrecio](
	[Servicio] [int] NOT NULL,
	[Vehiculo] [varchar](50) NOT NULL,
	[CodigoPaquete] [varchar](50) NULL,
	[Homologacion] [money] NULL,
	[Varios] [money] NULL,
	[Actualizacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicio] ASC,
	[Vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicioPaquetes]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicioPaquetes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionC] [varchar](100) NULL,
	[DescripcionL] [varchar](250) NULL,
	[TipoPaquete] [varchar](30) NULL,
	[Kilometraje] [int] NULL,
	[Precio] [money] NULL,
	[TipoPrecio] [varchar](20) NULL,
	[Prorrateo] [varchar](25) NULL,
	[TTabulador] [float] NULL,
	[TFacturado] [float] NULL,
	[ClavePlanta] [varchar](100) NULL,
	[Estatus] [int] NULL,
	[Actualizacion] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicioPaquetesD]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicioPaquetesD](
	[IdPaquete] [int] NOT NULL,
	[Renglon] [float] NOT NULL,
	[Articulo] [varchar](20) NULL,
	[SubtipoCuenta] [varchar](20) NULL,
	[Cantidad] [float] NULL,
	[TTabulado] [float] NULL,
	[AlmacenEsp] [varchar](10) NULL,
	[ListaPreciosEsp] [varchar](20) NULL,
	[PrecioUnitario] [money] NULL,
	[Actualizacion] [smalldatetime] NULL,
	[TipoArticulo] [varchar](20) NULL,
	[Descripcion] [varchar](100) NULL,
	[PrecioTotal] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC,
	[Renglon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ServicioPaquetesR]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ServicioPaquetesR](
	[IdPaquete] [int] NULL,
	[Regla] [int] NULL,
	[Condicion] [varchar](50) NULL,
	[Definicion] [varchar](50) NULL,
	[Actualizacion] [smalldatetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehiculosPaquetes]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehiculosPaquetes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdPaquete] [int] NOT NULL,
	[Modelo] [varchar](254) NULL,
	[Articulo] [varchar](20) NULL,
	[Cilindros] [int] NULL,
	[Transmision] [varchar](20) NULL,
	[Motor] [varchar](20) NULL,
	[Estatus] [int] NULL,
	[Actualizacion] [smalldatetime] NULL,
	[Regla] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VIN]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VIN](
	[VIN] [varchar](20) NOT NULL,
	[Articulo] [varchar](20) NULL,
	[Pedimento] [varchar](20) NULL,
	[ClaveVehicular] [varchar](20) NULL,
	[TipoUnidad] [varchar](20) NULL,
	[Km] [int] NULL,
	[KmSalida] [int] NULL,
	[Motor] [varchar](20) NULL,
	[Llave] [varchar](20) NULL,
	[Aduana] [varchar](50) NULL,
	[Fecha] [datetime] NULL,
	[Aseguradora] [varchar](50) NULL,
	[Cliente] [varchar](10) NULL,
	[Conductor] [varchar](10) NULL,
	[TieneMovimientos] [bit] NOT NULL,
	[Alta] [datetime] NULL,
	[Empresa] [varchar](5) NULL,
	[Placas] [varchar](20) NULL,
	[Poliza] [varchar](20) NULL,
	[PolizaTipo] [varchar](20) NULL,
	[PolizaVencimiento] [datetime] NULL,
	[GarantiaVencimiento] [datetime] NULL,
	[CodigoRadio] [varchar](20) NULL,
	[CodigoTransmision] [varchar](20) NULL,
	[CodigoColor] [varchar](20) NULL,
	[CodigoLlanta1] [varchar](20) NULL,
	[CodigoLlanta2] [varchar](25) NULL,
	[CodigoLlanta3] [varchar](20) NULL,
	[CodigoLlanta4] [varchar](20) NULL,
	[CodigoLlanta5] [varchar](20) NULL,
	[Registro] [varchar](20) NULL,
	[FechaCartaCredito] [datetime] NULL,
	[FechaFactura] [datetime] NULL,
	[FechaUltimoServicio] [datetime] NULL,
	[FechaSiguienteServicio] [datetime] NULL,
	[PolizaImporte] [money] NULL,
	[Costo] [float] NULL,
	[CostoConGastos] [float] NULL,
	[Tasa] [float] NULL,
	[Logico1] [bit] NOT NULL,
	[Logico2] [bit] NOT NULL,
	[Logico3] [bit] NOT NULL,
	[Logico4] [bit] NOT NULL,
	[Logico5] [bit] NOT NULL,
	[CambioVIN] [varchar](20) NULL,
	[CambioKm] [int] NULL,
	[Modelo] [varchar](4) NULL,
	[ClaveFinanciera] [varchar](3) NULL,
	[NumeroOrden] [varchar](6) NULL,
	[TipoCompra] [varchar](1) NULL,
	[FolioFacturaCompra] [varchar](15) NULL,
	[FechaFacturaCompra] [datetime] NULL,
	[Mercado] [varchar](2) NULL,
	[ClaveDistribuidor] [varchar](3) NULL,
	[Descripcion1] [varchar](38) NULL,
	[Descripcion2] [varchar](38) NULL,
	[PrecioBasicoDistribuidor] [money] NULL,
	[PrecioBasicoPublico] [money] NULL,
	[AjusteBasicoDistribuidor] [money] NULL,
	[TotalAccesoriosDistribuidor] [money] NULL,
	[TotalAccesoriosPublico] [money] NULL,
	[TotalDescuentoAccesoriosMemo] [money] NULL,
	[TotalDescuentoDistribuidorMemo] [money] NULL,
	[TotalDescuentoPepPublico] [money] NULL,
	[Descuento1Descripcion] [varchar](30) NULL,
	[Descuento1Distribuidor] [money] NULL,
	[Descuento1Publico] [money] NULL,
	[Descuento2Descripcion] [varchar](30) NULL,
	[Descuento2Distribuidor] [money] NULL,
	[Descuento2Publico] [money] NULL,
	[Descuento3Descripcion] [varchar](30) NULL,
	[Descuento3Distribuidor] [money] NULL,
	[Descuento3Publico] [money] NULL,
	[SeguroProvincial] [money] NULL,
	[GastosTraslado] [money] NULL,
	[SeguroAsociacion] [money] NULL,
	[Bonificacion15DiasSinIntereses] [money] NULL,
	[ReembolsoTransportacion] [money] NULL,
	[Bonificacion] [money] NULL,
	[BonificacionEnPrecio] [money] NULL,
	[GarantiaServicio] [money] NULL,
	[Miscelaneos] [money] NULL,
	[SubTotalFacturaCompra] [money] NULL,
	[IVAFacturaCompra] [money] NULL,
	[CoutaPublicidad] [money] NULL,
	[TotalFacturaCompra] [money] NULL,
	[NivelPrecios] [varchar](3) NULL,
	[ColorExterior] [varchar](10) NULL,
	[ColorExteriorDescripcion] [varchar](50) NULL,
	[ColorInterior] [varchar](10) NULL,
	[ColorInteriorDescripcion] [varchar](50) NULL,
	[ClaveAduana] [varchar](4) NULL,
	[PedimentoFecha] [datetime] NULL,
	[CoutaFondoCivico] [money] NULL,
	[CoutaFordStar] [money] NULL,
	[OtrasOpciones] [varchar](22) NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[FechaPago] [datetime] NULL,
	[VentaID] [int] NULL,
	[CompraID] [int] NULL,
	[NumeroEconomico] [varchar](20) NULL,
	[Holograma] [varchar](50) NULL,
	[FechaMRS] [datetime] NULL,
	[FechaSalidaMRS] [datetime] NULL,
	[Interfase] [bit] NULL,
	[DiasLibresIntereses] [int] NULL,
	[DiasLibresAdicionales] [int] NULL,
	[UltimoPagoCostoPiso] [datetime] NULL,
	[IntercambioDirecto] [bit] NULL,
	[FechaImportacion] [datetime] NULL,
	[Estatus] [varchar](15) NULL,
	[Situacion] [varchar](50) NULL,
	[SituacionFecha] [datetime] NULL,
	[SituacionUsuario] [varchar](10) NULL,
	[SituacionNota] [varchar](100) NULL,
	[Agente] [varchar](10) NULL,
	[PrecioDistribuidor] [money] NULL,
	[PrecioPublico] [money] NULL,
	[PrecioContado] [money] NULL,
	[ISANPublico] [money] NULL,
	[ISANContado] [money] NULL,
	[IVAPublico] [money] NULL,
	[IVAContado] [money] NULL,
	[FechaBaja] [datetime] NULL,
	[BonoLealtad] [bit] NULL,
	[OtrasBonificaciones1] [money] NULL,
	[OtrasBonificaciones1F] [datetime] NULL,
	[OtrasBonificaciones2] [money] NULL,
	[OtrasBonificaciones2F] [datetime] NULL,
	[OtrasBonificaciones3] [money] NULL,
	[OtrasBonificaciones3F] [datetime] NULL,
	[BonificacionContratoServicio] [money] NULL,
	[BonificacionContratoServicioF] [datetime] NULL,
	[TipoVenta] [varchar](1) NULL,
	[ImporteVenta] [money] NULL,
	[Contrato] [varchar](20) NULL,
	[FIFSCAR] [varchar](20) NULL,
	[FIFechaFactura] [datetime] NULL,
	[FIMontoFinanciar] [money] NULL,
	[FIFechaPagare] [datetime] NULL,
	[FINumeroContrato] [varchar](20) NULL,
	[FIFechaCompra] [datetime] NULL,
	[FITipoFinanciamiento] [varchar](50) NULL,
	[UltimaLlamada] [datetime] NULL,
	[SiguienteLlamada] [datetime] NULL,
	[CantidadLlamadas] [int] NULL,
	[NoLlamar] [bit] NULL,
	[ValidarVIN] [bit] NULL,
	[Blindado] [bit] NULL,
	[KmsGarantia] [int] NULL,
	[VencimientoGarantia] [datetime] NULL,
	[TipoGarantia] [varchar](20) NULL,
	[KmsAdicionales] [int] NULL,
	[MesesAdicionales] [int] NULL,
	[KmsGarantiaTipo] [int] NULL,
	[VencimientoGarantiaTipo] [datetime] NULL,
	[Certificado] [varchar](20) NULL,
	[KmsAdicionalesCertificado] [int] NULL,
	[MesesAdicionalesCertificado] [int] NULL,
	[KilometrajeInicial] [int] NULL,
	[FechaVentaCertificado] [datetime] NULL,
	[KilometrosGarantiaCertificado] [int] NULL,
	[VencimientoGarantiaCertificado] [datetime] NULL,
	[CCNoLocalizable] [bit] NULL,
	[Procedencia] [varchar](55) NULL,
	[VehiculoDemo] [bit] NOT NULL,
	[UbicacionFisica] [varchar](50) NULL,
	[Cilindros] [int] NULL,
	[Puertas] [char](30) NULL,
	[Pasajeros] [int] NULL,
	[CapacidadCarga] [int] NULL,
	[CapacidadTanque] [int] NULL,
	[Combustible] [char](20) NULL,
	[AfectoImpuesto] [bit] NOT NULL,
	[Transmision] [varchar](20) NULL,
	[Repuve] [varchar](8) NULL,
	[PrimeraLlamada] [datetime] NULL,
	[ComentariosPrimeraLLamada] [varchar](1000) NULL,
	[SegundaLlamada] [datetime] NULL,
	[ComentariosSegundaLLamada] [varchar](1000) NULL,
	[TerceraLlamada] [datetime] NULL,
	[ComentariosTerceraLLamada] [varchar](1000) NULL,
	[DescripcionProximoServicio] [varchar](50) NULL,
	[ClavePatenteAduana] [char](4) NULL,
	[DescPaisOrigen] [char](40) NULL,
	[CuartaLlamada] [datetime] NULL,
	[ComentariosCuartaLLamada] [varchar](1000) NULL,
	[QuintaLlamada] [datetime] NULL,
	[ComentariosQuintaLLamada] [varchar](1000) NULL,
	[DescripcionLarga] [varchar](150) NULL,
	[Holdback] [money] NULL,
	[CategoriaVenta] [varchar](20) NULL,
	[MargenUtilidad] [float] NULL,
	[FolioGMAC] [varchar](20) NULL,
	[Cheque] [bit] NULL,
	[DealerOrigen] [varchar](10) NULL,
	[DealerDestino] [varchar](10) NULL,
	[FacturaDealer] [varchar](12) NULL,
	[FechaUltimaReparacion] [datetime] NULL,
	[FechaProximaReservacion] [datetime] NULL,
	[FechaUltimoServicioFord] [datetime] NULL,
	[DescripcionUltimoServicio] [varchar](50) NULL,
	[DescripcionUltimaReparacion] [varchar](50) NULL,
	[KMReparacion] [int] NULL,
	[ComentariosUltimaLLamada] [text] NULL,
	[TieneServicio] [bit] NULL,
	[MotorLts] [varchar](10) NULL,
	[TipoVehiculoQC] [varchar](50) NULL,
	[TipoVehiculoDemo] [char](20) NULL,
	[CteResponsable] [varchar](10) NULL,
	[CteRespNombre] [varchar](100) NULL,
	[CteRespTel] [varchar](50) NULL,
	[FechaDOFU] [datetime] NULL,
	[UsadosAdquisicion] [money] NULL,
	[UsadosEBC] [money] NULL,
	[FechaCompra] [datetime] NULL,
	[PlacasCompra] [varchar](20) NULL,
	[CostoConGasto] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[VIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VIN2]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VIN2](
	[Cilindros] [varchar](255) NULL,
	[Transmision] [varchar](255) NULL,
	[Motor] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[ListadoProspectos]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ListadoProspectos] AS 


SELECT 	prosp.id, 
		prosp.idSuc,
		prosp.idUsuario,
		prosp.Nombre+' '+prosp.ApPaterno+' '+prosp.ApMaterno AS Prospecto,
		prosp.Celular,
		prosp.Activo,
		prop.idVehiculo,
		vehiculo.Modelo,
		vehiculo.Version,
		evento.TipoEvento,
		evento.Descripcion,
		evento.FechaEvento
FROM	
	cte_prospecto AS prosp
JOIN
	cte_propietario AS prop ON prosp.id = prop.idProspecto
JOIN
	cte_vehiculo AS vehiculo ON vehiculo.id = prop.idVehiculo
JOIN
	cte_evento AS evento ON prop.idVehiculo = evento.idVehiculo
WHERE
	prop.Activo = 1
	AND prop.Principal = 1
	AND vehiculo.Estatus = 'Pendiente'
	AND	evento.Estatus = 0
	
	
	

GO
/****** Object:  View [dbo].[PaquetesWeb]    Script Date: 30/11/2018 01:40:24 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PaquetesWeb] AS 
SELECT A.IdPaquete, A.Regla, A.Definicion AS Articulo, 
			M.Definicion AS Modelo, 
			C.Definicion AS Cilindros, 
			T.Definicion AS Transmision, 
			MT.Definicion AS Motor,
			SP.DescripcionC, SP.DescripcionL, SP.TipoPaquete, SP.Kilometraje, SP.ClavePlanta
    FROM ServicioPaquetesR  A
JOIN ServicioPaquetesR M ON A.IdPaquete = M.IdPaquete AND A.Regla = M.Regla
JOIN ServicioPaquetesR C ON A.IdPaquete = C.IdPaquete AND A.Regla = C.Regla
JOIN ServicioPaquetesR T ON A.IdPaquete = T.IdPaquete AND A.Regla = T.Regla
JOIN ServicioPaquetesR MT ON A.IdPaquete = MT.IdPaquete AND A.Regla = MT.Regla
JOIN ServicioPaquetes SP ON A.IdPaquete = SP.Id AND SP.Estatus = 1
   WHERE  A.Condicion = 'Articulo'
AND M.Condicion = 'Modelo'
AND C.Condicion = 'Cilindros'
AND T.Condicion = 'Transmision'
AND MT.Condicion = 'Motor'
GO
ALTER TABLE [dbo].[cte_evento] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[cte_evento] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[cte_propietario] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[cte_prosp_contacto] ADD  CONSTRAINT [DF__cte_conta__Fecha__30C33EC3]  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[cte_prospecto] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[cte_prospecto] ADD  DEFAULT ((0)) FOR [Activo]
GO
ALTER TABLE [dbo].[cte_prospecto] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[cte_vehiculo] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[cte_vehiculo] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[dat_suc] ADD  DEFAULT ((0)) FOR [eliminado]
GO
ALTER TABLE [dbo].[dms_catalogo] ADD  DEFAULT ((0)) FOR [Eliminado]
GO
ALTER TABLE [dbo].[dms_catalogo_detalle] ADD  DEFAULT ((0)) FOR [Eliminado]
GO
ALTER TABLE [dbo].[PaquetesHomologacionPrecio] ADD  DEFAULT (getdate()) FOR [Actualizacion]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [TieneMovimientos]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Logico1]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Logico2]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Logico3]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Logico4]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Logico5]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Interfase]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [IntercambioDirecto]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ('ALTA') FOR [Estatus]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [BonoLealtad]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [NoLlamar]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [ValidarVIN]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Blindado]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [CCNoLocalizable]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [VehiculoDemo]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [AfectoImpuesto]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [Cheque]
GO
ALTER TABLE [dbo].[VIN] ADD  DEFAULT ((0)) FOR [TieneServicio]
GO
ALTER TABLE [dbo].[cat_sistema_detalle]  WITH CHECK ADD  CONSTRAINT [fk_id_cat_sistema] FOREIGN KEY([id_cat_sistema])
REFERENCES [dbo].[cat_sistema] ([id])
GO
ALTER TABLE [dbo].[cat_sistema_detalle] CHECK CONSTRAINT [fk_id_cat_sistema]
GO
ALTER TABLE [dbo].[cte_evento]  WITH CHECK ADD  CONSTRAINT [pk_evento_agente] FOREIGN KEY([idAgenteAsignado])
REFERENCES [dbo].[ctrl_agente] ([id])
GO
ALTER TABLE [dbo].[cte_evento] CHECK CONSTRAINT [pk_evento_agente]
GO
ALTER TABLE [dbo].[cte_evento]  WITH CHECK ADD  CONSTRAINT [pk_evento_tipo] FOREIGN KEY([TipoEvento])
REFERENCES [dbo].[cte_tipo_evento] ([Evento])
GO
ALTER TABLE [dbo].[cte_evento] CHECK CONSTRAINT [pk_evento_tipo]
GO
ALTER TABLE [dbo].[cte_evento]  WITH CHECK ADD  CONSTRAINT [pk_evento_us] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[ctrl_usuario] ([id])
GO
ALTER TABLE [dbo].[cte_evento] CHECK CONSTRAINT [pk_evento_us]
GO
ALTER TABLE [dbo].[cte_evento]  WITH CHECK ADD  CONSTRAINT [pk_evento_vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[cte_vehiculo] ([id])
GO
ALTER TABLE [dbo].[cte_evento] CHECK CONSTRAINT [pk_evento_vehiculo]
GO
ALTER TABLE [dbo].[cte_evento_procesos]  WITH CHECK ADD  CONSTRAINT [pk_procesos_evento] FOREIGN KEY([idEvento])
REFERENCES [dbo].[cte_evento] ([id])
GO
ALTER TABLE [dbo].[cte_evento_procesos] CHECK CONSTRAINT [pk_procesos_evento]
GO
ALTER TABLE [dbo].[cte_propietario]  WITH CHECK ADD  CONSTRAINT [pk_propietario_cte] FOREIGN KEY([idProspecto])
REFERENCES [dbo].[cte_prospecto] ([id])
GO
ALTER TABLE [dbo].[cte_propietario] CHECK CONSTRAINT [pk_propietario_cte]
GO
ALTER TABLE [dbo].[cte_propietario]  WITH CHECK ADD  CONSTRAINT [pk_propietario_vehiculo] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[cte_vehiculo] ([id])
GO
ALTER TABLE [dbo].[cte_propietario] CHECK CONSTRAINT [pk_propietario_vehiculo]
GO
ALTER TABLE [dbo].[cte_prosp_contacto]  WITH CHECK ADD  CONSTRAINT [pk_contacto_cte] FOREIGN KEY([idProspecto])
REFERENCES [dbo].[cte_prospecto] ([id])
GO
ALTER TABLE [dbo].[cte_prosp_contacto] CHECK CONSTRAINT [pk_contacto_cte]
GO
ALTER TABLE [dbo].[cte_prospecto]  WITH CHECK ADD  CONSTRAINT [pk_cte_idSuc] FOREIGN KEY([idSuc])
REFERENCES [dbo].[dat_suc] ([id])
GO
ALTER TABLE [dbo].[cte_prospecto] CHECK CONSTRAINT [pk_cte_idSuc]
GO
ALTER TABLE [dbo].[cte_prospecto]  WITH CHECK ADD  CONSTRAINT [pk_cte_idUs] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[ctrl_usuario] ([id])
GO
ALTER TABLE [dbo].[cte_prospecto] CHECK CONSTRAINT [pk_cte_idUs]
GO
ALTER TABLE [dbo].[cte_vehiculo]  WITH CHECK ADD  CONSTRAINT [pk_vehiculo_us] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[ctrl_usuario] ([id])
GO
ALTER TABLE [dbo].[cte_vehiculo] CHECK CONSTRAINT [pk_vehiculo_us]
GO
ALTER TABLE [dbo].[ctrl_agente_horario]  WITH CHECK ADD  CONSTRAINT [pk_horario_agente] FOREIGN KEY([idAgente])
REFERENCES [dbo].[ctrl_agente] ([id])
GO
ALTER TABLE [dbo].[ctrl_agente_horario] CHECK CONSTRAINT [pk_horario_agente]
GO
ALTER TABLE [dbo].[ctrl_permiso]  WITH CHECK ADD  CONSTRAINT [fk_ctrl_permiso_ctrl_menu_1] FOREIGN KEY([id_config_menu])
REFERENCES [dbo].[ctrl_menu] ([id])
GO
ALTER TABLE [dbo].[ctrl_permiso] CHECK CONSTRAINT [fk_ctrl_permiso_ctrl_menu_1]
GO
ALTER TABLE [dbo].[ctrl_permiso]  WITH CHECK ADD  CONSTRAINT [fk_ctrl_permiso_ctrl_nivel_us_1] FOREIGN KEY([id_conf_nivel_us])
REFERENCES [dbo].[ctrl_nivel_us] ([id])
GO
ALTER TABLE [dbo].[ctrl_permiso] CHECK CONSTRAINT [fk_ctrl_permiso_ctrl_nivel_us_1]
GO
ALTER TABLE [dbo].[ctrl_usuario]  WITH CHECK ADD  CONSTRAINT [fk_ctrl_usuario_cat_suc_1] FOREIGN KEY([id_suc])
REFERENCES [dbo].[dat_suc] ([id])
GO
ALTER TABLE [dbo].[ctrl_usuario] CHECK CONSTRAINT [fk_ctrl_usuario_cat_suc_1]
GO
ALTER TABLE [dbo].[ctrl_usuario]  WITH CHECK ADD  CONSTRAINT [fk_ctrl_usuario_ctrl_nivel_us_1] FOREIGN KEY([id_nivel])
REFERENCES [dbo].[ctrl_nivel_us] ([id])
GO
ALTER TABLE [dbo].[ctrl_usuario] CHECK CONSTRAINT [fk_ctrl_usuario_ctrl_nivel_us_1]
GO
ALTER TABLE [dbo].[dat_ag]  WITH CHECK ADD  CONSTRAINT [fk_cat_ag_cat_div_1] FOREIGN KEY([id_div])
REFERENCES [dbo].[dat_div] ([id])
GO
ALTER TABLE [dbo].[dat_ag] CHECK CONSTRAINT [fk_cat_ag_cat_div_1]
GO
ALTER TABLE [dbo].[dat_div]  WITH CHECK ADD  CONSTRAINT [fk_cat_div_cat_corp_1] FOREIGN KEY([id_corp])
REFERENCES [dbo].[dat_corp] ([id])
GO
ALTER TABLE [dbo].[dat_div] CHECK CONSTRAINT [fk_cat_div_cat_corp_1]
GO
ALTER TABLE [dbo].[dat_suc]  WITH CHECK ADD  CONSTRAINT [fk_cat_suc_cat_ag_1] FOREIGN KEY([id_ag])
REFERENCES [dbo].[dat_ag] ([id])
GO
ALTER TABLE [dbo].[dat_suc] CHECK CONSTRAINT [fk_cat_suc_cat_ag_1]
GO
ALTER TABLE [dbo].[dms_catalogo_detalle]  WITH CHECK ADD  CONSTRAINT [fk_id_catalogo] FOREIGN KEY([id_catalogo])
REFERENCES [dbo].[dms_catalogo] ([id])
GO
ALTER TABLE [dbo].[dms_catalogo_detalle] CHECK CONSTRAINT [fk_id_catalogo]
GO
ALTER TABLE [dbo].[ServicioPaquetesD]  WITH CHECK ADD  CONSTRAINT [fk_ServPaq_ServPaqD] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[ServicioPaquetes] ([Id])
GO
ALTER TABLE [dbo].[ServicioPaquetesD] CHECK CONSTRAINT [fk_ServPaq_ServPaqD]
GO
ALTER TABLE [dbo].[ServicioPaquetesR]  WITH CHECK ADD  CONSTRAINT [fk_ServPaqR] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[ServicioPaquetes] ([Id])
GO
ALTER TABLE [dbo].[ServicioPaquetesR] CHECK CONSTRAINT [fk_ServPaqR]
GO
ALTER TABLE [dbo].[VehiculosPaquetes]  WITH CHECK ADD  CONSTRAINT [fk_ServPaq_VehiculoPaq] FOREIGN KEY([IdPaquete])
REFERENCES [dbo].[ServicioPaquetes] ([Id])
GO
ALTER TABLE [dbo].[VehiculosPaquetes] CHECK CONSTRAINT [fk_ServPaq_VehiculoPaq]
GO
SET ANSI_NULLS OFF
GO