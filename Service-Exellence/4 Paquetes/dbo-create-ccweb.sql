/*
 Navicat Premium Data Transfer

 Source Server         : FameMorelia
 Source Server Type    : SQL Server
 Source Server Version : 14002027
 Source Host           : 192.168.9.200:1433
 Source Catalog        : CCWeb
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14002027
 File Encoding         : 65001

 Date: 26/12/2020 11:29:06
*/


-- ----------------------------
-- Table structure for CargaPcksTemp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CargaPcksTemp]') AND type IN ('U'))
	DROP TABLE [dbo].[CargaPcksTemp]
GO

CREATE TABLE [dbo].[CargaPcksTemp] (
  [vehiculo] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [clave_pck] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [pck] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [parte] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [cantidad] float(53)  NULL,
  [precio] money  NULL
)
GO

ALTER TABLE [dbo].[CargaPcksTemp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CargaPcksTemp
-- ----------------------------

-- ----------------------------
-- Table structure for cat_codigo_postal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cat_codigo_postal]') AND type IN ('U'))
	DROP TABLE [dbo].[cat_codigo_postal]
GO

CREATE TABLE [dbo].[cat_codigo_postal] (
  [CP] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [Asentamiento] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoAsentamiento] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Municipio] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Ciudad] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Zona] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [CveEstado] int  NULL,
  [CveTipoAsentamiento] int  NULL,
  [CveMunicipio] int  NULL,
  [CveCiudad] int  NULL,
  [Pais] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[cat_codigo_postal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cat_codigo_postal
-- ----------------------------

-- ----------------------------
-- Table structure for cat_sistema
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cat_sistema]') AND type IN ('U'))
	DROP TABLE [dbo].[cat_sistema]
GO

CREATE TABLE [dbo].[cat_sistema] (
  [id] int  NOT NULL,
  [Nombre] varchar(15) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Alias] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[cat_sistema] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cat_sistema
-- ----------------------------
INSERT INTO [dbo].[cat_sistema] ([id], [Nombre], [Alias], [FechaActualizacion], [eliminado]) VALUES (N'1', N'TipoPaquete', N'Tipo Paquete', N'2015-10-02 11:55:00', N'0')
GO


-- ----------------------------
-- Table structure for cat_sistema_detalle
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cat_sistema_detalle]') AND type IN ('U'))
	DROP TABLE [dbo].[cat_sistema_detalle]
GO

CREATE TABLE [dbo].[cat_sistema_detalle] (
  [id] int  NOT NULL,
  [id_cat_sistema] int  NOT NULL,
  [Descripcion] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Alias] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[cat_sistema_detalle] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cat_sistema_detalle
-- ----------------------------
INSERT INTO [dbo].[cat_sistema_detalle] ([id], [id_cat_sistema], [Descripcion], [Alias], [FechaActualizacion], [eliminado]) VALUES (N'1', N'1', N'Campania', N'Campaña', N'2015-10-02 12:17:00', N'0')
GO

INSERT INTO [dbo].[cat_sistema_detalle] ([id], [id_cat_sistema], [Descripcion], [Alias], [FechaActualizacion], [eliminado]) VALUES (N'2', N'1', N'Mantenimiento', N'Mantenimiento', N'2015-10-02 12:19:00', N'0')
GO

INSERT INTO [dbo].[cat_sistema_detalle] ([id], [id_cat_sistema], [Descripcion], [Alias], [FechaActualizacion], [eliminado]) VALUES (N'3', N'1', N'OperacionFrecuente', N'Operacion Frecuente', N'2015-10-02 12:50:00', N'0')
GO

INSERT INTO [dbo].[cat_sistema_detalle] ([id], [id_cat_sistema], [Descripcion], [Alias], [FechaActualizacion], [eliminado]) VALUES (N'4', N'1', N'Promocion', N'Promocion', N'2015-10-02 12:50:00', N'0')
GO


-- ----------------------------
-- Table structure for cte_evento
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_evento]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_evento]
GO

CREATE TABLE [dbo].[cte_evento] (
  [id] int  NOT NULL,
  [idVehiculo] int  NULL,
  [TipoEvento] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [idUsuario] int  NULL,
  [idAgenteAsignado] int  NULL,
  [Estatus] int  NULL,
  [FechaEvento] smalldatetime  NULL,
  [FechaDebeTerminar] smalldatetime  NULL,
  [FechaEntrega] smalldatetime  NULL,
  [FechaRealizado] smalldatetime  NULL,
  [idRegistro] int  NULL,
  [FechaRegistro] smalldatetime  NULL,
  [FechaActualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[cte_evento] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_evento
-- ----------------------------

-- ----------------------------
-- Table structure for cte_evento_procesos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_evento_procesos]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_evento_procesos]
GO

CREATE TABLE [dbo].[cte_evento_procesos] (
  [idEvento] int  NULL,
  [NumProceso] int  NULL,
  [Proceso] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [idPaquete] int  NULL
)
GO

ALTER TABLE [dbo].[cte_evento_procesos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_evento_procesos
-- ----------------------------

-- ----------------------------
-- Table structure for cte_propietario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_propietario]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_propietario]
GO

CREATE TABLE [dbo].[cte_propietario] (
  [idProspecto] int  NOT NULL,
  [idVehiculo] int  NOT NULL,
  [Principal] bit  NULL,
  [Activo] bit  NULL,
  [FechaActualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[cte_propietario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_propietario
-- ----------------------------

-- ----------------------------
-- Table structure for cte_prosp_contacto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_prosp_contacto]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_prosp_contacto]
GO

CREATE TABLE [dbo].[cte_prosp_contacto] (
  [idProspecto] int  NOT NULL,
  [TipoContacto] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Dato] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Lada] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [Ext] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [Activo] bit  NULL,
  [FechaActualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[cte_prosp_contacto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_prosp_contacto
-- ----------------------------

-- ----------------------------
-- Table structure for cte_prospecto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_prospecto]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_prospecto]
GO

CREATE TABLE [dbo].[cte_prospecto] (
  [id] int  NOT NULL,
  [idSuc] int  NULL,
  [idUsuario] int  NULL,
  [Nombre] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [ApPaterno] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [ApMaterno] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Celular] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [LadaTel] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [Telefono] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [LadaTO] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [TelOficina] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [Ext] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [Email] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [idRegistro] int  NULL,
  [FechaRegistro] smalldatetime  NULL,
  [Activo] bit  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [TipoPersona] bit  NULL,
  [RFC] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Direccion] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [Numero] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [NumInt] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [CP] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [Colonia] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Delegacion] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estado] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Pais] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[cte_prospecto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_prospecto
-- ----------------------------

-- ----------------------------
-- Table structure for cte_tipo_evento
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_tipo_evento]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_tipo_evento]
GO

CREATE TABLE [dbo].[cte_tipo_evento] (
  [Evento] varchar(30) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Descripcion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Tipo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Activo] bit  NULL
)
GO

ALTER TABLE [dbo].[cte_tipo_evento] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_tipo_evento
-- ----------------------------

-- ----------------------------
-- Table structure for cte_vehiculo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cte_vehiculo]') AND type IN ('U'))
	DROP TABLE [dbo].[cte_vehiculo]
GO

CREATE TABLE [dbo].[cte_vehiculo] (
  [id] int  NOT NULL,
  [idSuc] int  NULL,
  [idUsuario] int  NULL,
  [VIN] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Marca] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Modelo] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Version] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Anio] int  NULL,
  [Estatus] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoOperacion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [idRegistro] int  NULL,
  [FechaRegistro] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[cte_vehiculo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cte_vehiculo
-- ----------------------------

-- ----------------------------
-- Table structure for ctrl_agente
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_agente]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_agente]
GO

CREATE TABLE [dbo].[ctrl_agente] (
  [id] int  NOT NULL,
  [idSuc] int  NULL,
  [Usuario] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Nombre] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [ApPaterno] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ApMaterno] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoAgente] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Activo] bit  NULL
)
GO

ALTER TABLE [dbo].[ctrl_agente] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_agente
-- ----------------------------

-- ----------------------------
-- Table structure for ctrl_agente_horario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_agente_horario]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_agente_horario]
GO

CREATE TABLE [dbo].[ctrl_agente_horario] (
  [idAgente] int  NULL,
  [Horario] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ctrl_agente_horario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_agente_horario
-- ----------------------------

-- ----------------------------
-- Table structure for ctrl_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_menu]
GO

CREATE TABLE [dbo].[ctrl_menu] (
  [id] int  NOT NULL,
  [menu_texto] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [url] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [icono] varchar(40) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [iconoMenuLateral] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ctrl_menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_menu
-- ----------------------------
INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'1', N'Home', N'index.php/welcome', N'icon-actividad_libre',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'gn-icon fa-home')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'2', N'Crea Paquete', N'index.php/Paquetes/Paquetes/PaquetesCtrl', N'icon-mas-black',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon gn-icon-archive')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'3', N'Paquetes', N'index.php/Paquetes/Paquetes/PaquetesGeneral', N'icon-admin',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'gn-icon gn-icon-cog')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'4', N'Asigna Paquete', N'index.php/Paquetes/Paquetes/AsignaPaquetes', N'icon-nuevo-producto',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon gn-icon-download')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'5', N'CCWeb', N'index.php/MenuL/ListadoProspectos', NULL, CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon fa-address-book-o')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'6', N'Ficha Prospecto', N'index.php/MenuL/FichaProspecto', NULL,CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon fa-address-card-o')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'7', N'Admon CCWeb', N'index.php/MenuL/AdmonProspectos', NULL,CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon fa-cogs')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'8', N'Consulta de Facturas', N'index.php/MenuL/ConsultaFacturas', NULL,CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon gn-icon-archive')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'9', N'Encuestas', N'index.php/Encuestas/CtrlEncuestas', NULL,CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon fa-pencil-square-o')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'10', N'Ley Antilavado', N'index.php/Antilavado/CtrlAntilavado/ConsultaRegistros', NULL, CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon fa-address-card-o')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'11', N'Generar Archivo Pkts', N'index.php/Paquetes/Paquetes/GenerarArchivoPkts', NULL,CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'gn-icon gn-icon-archive')
GO

INSERT INTO [dbo].[ctrl_menu] ([id], [menu_texto], [url], [icono], [fecha_creacion], [fecha_actualizacion], [eliminado], [iconoMenuLateral]) VALUES (N'12', N'Ficha Prospecto T', N'index.php/MenuL/FichaProspectoT', N'icon-admin', CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'1', N'gn-icon gn-icon-archive')
GO


-- ----------------------------
-- Table structure for ctrl_nivel_us
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_nivel_us]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_nivel_us]
GO

CREATE TABLE [dbo].[ctrl_nivel_us] (
  [id] int  NOT NULL,
  [nivel] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[ctrl_nivel_us] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_nivel_us
-- ----------------------------
INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'1', N'Super Usuario',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'2', N'Paquetes',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'3', N'CCWeb',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'4', N'Facturas',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'5', N'Encuestas',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'6', N'Antilavado',CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[ctrl_nivel_us] ([id], [nivel], [fecha_actualizacion], [eliminado]) VALUES (N'7', N'Admin Paquetes',CAST(0xA6330200 AS SmallDateTime), N'0')
GO


-- ----------------------------
-- Table structure for ctrl_permiso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_permiso]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_permiso]
GO

CREATE TABLE [dbo].[ctrl_permiso] (
  [id] int  NOT NULL,
  [id_config_menu] int  NULL,
  [id_conf_nivel_us] int  NULL,
  [permiso] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [primero] bit  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [orden] int  NULL
)
GO

ALTER TABLE [dbo].[ctrl_permiso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_permiso
-- ----------------------------
INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'1', N'1', N'1', N'Home', N'0', CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'2', N'2', N'1', N'Crea Paquete', N'0', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'3', N'3', N'1', N'Paquetes', N'1', CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'3')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'4', N'4', N'1', N'Asigna Paquete', N'0', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'5')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'5', N'5', N'1', N'CCWeb', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'6')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'6', N'6', N'1', N'Ficha Prospecto', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'7')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'7', N'7', N'1', N'Admon Prospectos', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'8')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'8', N'1', N'2', N'Home', N'1',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'9', N'2', N'2', N'Crea Paquete', N'0', CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'10', N'3', N'2', N'Paquetes', N'0', CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'3')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'11', N'1', N'3', N'Home', N'1',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'12', N'5', N'3', N'Listado Prospectos', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'13', N'6', N'3', N'Ficha Prospecto', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'3')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'14', N'7', N'3', N'Admon Prospectos', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'4')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'15', N'8', N'1', N'Consulta Facturas', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'9')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'16', N'1', N'4', N'Home', N'1', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'17', N'8', N'4', N'Consulta Facturas', N'0', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'18', N'9', N'1', N'Encuestas', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'10')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'19', N'1', N'5', N'Home', N'1', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'20', N'9', N'5', N'Encuestas', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'21', N'10', N'1', N'Ley Antilavado', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'11')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'22', N'1', N'6', N'Home', N'1', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'23', N'10', N'6', N'Ley Antilavado', N'0', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'24', N'11', N'1', N'Generar Archivo Pkts', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'4')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'25', N'1', N'7', N'Home', N'1', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'1')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'26', N'3', N'7', N'Paquetes', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'2')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'27', N'11', N'7', N'Generar Archivo Pkts', N'0',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'3')
GO

INSERT INTO [dbo].[ctrl_permiso] ([id], [id_config_menu], [id_conf_nivel_us], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado], [orden]) VALUES (N'28', N'11', N'2', N'Asigna Paquete', N'0',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'4')
GO


-- ----------------------------
-- Table structure for ctrl_sessions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_sessions]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_sessions]
GO

CREATE TABLE [dbo].[ctrl_sessions] (
  [session_id] nvarchar(40) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [ip_address] nvarchar(16) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [user_agent] nvarchar(120) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [last_activity] int  NOT NULL,
  [user_data] ntext COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ctrl_sessions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for ctrl_usuario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ctrl_usuario]') AND type IN ('U'))
	DROP TABLE [dbo].[ctrl_usuario]
GO

CREATE TABLE [dbo].[ctrl_usuario] (
  [id] int  NOT NULL,
  [id_suc] int  NOT NULL,
  [usuario] varchar(55) COLLATE Modern_Spanish_CI_AS  NULL,
  [password] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [nombre] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [apellido_paterno] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [apellido_materno] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [email] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [telefono] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [celular] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [id_nivel] int  NULL,
  [id_acceso] int  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [f_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [nombre_dms] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Contrasena_dms] varchar(32) COLLATE Modern_Spanish_CI_AS  NULL,
  [UltimoCambio_dms] datetime  NULL,
  [vf_perfil] varbinary(max)  NULL,
  [vcf_perfil] varchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[ctrl_usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ctrl_usuario
-- ----------------------------
INSERT INTO [dbo].[ctrl_usuario] ([id], [id_suc], [usuario], [password], [nombre], [apellido_paterno], [apellido_materno], [email], [telefono], [celular], [id_nivel], [id_acceso], [fecha_creacion], [f_actualizacion], [eliminado], [nombre_dms], [Contrasena_dms], [UltimoCambio_dms], [vf_perfil], [vcf_perfil]) VALUES (N'1', N'1', N'rortiz', N'b90e5422641334778ad1bd1c249a7941e96dd455', N'Master', N'CCWeb', N'IS', N'rortiz@intelisis.com', N'3332211', N'4431114071', N'1', NULL, CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'', N'', N'1900-01-01 00:00:00.000', NULL, N'data:image/jpg;base64,/9j/4gIcSUNDX1BST0ZJTEUAAQEAAAIMbGNtcwIQAABtbnRyUkdCIFhZWiAH3AABABkAAwApADlhY3NwQVBQTAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLWxjbXMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAApkZXNjAAAA/AAAAF5jcHJ0AAABXAAAAAt3dHB0AAABaAAAABRia3B0AAABfAAAABRyWFlaAAABkAAAABRnWFlaAAABpAAAABRiWFlaAAABuAAAABRyVFJDAAABzAAAAEBnVFJDAAABzAAAAEBiVFJDAAABzAAAAEBkZXNjAAAAAAAAAANjMgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB0ZXh0AAAAAEZCAABYWVogAAAAAAAA9tYAAQAAAADTLVhZWiAAAAAAAAADFgAAAzMAAAKkWFlaIAAAAAAAAG+iAAA49QAAA5BYWVogAAAAAAAAYpkAALeFAAAY2lhZWiAAAAAAAAAkoAAAD4QAALbPY3VydgAAAAAAAAAaAAAAywHJA2MFkghrC/YQPxVRGzQh8SmQMhg7kkYFUXdd7WtwegWJsZp8rGm/fdPD6TD////gABBKRklGAAEBAAABAAEAAP/tAIRQaG90b3Nob3AgMy4wADhCSU0EBAAAAAAAaBwCZwAUV1Z5R2lYTnlSWUZxWm5HM1RBdWscAigASkZCTUQwZjAwMDc4OTAzMDAwMGQ4MTUwMDAwMTgzNTAwMDAzYTM1MDAwMDdmMzUwMDAwYWQzZjAwMDAwMzZjMDAwMGI1NmUwMDAw/9sAQwALCAgKCAcLCgkKDQwLDREcEhEPDxEiGRoUHCkkKyooJCcnLTJANy0wPTAnJzhMOT1DRUhJSCs2T1VORlRAR0hF/9sAQwEMDQ0RDxEhEhIhRS4nLkVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVFRUVF/8IAEQgC7gH0AwEiAAIRAQMRAf/EABsAAAMBAQEBAQAAAAAAAAAAAAECAwAEBQYH/8QAFAEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEAMQAAABkeLHdLnYYYGyYfIB9PD5AOUxTTBUyYfTJQzJXIw4ADsAqZkOSqGS0xl2IIQBSAen5npHq14sdg5HLIABDAXzqxEZWPUdHJ8nXykfb8P3Dvwx5WXDvNhlwMAoRsbbABBiMNlISMFkIwAHpNhypGC4Mm5yLzYXTcabRJkYUEDd/N3nZLiid1OHsKmrHFxV5B5tEDox6lJVJ8vXzHL7fieydm2PNxICAOApsFGyEfKBlwNhhiqlNPFChHMiWMWLmTDZQDkvzFJ05wUm4JPIw2FK1Otz1HnW7GOelrFOsXPnuD6HxTkh2cxMgnp2jcXm6uc4vV8v1jv3lY1JuZXwgKihlNlI2fCB1FxABsDYFMhGGIaJQO2CMDmTUBz25x3UCBpmxma8Og7uzj7CjBjUQnX08tSnien5hw8nbxnOQ56NpXF5+mBw93Fc9XXx5LKRzPDLlGKMSDYoQQ5cBHUxOJq+Js2FZmFYsKTibMpzPKxzRcFouoqZRkZBrwsd3XxdR1MjmGuLyd/MR59MHH1cItodp11nQ3P0QOHq5u09DbHOaElrAktUFzYXUxIVBPUBPUxMVArHAxQczxVokqZAp5/TxlFrznOdjK8AbYGBDeFzr6eXoOqkala8czu5ZqSgYDcfRyj9vF3nTSbghaBxel5vonXkw2wDtgKVMRg4AIwGykOwCNjZiJmUAwMVY2wI894l+WkQZ5iJiBCDEEN4VOu/NY6a89CjIwsbcpODRJyZR+/zvQOqk3Bz35zj9Dzu868MUVgDLgqUCMQE4XHAOAxXDMhHMyFGUCnAYEOzEI9fIQ2AEaIFKG2xtiaiOXvzWL25XO2vC508qwE5K85lIG7uDtOuknDz2gcffwdx1bYqAohmShQlChGGIAyBGwoZBsuGyk2wDhgkEObmDzNIXZQweIRsbbG2I1EcY7BUIOJgogxhsYbB6+XpOt40DCsTl7uDuOrDHQK45h0qQ18RNQR1AIHxPVBJ3JPPhNQk9RiRq5zJ6fGcke/zhEwFJUkrKDbGxBiGHotTZsSl0cwu2NsAjY22HvCx0PGppUkc/ZxdZ17Y79sZWANsLmUAYA2w22NiAFiKGwrb0Q+06ifOen88Dg6JEkqhOZQA2NgQhsKzOGiUG2YlydPMLtjbY22Nth7c/SNRHDN5nP18fYdefHVpgrpEppgpp4cJg5cUysHDDZQNlYp9N4nvDczcZ5Pm6AUyhgcRFyQHZjjPQSD2JJ6OSerktcnLLuU8uXr85wCswbY22NeFTpxUM2mS7eLtO7Lhg2AWwufE8+J58IWJmDCK6ihgKwofQdyoT+WpxCh3IV+h98+S7PpyfOt9Bj5rz/tUPz5fuPLPnh6EDne9CB6MQ18R3QxzHpJw+d7sz5lfW84jiDOmO5JuaZmL3cHad+2KauJmmEzqTZsJqYnmYmXxI0JIWBPu5vWPQ+c9L58jmsH66vWY7G2xtsbbAU4lDrJ5E/ZU8Qe3jxH9jHl09EnCe0HDH0kPF8v6nmPh+X6r5848yhtBwoyg7OfoPQzYvpkqEA+UD5CUyEJRwjYOGNlxT2vE9w4PG9DzBfsvD+uCdjbYy5Q5QPp4cKpQyJTIRsAErhsoGAUKZQIVI+V68T4WP1HzIh2N1cvtHCrE7smKlcOUw2QjFMVC4Z5MUMsUCYfITo9jyuo8OBsfYeijm2xgUApUGyhAUYIChkw+2Ntg5cOEA6qBkAMuQMyhL5n6bgPlQ8yvt+P7R5geZ3YYfbBxwMCYgm2wBsHHGxwDgdXCOYb0/G9o+zdWNsAKVApUylQI0zAAZoksYktp4cKBwoGUAIUGXKZMgOesD53j9PzBvZ8j0ScLxO7Tx0bYx2Adg7YIGARhsqlTHFoFTklftPL9Hyqn6e/F1hGUC5TKAYBAz0whcNlw+TFDMlMuCMArgZQDKFMmQEKQPL8r0vOG9jxvZObnrA7smO8DBwwcFGy4bLh8uGAAVOAtLDeb6XiEGVj6v6b4b7YoMoqmZlCmQIFAA4YJUhwA+QjlCNlAQABcoFwFUzFhTnPL4r84fS8zqHjWJ2Y47McA4iq6i5gAnGIIcMHDB7/P9k4/n/T8kVwxX7n4b7Q9WQcnPokRndCKWUlnAobC5sLiAA4xXDAYwymXKZCgJshPg7OE86fTygtGpeHRzHbkx3NMlcuCoUZAo2TFMhHyYpkJX6bwvpD5HzPf+fGxYb7D5T6U9rokQCjEE6VOVOqRzpeZMOBA4FzKBXAgZTLgFQArgKCgqPElwdXOc/F6XnidXN6JPm6eY6M2OnFRwmHUYw2MykO2NtgsKHteoCef8l9n4x4bFzo+q+X+qPRsCbbG2wkrQJTZAKyg2wuOFDARaIIjzAhQKhQqENB4E2vA5fO6mI+uQefz9HOWyY9daAkLEgbgiOgETUEtXEtbE/U4/pCsWkT5ejkPE3oIcv2Pzn1J07Y22MDMXmPOMikO2NtjbEAbCJWZGVZCTKgQoZcguHQSnehxdKsaFYHDydfINhj3MuDhg4YI2NsDbELa53erpCzCGlQEo9Cm+i8/0w4E22F5q8YkxgnE2xNjjHY2ygm0BYvEVCgqlDIcUzqEnEyANyXkcPH3cRtsewUw+QhwARgHDDFWH+i8z6AlzU5wKVHGAFZzr9Tn6DZQFWgR53UVmcQvhMwBtjAAy6ZotMSTyFRlFQqCiuMuBUYEw0zTeRzcndzC6mOgqxipGwxsMEhhqz9Y9dqQIxogqtgYgDp641zgbATktIjQ1FLKKCADKZcpkymQqCdJkp0mIjzFVgFTMuA4QQCVJirSZzjoic+fBNcS1cTNCSFsSajG+s8f3QQpEQEC7KBSC3tLU2wMgmSXooSbTMpUUFQKVFRgKHxNKTEm0wSZATpMUPApM4o4cCNMdc4sOpifF3cRDbFtMFTNh8rB2w7T6T3ukoTm0jKFHVcbvX0hjsbbAAQM3cmGmBMAKyCzoSTVJMUQSdOcjDIZCAzohJHACGKPJwAqa03KNSZzcvZxkNsJsA5MWpKg5xD7Hk/TF5vESLQGVVG7I+yUaKnTuNjq03NiDIwJpSYs2UVaElSjCZ4mnpi8nRyHLsDFWNooOoxsMWZGAjA3dyd5o9ETm5O/hOfHCLgYkhYEZpudv03j+uLz15BImYeqftjEACiZpFBGXHVbgB6o8YHsDxyes3lMelvOY9Hecp3y5CdEgonJ1chzI6GKzOYToFiQkYes7CZqlajBjRBODs5SGOIEkxGGGxnTrPorPIhyV5QNP2y9Fxk0wzyGTKZlIy5RYVgSk8QKxIo8gBUHCArXlx6NfJU9mXJ1iwtAnZai5gIQSl5OHujcmZkyrhOfogQ2wMCYjBKkPt+N9UV5OnzSUWU7vWm5lyGmEMoUIXDkECtISFechA8R6Tvjlh0QJI6AUgw2MAAvLHqLzdAaTqKtEJ7OXSfWdJUibATbCytI58cRGISCZlY9H6HjYlwPAHoeZ9CV2AJGAUAMNgMGDsppNMnzWgcrUsVi/OSjSQs2UAIBtgIwBtivZwd41JVMlFI0Sw11YvmBMMojK4kqIc+OOXYjEEPbyfSl/N6uIlCkDr9zg9A035xIiZXTI5XDFGChmaZkLGkjOmNJpCSdBAQAHADAUFQAgPbw9J1urDI4E6QRmDHQNhJ0QVsCWwE1MebthytDu+h4+k5OO/MTi3Ye2OqBz8tuUlMoVaTj5QUMmGTKLNpioyGBQWbzER0FBBtiAECI6GBBnQnp0h0jOjDLRCjLQcpQkGQC6hGZ8wbNiZpjdnL7x6XPbkOOFuQh9T8v9uOrKcnm+rA8ZfR4hGRhgMMyEKFRZsgoKABUVGQRWUXbGzERXURXBPOBcQdfZ5/oDPNyoILE4FJuabzNFOYVOmBLHGII31HzX1gOPugedwet5J6X0vz3vDzeROFYiBlOTn9OZwaiAIIFKiIyCqyGVlFR0EVgAlhcyiq7EtQE0uDnXoUHo8XaOUoVUg6SrkuiNBOGkyDVBN2BLJiTKx3fSeP7IJ05xPJ9Pzj0O/i6DqbiQ64zcUlRlDA5eknm7t5SaVQilZkwygVgKjgnmIDSxyH0uk8qvo44qdMyEroc0+iRKqMM82LEVGdEDyo4wVRkmTTVyWpiFZVPp+5cLytEHB2+eel08nWBSpOVZBtyIekOC50mJK5WObn9GR586yEVgIC5HdvUef09LiMzkxdQGaDiMjolCZSGmB5MWUE6LQwqlhGZRRNgU53IOliWpjm9Hzfpj0eLq8oj0eR6ZTy7+ce53eZ6RlIJyrMklJi4KNTnmepTx+47dLDcnQDjbrBN2YUtQlbIFBhFopNKSEjSROTyFk0gX5eg7irGvNQGLlFVyLz6CFjEVlQGhjs+p+U+gH8rt8w4/Z+f+jOLy/T8c931PI9YZSBJ0mSnWRNGQVShpsp6PR4foF3gx0OjmZYnUFoKXwmdREpISVJE4ViSlSRObyB08nadZXDouCwoKUYmpBaRgPHIJmwfe8LuPU8z1/MPM+g8H2zzvM9Hzj2vX8X2CgIEnSZOVokkpIRHQRWQC6Z6NPJue8/Ko/UnSZiQBwIrqTlWRKNZEY2gSlSIk3mD0PO9MrsBQpLPNxSqiGUi8lwIvIbLitJE+o4kJwe98/8ARHk+R7XjHqez43sFdsLOsicayJTohJHmKjKJOkiKPA9rv8X6Q6KLQJxMrgSdZE5ViSjWJKFokY2iTm8xvT4PQGUqTKMM+mUQISzMTWik1ZTZsKVB0eh5GPTiaHLF5Hr+v5fqj7YE6TJSrElOkyc3mKjILN5k41Q9T6DzfUKutAnECsBJUmSjaBKNYEo0iTjWIiMp1d0LmVlEMqF42mSWqCDOJO0gK0w5MKLYiXYl0Lju4ejsD63leqPhgIUJyrElKkyc6TFm6E0eQm1D6frh0lHDB2wFZBZvIlC3OThSJOLyJyeQu1zuLEVHY43axNb3ONfRQ4H6aHHSjnLQAjhjlxwMcDHGebHoev4fuDjYRHmTlSRKVJiTdBZvMSbzF6OfvPoumHSOwYAIAjTFk8SfPXnJwpEnGkhJshu7h9QoyMbZBayoPaVQMtCZQDKAKpQlqY4xsbKpTIQlSdP0HzvvltgLNkJxrIlOkySuhNHmJKkwer5XtHudEOgLAmVlElSIkaQJc9YE40iJNpiKyFO/i7B8rGzgWkqFGm5Ss6HOroZKTDOiA2x//8QALRAAAgEDAwMEAgIDAQEBAAAAAAECAxAREiAhBDAxEzJAQRQiM0IFI1AVJEP/2gAIAQEAAQUC1I1I1DfzGSPv6VvpiPu1Ej2JE/JH3KzJCKHiL7mfiMmxLh2Yxn1ek8HqHrHrnqpmq8pYG5SGmrR9y8DJC80vZdfFyZE90vHljFaVndFKGThJtH6mkSs2ORqJPNo+6NmSP7UhyS+eyoxDPtWlaV4IT0kqjMiIsiSgVbOP62j5jZkj+1ISUvh5M9yT5HsdpWRFEkKLEmm8yIwIRHHivA0kldeY2ZI/vSPV9P5ObZ2SYvd9sjZ3l5IkDBpMGCKI2qwynEaHZeY2ZIfuolTM5/NZMjyMkLwPmy8vyRIi2IQiS4qxw2idl5jZkh+6EtJR4p9pfDZUIriQ/KQ7q8SItsDWkSq5Kkhk7R8xsyQ/cuRJY343YMWwYtjty9y9rPv6v9WiRIi2a8JuUm5aVnIydoIjdj91JZq41HPYdsmTUajNsmduLYMWwYJcEuX9MXnNnb6tEiIV0jBPglZj8kBXkP3dOIwaTSaTBgwYMGkwaTSaTSaTBpMGDBjsSZBDGLwPdEQhWVnUSJTciVpWXmIryJeaXBl/LyZJPgXEGfZ9boiEK0pH7s9NjpDgfc/BEiK8iXmBn5tR8IftyYHwS3xEIRm2RscmO0naPmIrMkPzDz82oLlzfC5H2UIQr4GiStK68xFZkiXmHzqi4S0qQrPsIQhMQrMkSHdeYisyRLzT2ZMme9kyZ7DJHgzZ9lCtkUjWOY5EpbYivIl5p3Y/ksciT+BqNbNbNTM7oiuyRT82ltz8VvI7+SXxkIV2Mp+TA0YMGDBgx2cbMGDBgwSagZ4HZs8LuvsoQrsZDzfHbwJdnS2LparKvTyjOrDA7pcyeX2FsY+yhCuxkPPwsbaHS6yMIwTOplqq1Z5TJLBgfaWyQ+yrK7GQ+P01HXK3U1tEWx8knoEOz3pWWyQ+0tjGQF8VFKHpwJzOolzkc0jgchsZjdgwYMGDBg0jgOHZhsYynbJkyZMmTJkyZ7fSx1VTkrVFTjUlmeWzgbtpNJg0mgUDSaTBgwYMGDBg0mklRHBx3w83dqYu4t2TJk6OOKRVqKnGrWc3eFGdQh/i6jF/iT/y4H/mxJdA0T6eaHGURRMGk0mkwYMGDBg0mkdMqUcGNq83dqfxYx1NLTGUlFV6zrS8GBRc3Q/xpCnGC2uJOhCRPoCVCcDSYNJpMGDBpNJpNJgaKtEcdsXtp9/O7pI5qnVV9cjGClRn1E6HTQoLs4NJKjGQ+kgfiH40z8eZ+PM/GkfjCoRPSiekj0kOjElQRU6UqU9Lx2KYvBgxuxbBgwYMGLYMHSLEepnxNYmUqUq9ShRjRh3tKNJpNJpMbmidNMr9NknDSPdKOkpi8fDo/rS905PVN8nR9N6FP5TGM6jp1NTjpeyjDLr++medme+vMv1p1ZaaR0FH1KveyZM91jOqoa09kI6IVvNL4lPmpU9sp6mdHS9Lp/nMZ1lLTK0Fmf1WIfBzeh/L1UsUnyUI+pWX/AZXhrg7Uv5McViPxKM1B1qsqspcH+OWeq+Bn4DJHULFUXBCWpViIvh5yajyf41//T/wGM6u0SgsFYgasfCkTlwk8HQz0dUv+AxnVeBeaLK/mBlGDHZxs5ObeIwhqdZenQIy0yoVPUpdl/GYzqbwwVvMRePg/VFLT1M9c7f4ut2s/GZIr+bdPL9avlfDorNWvD0Jyv0M9HUL57JFV82ov96vlC8fB6aOX1suGMXinxLpZ64PY/ksZVlgx+1qfvqCF8Lp44pdY81R2gdGtNISGrYMGPjsk8DI+bQ99XyrrvohHTT6j+Ze52p+6nMgrNmDBgwY+MxlR5JrTStR/kqi8qy7/TQ1VWdZHTN8O1FfvSj+y4XLMXwND+M2TZFZdRZvSjiExfC6KHDK8NcJxxL+v10/E6XBFb2P4jGe5laWLU4a5Pgmfd8mTPbisunDRBkjqKOoaNOko/yUFnex/FYzGmM5aFoyRpuRCnoUiV9JpNJpNBoNBoNBoNBoNBoFA6Sj+4xkipHNVxajQ99Jb2xsz3GPeyEcuR6Y4EcJDJfBXJTjog2MZN8el+nk6aH++mtzY2N9xjHv8ntW2ZL4PS0stjszFpRKEf8AeltZJjfcYxj3xVlZmRjJfApw1zS0QbHu6VLdJkn3WMY+yrOzJeGPv9NS0Qkxvf09OS2ZGyTH3WMY9yHsd34YxRMmTJns9LR1zYx7oLVKnLKMmMngkx2x3GMfbY7MRIxl9yPLow9Omx2e2l76cNOxknbBjusfaVndtkhx0x7nR0syGPfSpqKuxnCPIl3mPc7LYzFpFOJPwZMmTJkzbJkTI8ujD06bHvp0nMSwruSHLIoij332VsYjA1qb4J+DSaTSaTSaTSaTSaTpKWZjHuSy4R0xu8mk0ngcu8xj2eNkdqRL9VGOmMifgyZ7PTw0U2Pf09PfqPJhdnGxk3sfgexXzZGNbkMmY7VGOuoMe6nQyJY3YNNn2s3kxvYx+Oy8mNKkMn4vkzu6KFmMeyglKS7r2JGLMYye1j2rYimv1J+GS8bUK6KMdFIYx3pUnUIxUUcnqSR60RST3YGmcnN8GLNmRsZPa5c6zUarrZFa39IZgl47PTx1VRjG70aWsXGxjMCnOIuoFWgzKe/N8mUcDQ8k9rnzqM7FshHSrSJcKfa6KPA2SY3alT9RpYV3uwNGuaPyZo/LPzIn5cD8umfl0z8ymfmUz8qmetBmpOzbJvI7zf6pGNqvTjzdkiXgwYMGDGyhDRSZJjYyEdcoRUVse9jGOz2ZMmTUxVpoXVMVWMx3mLY7RtjU/A7vyyXjsUIa6oyTHajT0R7jGPYx9mFbB5tIWx2iibwU1hO30rMl2eihachjOmp95jJMcsEORjH2ozcBSUkxbo8KK1SQz7Yhn0/G9LmlDRTkTYxLVKK0qz7TGSJM904RxFjH26XkV3ZDeoiuFdi9zPp+N/SQ1VSpMYzpYbH2mMkSKUORjH24cSFd3UcWiO30vcxdnpqeilUqDYzy4LTGzY32WMYzBEbGMfbW12iuXZeHf+0r43dNT9SpN8SGM6ZaqtmNme0x7GMY+5DlXZFZ2Lxf+0uz09L06dRjGM6SOIWkxsz2mPY7Pu0nzfSJYuj6+neRG2cbelhrqsmMZ7padNmSH23ufeXlWVndW+nb+zEOSinUqSezpYaKTJMY2dDDXWwSjgkxj7b+LTfHY+rP344lUVJPM3dFCHqVCo+GMmzoqeihacMk4tD/AOBS3Ie1r9q1VQNIzOzo4/oVBkijH1a68WZIlTTJR0/Pp+7ah7PutXw4xJGDGygsUWTGVD/GwWbMfh+PIyVLsP4ONsfds+x2XtKtTLUdN2jOLxWZJYRJDiVlz0XEU87Wh2lFSJRcPkaWaJHpyPTYoPNlZeb5wqk3UFDSYPomzN+mjqrWkM6hcdPxSTPUPcMduGmneVPa+6ouQqLPQPSR6Z6bxoQ4oeNisr61FSbkIcjUauJSJvI79DG8hlX20P4r+ozVGT+/JnBwz7Q4KQ0491RbPRFSR6Z+pqyYmaTTDOIIxEeNqvKoffkY1Zr9R+1iEdLHTQHaRU8UP4ruyqSiRqRZyeTVz95s6dnvxkVFipI0H6o/dmkUcGDEDgYx4HiyvE8E3kSGj+sh+MksaB2RFZcVhNkpGSRU8dP/ABXY7qTieomajlNMVpQ1DTjt0NkaKFA/SJls0cJGDUkOoj1GOrI9SR60j1mesepEymK6eB8jEMb4sx+xJmL9JDVVJyFPMyT4qS46d/67se1ScSNXAnx9J4vKiejJHpCgkuEcmk/WJ+0j9Yjk2PYxjGMYyldWbEN3UeJI+vCZkR0cNFGXirIUsVWTkVHx03su+xrcSNTUsjG8JE9ugyojbluYxjGO9K8USdkYPoi+JDdmzJRhrq+CpImTFzCZVOm9uxj35cXTqalkzgj737r61E5e9jGMYx3o3zuYjJI1DdqE9FXJMqEmLinUKvv6f2rc9+dDUsmeYP8AZciMqJqciMd7GMYxjHel4244PpkeSTwSexHTz1wkVRc1JPibKnv6fwtrsx7oy0PUJ/tHkcj9pEY6VvYxjGMeyn7OxIiydns6WWKrKqEsVKi4kifv6fwtzGPcyM9JqFPjJCOBb2MYxjGMd4+N7HbNvu8JaZZ1Rmf/AKaNZVhpcvf0/iO5jHuYxS5jPJSWWuwxjGMYx3j5VnszZjs7Pb01T/VMlnMJqVGux+aAtjs7PcxjKEGyEcJb2MYxjGMd6Xvs7Iau7IlZn1l3hPRLUpjRqlTJTchlAjsYxjHZ7GMZ0KELexjGMYxjvRuzAvL3S7CeCFbJKJJW6fwtjGMY9rHfpY6aKFuYxjGMYxjvSWIWdkfQ9jP1ODJzuhUcTCmpROl9i2sY7vY7Ll01hIW9jGMYxjHZeUuLO2RyOTEzRNnoyFQPQgejTMLOcGowYMGDBgpS0OVNM6ZYFtYxj3O1LmrEW9jGMYxjGO1JZnswJGBCs7yt9dhHTPlXdmMe536dZrRFvYxjGMYx3or9dqFZWd2M+uzQeJraxj2vZ0a/2xFvYxjGMYx3jwtysrfdsjPrz2aflXYxjH2eiX7RFtYxjGMY7u0FmXZVvskIltZnbEp+wd2Me17Oh9q3sYxjGMY7096siN2S9qJH2f/EABQRAQAAAAAAAAAAAAAAAAAAAKD/2gAIAQMBAT8BPB//xAAUEQEAAAAAAAAAAAAAAAAAAACg/9oACAECAQE/ATwf/8QALRAAAQIEBQQCAwACAwAAAAAAAQARAhAhMSAwQFBhEjJBUSJxYIGRA0JSYsH/2gAIAQEABj8C307yNzrogFXdXynI2EDNthfMA38tsAR1gTr7rrxhbVAe9gf1kPmVOWOF535/ex/esG4Ul3LvV8obK2qGwH8BbfufwCuhv+UOcL7vQOrIdafxvbxUhXxDSp4m3lNu7mwnzPlOd4EMmhqU1zN94+p8pyvQ3p/cnlWfxBKrRVjXcrqi7FbPpsICZOVxNoQ5T/5f4mhDY6wr4FVhzqbB9S6RabQql/eZWFUoqGVlaXcrqy7V2rt2EldIuU0uiBdMOtrrQov8h/SJTL/sb69jhfwNP+lDD5Mus2h2BxfENLCiiTKEbD1e5gacJva4UI52IiYfTmI+pMhsZ5mPWmc0GzCRRGl+lynlDsYmTpjEbBCHyZAqGL2NlfTCHmuAwbKeNKF1CxwDneiU2B/WxNMaV9mcomY0oCi2b704l1e5CQ2F8D6TqkQmmNhbA2jZATcXnCn1/K5KeJU0vV6wkJlDvDYKXXKY7x1HG6G7CFMMgnzuzm5yerxurmw38DJG69XrKfZzFmsgMnhNs3T/AHO6vWU2zOudP1HZ+BnAZLxbOwTI5piyKjaOrzngY+FSVFZVoqHYuM8Y62yLqo1/OgMWLjMou6XbO6vK6ur6JzoAMLJhqLruVc5tABi51vyqE40Bn4/eQYsPUf1r6JxkvoQMDJtobIOTwMJi0T7RyUwmyA3ngYfreuTfC/veeBhEPvdHiTw0GF/JwmL/AI7m5uuqP9YQP7iHs7k3+y6o6nF1e8MMO5NBUp7nHD9YYj5xsvjtPTB/cgJsL4qT51NirZjlNDadpcYBxXC6Eq4bYPjoqBVpKglVVKvK+TW2Os4ov1ihwVqrybFXNoFUq0/jD/V4C+Ua7lddyur46ZDYBzhKhxewmtJwqq8qqmVWis8vasw5Xyjc8L4wAKsa9rtXan6VY6VsQyKKtCqr2MHKrh9L2vATqgXziXwhp7VT/F4CsSrCV5eFaV82uH6mRgGVRf8AieHBVfCXtel7XxCqVRegvZzToX8mYOAZtymEw3vDQUXyKpnnQQjCJAIZrhOnToWleTlUvoTn+UDhGhcLhMqr9qq+k2x8iYGj4VNo+5jSMhK2ygpxKFF1TRjiT+tGNGR6k6fS0TbM6oZfEsqlDRnSE6Vo/wC6Yc7FdUER/S7IsXsJ4dusrK0u5dy8ldisyKrjrZUujoYdkKtknQw6R9UPxCLbxoItm//EACgQAAMAAgICAgICAgMBAAAAAAABERAhMUEgUWFxMIGRobHxwdHw4f/aAAgBAQABPyEPkIFvERo1jXnUVFRUUpUaNGi+R4jln+hor/lE3emWM/amzU+fWxvkPHA4eDQ8Nj5OL7H14fJHKIrhbdKX5LexZbENlLhSlKUpTXhS+ExR9HQaC75YmonD3r/RV9dmiSH2mcMLsbrFyITYlS0a9EMQNyjZMPdcCzeP7mbiJXh1CkyxSlxS5pSlKUpS5uCwKJlKN6Ggb/kOFRtfo5IcXI0xospWcvh6EuMj1UbdCR8Mah6JCm69n1IpjiOHgrgbL3MZxMrwub5XMxSj4IJEJ4MRTXoWKvlmrnr+hu/+ax7o+8dM3dIhjuJFvtvodp70ywlGJDRw22RSstFOmEEFxNoV696fwTNKUpS4pcUubgxSlE4UomXDH7ZYSN3Q+xbbgtDcErPXycjoSuGofNFSbVPUPInOoOPeKZ3roNGvk4d0mOI4rCCHQqa+zTVcbxPKl8G/GlKLFLgmIUuJL9G98pPgf9R3G0zhhzk7OjC7E4FaFjRRRUkJaL/0SbX8msWPHAcRYKcIt/Q7/gtCxCecJ5UuEzkghYmIaIfpito55Y30+MOMSUb9lMf8myD7PC54Qhox5yb8iqFtawLhaq+TiLDsf2iJ1wa9W/8AMJlxMwhRM4DRM0eJiiZRYSzTZD72JW//AKNb7NhZL4H6ce8U5/obrFncWbBKqzsiE0XfgLV+N4rJov2JKeyX6EUT6UWFi5W2OkNbEhLEwYmVoYgkQSEhPFLSMRQ3GzL+7Of9Ca/ZiUVcXn2Pmj0h8fYuftrwuMNmNm2jkzS9I7MHyMfQ25izsEw8U0PoGnZdNEG10Vmysr9FforEYqJvR9T6ZaKB/Ep+jZGJiMo+hPgbMXxG2KlzsekRwfwLU9LkaO/POGrGN8MLBs1Et4N+ReqLYmOPWOxNLN4cf2cH7uSprjNJBJBHrGSCfRBBGEE4SJSSCI0aIiIiHIXf2UdfQ/ydvsSW/wDQ5Hmlzl4WPXF8JCpd4Zp8eh2y7HG94lzeVoT9iRpX5/BfGl8aUvhS4MNoW39dmj/Jzn6OZR6XzqnFMbrZ14LwbiYxcKXqn7L9F+hsEu7/AGSchtsc8eGHgl+4fY4cn4aUv4YQnhcwDf2rxwNP0Nm/vQ4r9obot9IeRBD8FlcbwG+xzsf5KkU1kfxH94fTyuaUpSlxS4gkQmb4M4p+hbiUIXb75GWhy6K62cD8XHGGE8mDhjD5zPwNjhhwD7on4bJi/jhMMeZiEpRtHM97GrXtbEaQ/wDIeJJaghu+ZhsDDITGGxfeeAcYo2HF9mzR3lw81zCEITFKUv4AtNYQ6kHb44NNvl0OU/bOF/hGw3680MMJik+XDSfLhuVydBijeHAOUowwmaIRYhCeNKUpcXxo8c/ksveyvO/g0tvk6v8AAb19jfmhY2WF+yeO/YbPv+/FYuUePJDiiypSiFKUuNGjXjCEITPEbLmx9/A3wkuBOJtsvyo3X4EhLLGX8SxRvHmjgE/84UH54VlZsjNmyMohCMrxJJtid9Hob9La1R3y3qifb9YFzOfke/NCQkQgzT8YxR530F399EIMQhCDRCEITIaxCExBIWixvSR6D9jn4X2WJOChpR7Xts50v2IdfwvZ3OkN+aEEiEEOf4xhPPl4EIQmJmExPCYQmIM/3wgkB2Nhw7+iAn0Lx8f5NGK/Xo0/yY8UXJwh+CyhBZ4HL8VeBsVouM38F8JhFKXH+yNicWv6G4aJcxrTrdf8ittfySaC/c1oaatY+eRq/KYIJiHCKYm/wpxm2xYebRI4FKXNKXwuaUpco3pcsgnXP2UZf+kRLdflmxpENLwr+Rj+EIKbEzJCEEtkNkIIIoLC7Fscvwv1mjYQxcfjeFsosUpSlKb7rcb9jbfC99mt8uCs/wDSHx4Cj/s3a/sab5L9kff6K6QrXBL50/kojU+uKCK8sH8S3HI62vwrZRh8ibo2uV+/KfiVlZRYmNv5OmPLD67/AO+CJb2bI+/7HW9b+RpPoDk6xlK7Mhxhfnb+ho0p+0ezMgvwoVbW0P3QbrxeIy1DKNhuMQgkQSIQhCEIQgyYhByXtwkLwkPbokTPCmvt18C7MQX3cJI4n/qIaaEJmFF7+z/OiO5P7Oe/0chFedyiht6EtQhszZx4aZhsbw3AtomFm4pfgpSlwuYQ2/rRuc6RtrUb6S2LY3tkhfvpHe78v2T8LR9D/wBGcVv6GXsw2XGxr6T/AHh2K+JC9kE+z/QvfZ/5sfpj3/RjvDa+0d6aGyHGU4y1DeeQuhMkIQhMJ4lBJMnyu4PX+ulpttEFD9j9IT1fv3+KlxBop0T7PsyPbIJ9IhMtFBPtfwNRx0czSQSPKyyL2qcx3wu9lKXFxSlL+CmhNvtUT6RHt0iijNo5bFbyLxpSlKUpS/iuHkUc5yNaiNeO7fRg5CTVfxm4UpSlKXxpcJUXtmz8B63g2N9Fpd/zC8aUpSlKUvgqiopSlKUbKUbwUS9GvAjTafK8Na9Ncl2ZHYk5/wDSlKUubiiKUpfBYPkbm4lHcaXFNvnlnsJqvxY2UuKUpS5rKUpSlKUpRso3gtNDWiylK7Zy6b2cvoTn366E9eFxspSlKUpS4UTN/wBhcqMso9OD5nCRT1rxflSlKJlKUpSlKUpRso2UbwrvYjWnysSCVa/SOA+2XXnCeFxS4pRxEn8j4ihkiTpF6+k2LweH4PFKUTwpSlKUpSlKNjZRsY2R/PWHbVdHxwtixLH6X5xfBE8YQhM1JV6RCtsf7N3pRF5Mn+gvClKUpRsbKUpSlKUpSlKUpRso2NjDibfDpOvQ1+rFrfk6973pEIQhCEITEzBL5IQtpza/yEL29/RYcpQ+9DZo2Uo2Uo2NlKUpSlKUpc0pSlGxsYfK4uxTb+XNPHu17Yuz9QoojIyMjIyMjI8IyMjwYrheXseod37FiSY5JymmhCfoE8MbGylKNjDZS42VlKXypSlGxsbGHG0sJtOrkonCbaTwPKz/ANS+V/BouJUS/To9lK/oUpwuEcHqFk/raEyjY2NlGxsbGLmlKUqxS4uKUbKNjY2MMPctA/oPudy6KUpSlKUpSl8eBNY7/wCTPNbPWZHquGMbGxsbG/x0uKUoy4eGxh9MpnKPawc4LV/DCZhPD4yNY9/S2JuCUM1Lp7IjsZFGPBjIQhPGZpSl8mNjDE0XI3fuY8afebs5jKL8GiopUUqKXPzBsuL4hW3vvFOI7kZvsrbK4GhhhiEIQn4KUpSjZRsY3hMLLz/4Gj/SeacPZD09nPFGKXFGylKUpSlKJXF2IdehBTS8HIW0bIl7NaSKbZwinGDLLLDRCE8ITwpSl8GPD3YzQTLtsrUfrYipoOBRilKNlKUuL4Ih/QmhKeujFf0MTiYerOxborsurX2MlLsn0iVEIPAQaGiEJ5zDxSlGyjeLSbR0fxeB8JY33sUTdFwNiKUo8TCXkuTbfvWC3P6HuZRrkjHKsbb9jKYts118+TQmU/A8MeKUbKNjDxDTghrhTaXfEIMQuiV9UPWLgsQs8BSlxSlLhDVptsUlwU+LBiTX9GpXaaNKbFN6dC48zDZS+Uw0MYxsbGyjY2MPRfenz3EXtfo0i/voUtd9sWOdinDN+yBoT4SCCfOBZm4LY2Kci1HfaLYrOxH7I+BUU1Pw09i/ghBrI2NjY2NjYwy/SFr5Em2l+2Jb3s0GF77OTxSEIQhMTFKUuFbRcsWvty8DYvTpBt/PSz/ILvRBv8NlL5wg1kYbGyjY2NkqC4BKskQ0TRxrsbWhufofME8XNKUpS5RDV2kPoYbGGnoaEtxpl3ok/FtYtxfxsMOMNjY2NlxLY9uiG2aCh1jptQ10LG5wPnYi+NKXFLhD1HbFq4ksTFwxohH7XlHC3XiE/A2MMMMNjeGyk2cItFxywyujZ/sdJ1oXZ/7S86Upco1V/wAeSbLh5aVr/IuX6jEsbbxCEITwpRsYYYYbGPHYowlRaxyKNuXWh+BO0LGaN+IUpfGGpv8AvHig5syHeWLgxEvWH6Fcma4YHrIIQhCeFKhsbGGGHhjwlsQxFNhBsiQRt74lET4/2ciVLRw9Iv4kxGhLluCVv7HHOzhmDRUl2ctvZyRI5HmFJtiCEXjRseGxseR4Yzs4RfEmh841FPtjxRct6IKQ+ePxpFN+C2Pk0JHBSium2+8Ul5NEK2NcgrokJX4qUfgPDzsXY1Qljs4HUj22NVsrXhrX0Pp9E3z5hXBYFKTl6EpeZsYbEJhvDfX3ZLTpeCHY7gNbrIDSH4spcwY2MNjeYPmHWN0cYuzZaET52R7g9aLUolIuP6OAa2QQQQQQSSQJRVy0XwP5mIS7FLT1liN3ijEh6C3nDZfCEIQY1gw2Jp4bSVlrx2aDVw1WVpNexUhP/tR7by22dhNOvApSlLlEn2xhhspfD/ivJtIc8HPeBwaQ4UY2NsSbKJhnHBRvwGrzMKNx4TYpzvr+WcMW1hSlKXFz9pnCgw42UpSkq4/QhIlF4spiESwY0yDGQh+ijFGyaLsuFycRZ4exMuam0Jpzv+iI+DigvYinFLggmJixDY/9YYYYbKUeXRLvoZdTzmGPDRXs2USuGBpECLDi8XCNmboawuS7NzjDZG23EiTNy/ol+zkEqaOc4IQaEhNCZTeuT6TGOOMUow3r3IJIkOPo05Q7FfQnBw4800RDbAaTCP0T4EogyAywZjub8ZSVmvZyQhs5HyjRzQfBCREtbNPo93hCCKUTPhi5ww+JspXeEVKklEijY2MbGnGvo4a/sYv86O9n2c5NfyP7HTZWUvwfQq9FXoajB0fKKmLzf6E2bn0Ezo6GdJrZwiORcuCOjoTxeK7OGKXE8d78YKP+P2LUkokUbGxhsb8Gj6IcmvpnXpfJ2kmKeR8DF7xYv+fGuVwV/k6zX8jfpiBRsTMm+cKMIPSwuzo1Njn/AAi47NmOmvwIIQSPoPY2skw9S/yLfAsUbGxhsb8GxhhsIINDZfAQ4Zfs4v8AkdGmdjH8lDKPWKJEw4jmSijTjtkSRGmE9jPhwcV8nIT6/Zs2VlZWVmx3VWs0kPrE5y4t3R9s5xRsbGyjfi2MMMNnI1kZSlKUpRuv/UKkpUx6E2KJYeCLM0kuWffs4FrGG2UcF/AnI/oIsQ1hK9w4NHv0hklBxijlxk2NjY2UpfBjD4Ups0UTI/G+D67L0URrw4PCOQMt9474ao5v7NUybC1iXfmxolyyX9IaJlWMPUvYtKcIuGGxso2XwYw42LaVyiB4Z+dLht/lDEF4VHtJBFi2TZwOr5OL7jOQ5Bee2ftZwizaQwxyP6y2MNjfgsNjYw4xucoNxDjjDeH+BoDfg4iLNIUtOjhh2PkPBwY9TFvXmlslX5BS2FhjaU7cQtR6w3kG/OjDDYumLFicYYf4m2i1JiFjgLRenh0hQh2NnY4Oi4n8nt4XCwiP9jY1a6GHGNs+Chj51KXwo2NjDjxRhhvxqUfT6EhFG0UbOBoXWDoY+RLlguXHSV/oq95RyJHJe4UY+W6+DevC1KUpcNjY2N4KMN4P8kGXsuIOsZ8jWkdMjbWJtnE5O+i1/fJ+m78ETr7WNobY+EazloSiS0phxhiiYmUpSlGxsYeWxvBj8mPx1Rm2xIQQmx8j4EOiFN4fIpibHfV/yPn0GUhJG/e0eI3jkkep/wDIaNSDOG1gcYomJlKUpRsbGLljGPzfkihRRMeEh6Lgxobh12aDvo4XZe/UHNT10is36KH9at/BGkouEQD0eE0ft48PsUt79o+fT78CZSlKUbGxsfgxjHmEIPzblYSYspiuBPQzk5YlS7boTb3v9FP7HtyaNCglP2cbG1g8PT9rFiJdYY9TtOiWqLtafwhmj/rC8Lhjwy5YxjxCEHhkIQmGiCKJnR3ggmcosaFaP2O+kQr7eWcJ37H++sbhNk78MErFg3gPbcGeqU/4NNNfuFiumz01/RLf8D70TxeDH4MeYJEwyExhB4fTCKLwuxBI9n9/hKaX7IzdQpfwf25kPbQpCcJRDWHUQRfJ+/5FpoY3eF/WhrTqafyWp1KdDmly9w0X0OOV69D/AI+yGm1rpk8WPwYxjxCZhBqH0X4J++PsSPpFl2sQQ6NgusSmyyL5J+v3EJpHDZNn/Yl36Rpfw/8AQp7v8YSPj+zLEGx6C/ojFwL/AFDaRTYrT0l9dnpUn1DhaanwVK7feihTj2VJkr2tf5Nr5fHg8GPzgkSY5Qf0sGhLbb+tCjb/AHsprSmulBs6P2OOg0f7iXyRf6CKNhdnZ8l67fodrh6DJISiEjV3yVaomvb0kS2UxYZ0cD7OAybJ8DfwFKNx1OP2iUhBahK+mdt6XNQ0kdbXOjh1UukWL3Ta36NG50fEtdjTUaGhoa8HhkEjl1ia8X1yLSX8s2TT16Q0um6/gXYsVe4obMWhuXwWNTPUHFr/AAE9Y0gnohwbISOGJWuReUGmwjWjXUNP2QZ37F2LsF3k/nJj4GiG6x9H85D/AMGXg/7HCr+Biyq3OxQn6epTUsafpo4k8frol329CpvsSTT5bHJ950MQeJ4JmiVY7uEFWlzdsT1VrS4Orl/LYtrRkJpfFhnCH2xtrQvSH3VvcbIu1x4cIi3a6HUVDftAi1a+oNfQuLvHXIe+nrBFHFD1pDL5kJ8Iei9krfyb7HsQcte3BCk4WiSE8U2G0PsN/D5DHs3216e0JRz0JjlKqva9la36II3J70bW6XaFw596EJeE9DjWf4Hm1xci5yj5GPbsetaPglNhesdN8H7LpaFLUezsdRvbXWiGvE2fCozf5jHxJa+j2Ul9DX/8D9q/gfpj6HWn/cbnur9U6SfyaFohIZhBDiaqHW+BxLmlN1PRvCPfAxtCZo1dN/xRG/fG5wiaZZX1UXZum4fxOXkYylPgProT9Jv/AKC6Ra9pCl+n0iJN9elROKf2ONN7L54GO1fhjYjaX7EiewxTRKJmuPbgpbnXxEa5s/fJHaiubyf8U2f/AHSny6QaGMMMMMNg9aiWOQ+CK0O5TTstT+iuNGxsehKr7g7xaG0Uu3+jkiKy7x5gV7h8j6TQ6Mg4/wDB4mNDxSjE1U9di1RHteiHeRPaQ3G+ebyUGu+rR9tsn01offt026knE9ukbdvGzhSKvhFbqZD/AJFTT5ejjrf+xo2yEIMfiDYMbH3hMHSNMRzDhobSENzffQy7Nzl0/k+BreRDnhvYmk6i0jWPaOufQja9oQb9g4LjD8BjGNlGfBfK9oS5Cm+nxySusv7Gbb/20TV6FU22kX+SNpLW+SJp6Zs1Fyf4Lsf8IhCEGPIww2RjFCKao5Y+RPRwXQ2mPKbLfoZJqI15RVrpmv8AQqXHZxRux3dDm41KaP4GGqr4H08THgxjY2XCfoO0LVNOxwTzRc64HNNFN6EcNpNfLoR7acumhvW09HAPXb7IffZCEy8jD5GweNX+xLNEjTJyYmwqEXa9HXuDas/Rrs+xr36RHWI0xKXbI6KlWcI+ubGPB5HmjNJ3Faaj06KVyXXx7FSLUfKIJVrbv6G2S8v+BegSITDIPxBhhhseFiCY2NnYmPDcQ3ItaQxp88D70Xa+z/3JUR16Qe0qfvQwSfGB9TjhjGPwDGPPEe1PjtmrRcNwitX1seiu3SvLJt8vkQS8GP8AEAG8JFRB8YSpYN1YYesvoddl0XQaVrIUjPTpCOBo5nH3IitJLSS9iPW+zk+8HDLGPwDGMY8FqHqj5URx64jNn44fYgliEwxnDxBsjGJVe2aFH0IT2NnGFH+R68Jo4OSa7Iu12T4/zhFmfqPtizTp+xaXvn7+TRT+04+F4PB4MYxjyLsW7SvQpacITRCeD/EAGMSoTHErFrNZwW9jUglEaSJoQ5/ch7/jFHoTjhoh5sPeUfSY3X9xyYTRw/CB4PDyINad8LgXwTL8gMNkYxd/qxDhgsCtojGkmN3g0fQzaRdGoPSf2c4pRjVOP4PXH17Fj1qF6aj6N1fgfkBjGPIyU+c7CiCRMvwDDYN4B4gXvLldG4GwuRKNE2dG8TH8p9sbVVqqbL+EGv8A1TNxDWv9h3cjejdDhlj8Ax5MeDEgvbIK9KC4LwY8jYtgww2EqL2yCL4mV0WMXxGwJvwacG7pHtj9Hsd/ojzS+yHSk9F29F6WPbbZBGaCC/28pCN8mVU7IEyo34DDDGMY8GJB8i6FEvF4MOOMMMMMNiZ8YmGtEUV6NhYhjliVk0NEwcTU9j5R/O34GaaabTXBov3k8H4JjGMeDx/cjiKLwY2MMOOOMMMMN4j8nAscDejvDZi4HEjkyxjiN0uTki7odv4Ez7F4GN5eQxjHgx45PpC+RjGGHHHGG8DlipKWExsbEdY3RyEXcb3h00jSQd4E/wBvC+CGiP1s4LD8gPDGMY8bgQ4eLDDDD4sMMeUlfspSlYkd4T0JnM4Ow2cUcuDkhbqONZbCl8LVvxkx+AYxjweU2fOKFlj/ABEB45PKEhnfgch5cRzR1Ow+T//aAAwDAQACAAMAAAAQUI8Ao4kgUoI8YUUo80Y8wIE8gQYUgE4wMw8M80k0QsocgYYso8EkgMUoMI0EI4YMooMsoEYsAgwoUskkEEEcMQssEMYc4AQwg0EAU0UgY0oAAcI8EMs0UooAkg0UYQUwwMU8QAMYggsAQIkIYAMkMIQYckkIUQ0Msw0kkUMcUEgQkkUckEoosskYYU04MsA80gsw0cMEMw8A4MU8AoUo000g0YQYwAw8cMQAAAUggswQkcIYMs848ggoE0UI0YgwsAoMckYUAA0AgEccUc84E800Y4cowwo8ggQUIUksAMI44wAQA8084MUwEc8EY0s8UQIkkcAMwwwMoQQ4IIAccYw8888I8os8gIEAMcYswIIMw4wY4ok8MQUkQ888w00MQEkQ8c84oAckco88QYsIA0YIoo0sIA8AAwEg0Ywocc84MAAAAIooIUQgA840okowIcEMIo0g4cEsgAYwsUw8EoEkYosogwYAkg4gYoMgIgwIAEwkEMME4YccY0AUcYIAcAIMoccQwkMoAcME0wI4EwAQogYcgs4wIgk0I40IEYYIs44084wU0w0YoogAYEk8csEwwAY0oQcwIkocIco0IYsIwoksMs0A0owEwgAAAo88Q8QAMYwsYI48oU4QIoUw4w8Ac4EUII0IAMgMUU0kQ0Y0IgwQ4kswEQ4EIU8UwcEwgAAgIUI4IUAUA0cQIAoMsEkUEAcogMwAAAQMYwsMMM4YUkg0MQo88c8QAE0sksAEIAoMAcwAEkkgsQQEUYEAAIEwUsYscccs4UgcMsIIkcg4I4wg0UcMQEs8oAAIAYEMEQkAkM4cUEIEEsM4s0EwMMIA8EUkMkgEg4gAsQ8oQ8YIkQAUIgEMA4A0Q0s8cMgAgIg8gQ0wkQY8YMMY0MAMUYkQ0cUE4YMMwYwcMUUE0sAkAUIcoQAAYE4YsE0w4sAwM4EkIE8YM4000kAgg4QAoc8k0MQI8YMAQQs4Iscg0UMw0kIgEoU8YwkIwEgcAoMAkg4AwoYQcsQI0wgYUMI8cgIIEE4kUogUY8Uo4coIYkAIYIkA0w0M4EQcMU88cgYUkEwkQAMYswEU8gYsgY4wcA4wI4owQoI44Eg4gAAI8Ec400cYgYkw0M0soAI8YssUckgIos88Q00sIA8oMMIAos0o8UQcg04Iok88cQI4Mc8QYIIogkY8w0sMAkwgQ440oM8IEcEw4YU08o8oAcUMAEMk4oI0oAQAEc44sE0ogksoEUs48wsAcQMMMw4U4U80kMgQowMMYAAYAEowoooMgUYA4AUQYQwAoMME0ok8QgkcAgQMcIA8ggY8EAcEkAkcA4g00oQ408QsEMwgsIAAUo4U8sEc484kokYE4UgIQwEQEQoIoosAAkkQA0wM4McYc8YY4cgk8wEkYsUQ8soAoY8wwIEwo0Qko0UY8AwYIs4QYoc4YgkAwA0IcQgoY4EgAcM8oM4480o0Y8wwEccwQ04gosMcggkUAo0wk008sk8QUAYcw8AM/8QAFBEBAAAAAAAAAAAAAAAAAAAAoP/aAAgBAwEBPxA8H//EABQRAQAAAAAAAAAAAAAAAAAAAKD/2gAIAQIBAT8QPB//xAAoEAEAAgICAgEEAgMBAQAAAAABABEhMRBBUWFxIIGRobHB0fDx4TD/2gAIAQEAAT8QJHmQPtYzi8RrEYWNsy0zBF6MUlksYssgkOKPIwhSUhAggikUiEKIsWFOorq6zLwzQ5DmMAE6Ar3DEopQPiohLxkGuuv2StBihTId/tjS9Vo9SticZJldjP3lwDxCCxMBBxjcc+bicGMWYGFTbUY4t8WxuYuOOoauDFQx38VZ1MbGqCzMt3ZZGfGfeJeDO0GsQVMs1FjRsojLWFmNXfEl5IXbRHDbBPLDMGEHS4TRKWNO4IbbiII7vM39O8Z+0W5lFF5+8ooLUD4zf9QC0UyUdAKjVSgbdEr3BiWozWKlqNr3LIvOJcPnMCgO2oJVvK/qAiz7IneDUJ3yPu4DMY3Lh1mCjHBY8qwS1a6wxn6SZj4JUNqfEMvRHBiViaZcXhJZYWNIuLcWMPAQcJBwDLYsgx5W7yq9EMWNkLZlINKW6F9/4hkplwv+9Ssl2wrQO5YVLjUrGaxQHiLnTZiLDu4OA93FiCG4tFTYMFGaiZIjEXG0HFLlrm7gRmZ1xjZ6biTBB0owXl0j+4scbr+JUOHMGGY5sX3qNxoZP/ZuKiy7iqDZwxhZcenFRIkuuNwLhyFsTGhBLKahAIgEu44iAPqakXJc5Jf37AqsxJGhqW7XmY4wXg8PEZQ+9xyssGv1+JajG9/r+omT8zCDGfEqGUFb2G42gchW8ksgdFV/xKTbwJSygbHxBqMANYuPnuDrEaSYL3cZht5qOYk+4yLAvqBMTN0Nj1cVB9sm/UGtCizYwMxhL7hDWMvAxfBhjDNwfogtCmY2OFnUOMwMaEYHQZqYUrLlqDUa5Bze/wC470c7NRXOmD5iyrRr4lJb9ygrNsMgvOU1zS9yv8pUT7faI3nurmQKORqn7dS+AA4FEqKH1dKS1ltuV1Gh31DKiBym6hCmkYS6uUGSmD4jToMyoqb3Fi9ECNTUem9wxhzcoNFRwO3o/M7aUV5dQR1KMQIVFixYwwLLi8K3GEuLjOcRLqEsiYpwF+yMrY3qWj3CArkPZ/zHm5aVfn38ykDVQYoGVr2QVlGLv1Es/G4tuK4OZfeYYLLBGwYcUwgiW1vE1jD9n39R6zI0K79RsN+5hYzFO7gxmRBhmBn5DU21Ctnz/mLXaV+3AIy8GLFhCFoxUSM+0WuDwwRaTRzBbDWYNwioSlKiUJQmcwiwTnwFYuZFSlXDXqKgNvRAA20N4c3/AIgKgUquj3ElTZdeDxCjBlVXAlreWF5C2QM1MxMQhwQEIIOSHUhJv7J1Is26neC5DUKn51KTHmJue9gfuZh/3UOKgxUOIHRmMzhtAJNZeO8oECmINxpmJlIkVFGeRRy4cIkcQgXE4rTDivAFsMzLlwhWEJJVXn4mCW1ts07v1MIpbbePt4jxF7xez7xK9ILc/b+5mXoYp6ghapgqIGwbBZj8VLBm0eSOYiZECGIFZIZKTRRiIVsvo8R8XKAwHjEEGGCGznFogxozfa/4GV/UWzRKriYjjHJFphwMzJuMKIsQIEzjjHHjZl6upS1UTjTC3CkSXGhcUsRg/seFWdgaLqviZ3oryZSJb0UVENLWsul3/IRZhbc25r7zUXLKG+coadrBGGyKaPmYDg2Rag24OwRO7zEStaoGotDo7o+2e4qbKZRZlx9rj87YyL0lECjjr95cUqhrITF6jiFApnxwCmYW6qLFRVR6oHhrqolWpX1BGYx3HpD5JFpoi11EGotUQtcmYLFeEE6lq6h4oNBdwM0oBqMNsCBV4x83GMOWB0+L9XNKyFPj7epmdgBfvDBnQq1ff7gKqs3LIeD7hANoqFL7ncmOAUpnbybZMRHHwsjENZiTh7im+yMRbw6uBxffE2CVhVQ4PUGOOLwZBcx71B6EGa9oTXsh4I+AifRHxk8QlI+CPgj4EYegnqJXwcTKniEhbDjBhEJCThSNa1qI5dXv3BSovdu4wNgxkrqC3w0z+P7gsiK1X7esRHwDf3hnIeENXibSO34xDgJiYR8BCFsC5GJ7lim8eCYx++KlSKbfBcuT5hsXMRNYMc0WOiveoTwp+TLHUx8oBAJgjUSJLhSCMxGiWSnAYsQjiEYxlVlsFhVzDiWAou3EWNqkfBhQUWmA78ftlRJXFvbu/wABFTQBy2XXmOUMjSz911BGBwVTtZdul1Fug6i1jgmxHHqLBylOWNVNUZ1bhHa+FDUrIzVpeYFWWIIg7Ki7mRIcBMYuOLCwL+mjCbvcd8tMWDUW4xizcCuLDFy+CVFiw4MPlEJqKQFYjHXn1K7O8Xbjv84lWHCFei8b9QSXNhuvRENXYMpQDdgV24lC8gDZSf8AJWRgILQ/PxEGfscnBx6mmVkLEN33si9jS7z3BLX5EKpFRab+yKb9zFhY8Zo+I8S4mvvE2x/uS4NZu5d91xbF4bRczUpKREZYMocFwVY5cBeMLVxY0zBtgVmBdniCY7l7SMoXWH5iB2NfaOg6AwSxbeC2NFsgZXuWbjd/1/cQPvVRK55IbJU8Oc5czBOjjAvLEl2SkqK1GOjKkSolxXSKxjx+5UKGMfqACWYWIxuFxFFRslnTFYMvkYMGCdwRYFYAhHFWYxIQExfncLvW/tHUJaUot1iZmtpXi4tBUMDz1FQrJVdX/wAjlFFNrv7fuAiKKKioEwdeZc+k1FVfRqcuEE1DrZBzkiBWXoi8Ok9y2piIRYMW5seIVyOVTgY5jguYDgw2ZTAeZ4Wn0JAziQwsWLCKxV0waN4c3GGXHqIaoN2qMtQoDx/biWpQjVG6+fcZlglmMzFr8o5fP9xK7tbcdf8AKl6g+kgTFlOoJwtFbkStbJZBLmCVBuNm5fGuPEYiE4IqGfuHBTtqEiB8yxPiEmZUBhCjqI4s1MRqP0NhrF4KS4Zg1Cr5HqDmZq/C4WEKBG4pL+VLCXaCrIZr89QBqZdBv/T1K0qdmvHr/EvttzoeiP1zcBchAhYiObX1mOAI/JmLdh9iOxDZL7wsXneKqmA4O8R2LF+YmAVvuAbt1MmWDEbd3CuMwkrBgYCEMqRYWEhI3eCVwWjCpd7ZaAkC2AXAU3GMw1hGrOoWBYMY3Duype6P+xBJbvRX57YvQs+Kg61Zuv8Ad/WcG75hFqG6iojCy4sYvJzHqYyE42PDH+aKqvGfxMTflUKPAvmMxhAooLipHgFUYeyws4uYi4Qay8OItBdy0W6JYM1WHcVYkLZp/HxBrYlmN/7SRLSBpefH9TYwnROvfmIuVTq2rPiWcUWgZDUs7XfncfrXcRDJasIlVcWXFi//AA4wIo48nm51OauZ7OEeHB5lkkJAiViSMks5OdyjhCpaGMwlQm9jvWlpm4ftIUlyYDNTPsj/AJjDtjLFmQRhf1iKXBrXgefiKsqGrLVv8YgVAdSOH4+nC7+j7Opo+IQ3lJMf/i3il2OFY9zM/JHhvB9tQavWVYZjDDwVG0T6AKYCmJAiQvjMJxjIQv8A3AxH90VrgdGWEFFMWFZuAkrO91uJgTkvroloC02rf+lD7yyAwaaH+Zjq3V1eYeKQUUYJgrGgy+WO2/PFcDXzEgQ8BqGYFxAiIX/8d+CrMHFReLeXCnuG9HEJcbRZdxYsSJHEYEgzcMODUYYygbc2ZIbnbkgIAAY6faXvfbHVx+XBGRCqqqvn+ITGtGKZv56gYYrVN1n+dxgqWoO9dso0HZbg+8Ja15UcvxFuft8TceDMq6OiEnedQNYKOAhFZJkRDL/41DMIIYRRbjyfMdiYmEskXLjy1uMYQPJghhWCrmKA2gB3B3wWu/KNnOfUvSwZd/L5YTpbHtfAQYbTGM/z+K/EvHW3Kail0mu7CbSvGcWS1WzrEdpzEKI6uDN8FSqu4ME+IoZmQxEihpixsSxSWTKBMyCnD9aNyEuo8JZPmAQ2dkqluIlJTkZeNLKQWFmOahS89yjGuo8Zlhgm9c0mg9/MFov1Mv8AHzF5jZDIWdNbczFRgXxKlhd9wD7RR0vwi3/Ez7Vev/JZlQwDtHiBmn+7ibBvslqnd0K/cx2bFPUbdWsO7BXrg1Y4yCWG8bQUzBXcYqTR+p4nki1wtyUEdgN9QhdHCe8RjVvqLZTAqEBYzTEYjKZmJgwYrEmMniKGXHfxHfG/6ipbrdXqMnO5p2YD0IX7EaUf1Fsu61TBKIL0FiW97ixi/nUz88Ny3c+/PMTj28rjEIm9AVHVd/NYiKA8Ri54iTiOWSF2WRuBTFFCeJeIY+lTPMTYb7itxojQ41zKyAxVOIcNxHiMbRtiX6l+4bwJAwikREIySbCpVN5xDGhSA1qGaDasa5Y8W3BbAMA/zEUw47wSqJJCxfFzJJisB/O2BPioCISiJYGYPQQdPiiyvxk4/wCSFI0oiMOeiFOckkg8UoNQW4dIGKko2insiOD9DslmmXPGKMV4XWKilsGMXwfERXhg5eXgg0xawbdRPUrK+OpSvUplUB2uKj4/vjgUPD/2FZvVnE1taXHH29vQEPoeDhgGbSwobPkPxL/57B/UfsO+iaz4QnVA6PN+ZOO734ECMROChLh/lhGUe8kwnoro6sV2iJb01y1hA2koi8O+RQSkrMYiBiWHgRxhxAiIVaJRoIngQPZEPgg7M/3i2rsr2+YNy4XNQHv4O5WaRZnu4FEPoZcuXHkRBdx6CeFH3YjzfLLt/kYeP8rANfggTRUYSJxAKaiIpXtUxif5ETh7dTALbyqx5ixzKXiwOyfa3UAHDi+HJ+qieoSWIvG4wQRlFhLAjTDBFiwkbZ0wQYIp+S4S0SHQGLiGVFtK09H4qGDUwBtvAHvMC753BR9DGvF4WXirAOpcuLF+lYwsUUG4aI9kXjXH7BxwYi3mWZ3lfJ6hs25qn58/E0q0dvgO/jqO2cGD1XiLBmJMoKMkkEYELMHEGMW+LBPXQV96isGqjzdFfsmI0p0QcsEQaw/a4Yh+64KE9w+hhh4GWWWceACAYtEpV+jsvFZZsJncsw6lPQ1g2aSk98ixwrsL7uFSLBNWqQwF5+8oOmizhJIBG8G5jgNETEQkMpERrgZeGkr8GYWWASvVamQrB6DBFUyxtD7xX8feFpz/AE6xwMMLGGHiygLG60wCXl4PshDxsssvFc+NkIV04bMSnpbvmDA+c1MioekAMCsil4/qEqiivuazCMsYhahm/wCIFHNoLiXfBGLepcXINeYg48Y8RxX8QX6YLpwd5qKIs72LYu/r+MZYYDQB9voWOLFixYsYeA44XcpKR8CPAyyyuLlhuPBbcTgb4MPh6ZejSUnh74DACOC8FwowRLTdfMI/Ysuu7un3Coo3l4Ic1MIcUixcFjJfkZB7gfg1GLWqniGDAfGIJeKnO337h5DM1v8A3zysUcwRqKRYosZb8BhGcDGWWWWWWkZeQs2Sq4rPOgnr2CE7b5X49y7maGWnxAVW3J6jLyl5X2+IqHDKvasXLJQhSRIzaHJjDkkVEjZIG1hYOsWZXWs7qAWpVrLaffMWnsbruoXzTrXjljDDDDDyll55JJf6IxnGGGXitOXuHjKe5WURdX5Mn8Qj5waTN1OkwACoM+m/6jhBQHQzyji5eECh71GU4gEq+6j7TJkRER5wZiFNjLWGDY1pywfXuUMaqkTU3WeEneYes5gxY8Bh4DDz9nL6MSSSQwysWMMMMv0V/wA9zP5OLIBZcHlmH0R2iFfzcYMlBawH8/1HlprXRRj+RiWrhAl4rYSPdxAXGDK8ZMkZXSIm2IptwXuWcvatDKwbGRK4fA9zFm3OhO8xXv4mJNQ9jHxxwBYuQYYfobssZ6ZcHBJJuDwsWNow4R+kAVEuOeJchBpJRoGV3/7FkS2GzBmpifcG+74ecIty2Cy+RiwiKvVyyGrI2iv9PEwrdK8jIfFy/occMqnffiG0BcYfkjZ2TYvjH0Asj9N2bMGXxItPYIdBBIQRcYWMPAeJg4sTKR45hBUM5CWtGVbOyoBGLoJfuF+DDDWM4wm8vxuLCVCsv51AEYV+Nbmq2P3IF09DXmUiXtLmI9N/eFlgohmKpzHBFHyGTnFm4c3Liy4MJMJcYYYVxhYosxMxMrbwahuDfNw8DH3MzM9YMdx2fa5bOS+pmJEicEEVA4EJKl4YGha1DmQ3whTzDELCZhCzEekSJxwAz4iHUP0URhghpKlcJcZSahBLDaLUWLFixc41NE3IrAG1gpJZn16gRp6XhinUMtNOS463T2GYIrPzAIECJEiRJY4qwlWVcc5cG7Myz80RzdAkqFargz61KG9alqPbE3mWU2SSk+n9ZZb8cokSJErhiw4GGHgPBUuIpdubcAbmuLlEKeUrfOoqtvBBFrgTSUDSaTyXDJZLkt3wZWPBavAg+gyc4x5FBUwkUL8Rr4QSR+dSrgXjDBU1rcaMyh9QV7QFRiD8TEmdDEG5fpAKYyywlROGGE4eLDDCxjjMUUVEQWmZjGrwQh7b4MxFt4NYwVMNj5b/AC/8jpfEwhfc2wllm2MssHIsGDFE2BnAoVdFn9TDqphmFCx30ssQM5l6B5xGQQmeC0m0FIZC0uoDKRmw4KeYYYYqJEiRIkYYosZZeAjuV8FCzFYytLl9xgWOglQjblWEXeM3I/b3LDb1MSRM3HL8W/BjASiFQIkuGYGlXuVm+KO795nyEKMy0D5NxIKUrh9QfHGLlh6FSA0mgPMw8v0k46lgjG0ThIkSJEgjyrGHGZY81vJ90EWwlG4DtMKDxBOiA0cssOCAcFTI43O47PiGbwxhsmcIyjj9oYnxM5cKwgERAGbYhBKaCAw4JqzE3phDR+8lQER+z7Rvk2XwwjQDJLFym/hDQ+hhFRx52OUYWLxUTgksg47fQA8lwstVVwbW/SaIOCjWLzmNpVuxu5W/L2H3hpysody5Vu1y/O8ODcvJS152ywulx4MQTeOAIwqzRBMxH0AjLe6zUE3cKrm+OxltksCY2xZ0TEUOD/iOqBZoIYAKgV9DFo5+7huLwn0MMbuCw/XQBiw1LBL7Pc1aU7I6hVyllhFeXWQqCkAx0EveBd6zDykUOazMATFXBRVuFbMxUVCQ8CKjD8xZoi+5dhFqlQ2d4AguxSz3zK21iXIFo7JdNN8m7ghEHVjuEJi1eGH0MqOOxeBb6DgOXDDNeK7gfoBKEbZQTBS99xNJ0TOeWVqN2xM1cW2+/MorWcJppvERL8y6jwuYS0VLyzGFhbCwCZo9wlY64JG2uOyy0lpRK9zxVRBYEGis16hyyiMrLFGDMCBAgQIECBzbpt+qgG0XUFLI7bTJbeouEUIGmFqEAOOpWzN5IbKHOqg4HyvcsXDY2/M1pxXER3FDUuXwcJSXxrBjKtLJsxC/RDmCl8+5evG3Yt8x8tTvZwRa4IsqJHVqJAGGcKECBAlcDF+hfM8xgiyiMFhApLjYYl1sAtvHuMMG2LiseZuCCXM4ApteYbBS1kjDb24zqFH+hBlwjAjGGCCBg1HeLq8XFqRm9zXi7maWvAeDHSZ+24nVbp2J4ECKGWDrN/RLhQRG5ZAQbBwMCREqPDD9HXdMjwOLDGJcgIsPARIdaItXbEEBRIjNZVS7hX0avHiXdFtg7lo5rNH8fuUYbWZwkkvxbxi5cGFuoOur2DN0PxsAwNYxqVLligxuDBFmEA20F43ASw4kwSjAmxglFQzHLpxwhfiK8WWUiRaiYyLjwck7jFHFtr3LLzCCLMLToJYZ6iDQxCk3ML0kF7joiytPY6g8JZDW3d/uKsW5bahC0QYMGyLLgy4cQpqIAZm8DcZngcqKTLK5xWYVUW1pmK0EbwIFtiuriAWXiDmWqmZ6u3vjS22+I11fxGMWojiWYvIqxmrN+CxxSrh3hmFXeZVm4QUS5UsxY9viOx7OoYQFvyEQDqhTZ7hWMoyu2FvtBmyXBJZFuXBgwCFuVZ6yY0u6am6O7iSyDEpGsbXBJA3aGIxdWotBG49atcxJhHmC535jUUikWLFixWLGHgWObvB7ijljiKlRtNTAvMArEWqG40eLWNLL8niWKEDUYRWGW0l0NqCpiEX3dg9XFWqkyhLxknrGWcmmZdsoGq0ICgAK55jCIoHC5Zc8NO37Q8+CBYcn5CzGFC9zIhthmGMyt4iRjGKPsxhYkfoA3TdHTHKzK5ifAijCEKgbqKsEzUGokN6hbD9zqXLdahRYKaGO2ND0b/kIMPKUGtK/qE6LDoxHX/meqeqPQQ7jjIEKIS7I1Fv+dRVTGPHAssWXFjHMIJV1UwjULhwkMFza0PEfIWHM80QdZMVmo44GFixLjTjeLDIw+meqoqu4FY4FmDepVFRCn28xaKVcFjSICBAxzgjA+GDJv8oSzawIQodG/Q9+oxVvyN/+epWhgF1LWXwpimmsREpA8bS8IMwOHhWVmB6m7ibcVixL/uWrgBSD6GoJmFobmczcCg0GVN8SDBcUsmkXOkYQGGYkBEQA0RucV2wU/crGsTutSoFwyJgzVhVMRdG4BC7h7HTfz6hlwcbdeb+pW6NWYV1F0bCM3EwxCx4CSCkGEXBibwRADBQGPojZZZcI+ILJ3SExAUBDll3VxgHbKlVDbA9OYjvPGgTNjAMWDBAwJj1FeiLep65aMs2MrBcKid3Ml5Y5iQ2QKjJLdRE33EDLDNq93FXqHY6dsAcIMHj1LtRxmCDS8ZtrEUxdzMvBhGXl8ugxAgqx94oT6hSsal30avGoIGFm0VhU8X/UG+DmrlIwRRz3UA7lmoQbIruWIaWwIguiZNHAqDF+KMYWHuKggrDcp6tieSpkfUxrCDMS1xbbjD3uEUwLvslPa0i5EBkFj/cxtgmSrImEoPywFFAmGLiQfceAgxss5iQwQzEQC7YKhFbArFiYWU3MrGXHde4rbHvy+IFJ0P8AMOwMXKvotn4jq3uq/UaC3yMQixPTB4rG26i2lnWRny/jMO0wOww7lC7mO4QAgA4jU1EdkrYMxDpFp/UcxMkI7DxFOGWGVulwpZjCAyrUbm10bimMu1l2pWsXMAR0waqJSOQDT1NzZby33Gzt/Ea6jGzCRRCsOI53bcUGAxWPjm7F4nH/AM/mIeNoJYFAGI0lPO1WQTxEK7r2pmIYnRv9zEP7y/rcQDO9SAFr1UEqxRW3F8iPfYQqXSxNXAPCFUPVGaJGumEMSzIIItYirD4lYtMuOKqULjUs3AaBmD8oqmGWXzmC/hFUDMEFWY9G5gWuEBCA25X5iXh07lrXdw0aW8YlmIor3D18ajY955SEEuGWDivzKyfRFolRMrwNntmQibg7YQYFAEafUbKwzANNTcBIuaPsKjuwdG44slcGh3lO0p2YA3D58XxeaM5Z/wACVM6/EElpc7whkikKuVFkWXNmzgS7ZmGMGQc/MxDBUshyPiFE6kdGYMY+49wcQbNaGVEZU0sCZt3UqD7ISScCzUHEUAtUAmHtWgixcquZ2W+/U00u/SC0EFjX6NcnBZAOuMDN03TZwRmDKGURlhhgfdB4yihch1Ov8apNSPDg/aUNOvE8yAvP4j1OjFcWGZQIlh7loJUAI+VjP8kCQoDBFYPMXFy2v3JmBdL+8yTLTZ5mRUY/MyzfACEYcaxLV2eJvOPsiBQCFaDaTKwEwswELPl7UGNT6HXirwO4sxVxYmZ2XsGMENRbjjDwteLeFWxyZP8AsHLv2QHgNdw2oZfaY35lBEmBBDPtOYh2yUir3Sh8CLmn7sS5ucMuNrqrJreDYmBW4ovXcoUdBtmEGuoCUCKdBLdIHl1AF61qHfJqgtVLoS9iK1434l/iYQUGNS98NPOsMMGYEWPirlAy9LMw6NMp6xDRN3ixuWxYwsuKdxGiu3qZnrZOxg1DAjSYkS5uVuG9fLLANGGbmAXuJFOoBQIqIVKFacXiIuwV0krwKr5xLNsfiEGowZndwtYaFoAV3cLfgt91mG5ZbzO3qHa26U8QWwEAIwspvPPvNkIxzZwbZiajWrs1KJBhjyxRxYxZcWLGGBJSApCyo8xJgXB/cFytEB4S8vkg1lRVl14m1rLCl7+Zm3ol7DeUzSugPmHiLVoVX4mTuT4rMsFUSoMGVAqCKH4lNnlKZXW/mXQl7li9d9zCX1BF+n8WLB4H0Bb5fcCqO4RMAgFEvubJk4li7m+GMeCXvpafiJ9v6igYiQyVY0G53BEDQxvuAYFNwbtMQl2+9RW2DMp1DhLJuWT+5XlIcDcuyBcv0X0S245oMSNYY6Y9twEHP3iCVoS2AHN2sWLHMCBFqPJ7xzxDJDrlAF9TC8g4sZVxIkSJHiljY3CiOEj4BDIvfBFQA1Azd4lA4KrjGCt3MTtTiKjsDS8sMYCtGUhe1S/h4WsDKmTUyvLnrERDBor+pnXL7ePG5rEx+uSCaSk4nL6QMGP0/VWwJiVFTM3TZFFixlRIkSJFhBRHszKXthKZgSgSu9+pV0KHEAqFS8GCwQUHyVHK/EGSDX3LvRKAbrMyIKFvzL1Utrrrv9feAbavdddfqpdwixDpL80q4CAYMEsMNlffje48N3VRd5dyqhECXMjGzCTllYP0lSuOGLGLeNRxYsYESMYsXi7z4YKOj+4Zvm6YMLzDKTNwMSYE4oWiDUefuVlG1KOodvN3GhO2EGWC2DuYQXWwcpv8WEMxi7DPcuDBKzqZNHnEFef/AJ0qr138ytBN8e2BRWkiA6QFajiVDzxzB4SCX6MCixeQUcUWMIErkYxhGmPZAEDvMtrhGSUQLMdkhARSSgIzYgm7iUgxeY6U6ZU7tO/iM0gUrSugmRqWkZ+X53A9VCWQ29Vn8RQOnX5rRL1fEuVTBcvGIhnv6VFSFGCHKPIXomw8esy+8yphyDM4FIQ/Q4YWLFHHHGJKgQOTEicVMEx3KvOTEUJzkzgZlyTDfjULAQyz1BWtzJRrzGpZy+4iLa2ZuIlHBtXjE7MGesPj84moWgeCEhtkVEG5rcw2wEY06AAA+CWpLTKyT7Nn/wA/qUdwfGylZgitCbU2xS6sYGa+SWN+Kv8A8lQeFrmeUOB+hQosWLFcUzgpiXEhhdQhgRIkSJwYZl9NwvNcC9hBsnZM4wJqKi1mYJWYnqrlqSpRgbKcfj+4BoXH92WGGWCWfCEVaVij+z4uUMch7/qJAR/gmp36xL+/e5fGIs3sbiUikfCQagAoDx1wnKRjZjKlJ+IsofYNH2hBaTlSn58EWBqzDonqO9MWI5hiDGFiji7ijCxY4o7glQghgxMQRhvGHKepvW8TD8y5Gwwzb1NmCqfUtzKQuDYETldR0gN96/PmU9A4Tn5MbuA2oKU7/PxKUsI2nqCAWp07ild4YQS4Vjw+4ng0/OYMPuOkYMcvKV8w+8IFEX3UQwORzdV8RFEq0tv/AKhxJFd2MUAFGk3Z/cqTFt2VSOd5tbbfr1EpoK8O+F1BlxY4o4ovUY8REqMylLCHgw8TLAgSr54RAZ1AXiaw0g6lswEgSwZYsn5Z6juuDRj5CVHM7Rl+fcsE1RgWAkc2XjEVyGQlGb3/AFAGqe39f1Dj1/IaNCD0Ff1LBzLLxLkbzLawbfEL1t4ZKHOY0FLx4LYKVFTuDFgMN8V9s1K3iPYP3MeBi1GviBPYdkP4iVDfWjf4xFZcJTnT5y2faMRrtUtP+I2zj7LApjwxxRYsZpBBU2lXCSUicCQwlKtL+J25Xqoo1PvEwqVnkiV6Bhjo0iO+oX3DhmIFLN4Ra8VCy3RmAMvIopZxX3fvHpYr85jR4NeCXLiurZ/EShKGyv8AcxrtA57hXkB0awycAFe77ApCzezE2MIAa1Ds1VwTsyfthlKpEempiQAaEXFpoHKdP9TuY3Zw/qGxKFiX9yjPBishYV6C4GlPipcLl7aXR+JQqBZS0lsW5r+L/JlCPyWlnx6naeMSokMEEHCRIkSJCbYyS8WEaBV/0+JjKD7y/iFq8CuAhmGmbeD9oUdLtkP3h0Qur/whqDxQbplAVa2DDLTK0qjUpTJrztBgfMYuY6mOwamrH0jYIrUX8brDMK6i1G9xZe/jqWqHwOpZGp4HE7gN4P3eirgKpGsF/wC93LHjg+EQLS4U1KwZfWOpyGIpmS2pWMN+6mUSYspg0DGLtuv7jRxgFp/e43s9IohUJQaX+IoJSMXY+I4Y6Wl6+TuIKgnewx1R95hLAruiNpTg1A/Mr1AtCJTyF3AkTkkHGnMJdB0Y/MYK/TK38RlG7rYHutQvgNUGCvNalrbM31fiEg6xp3/vqKAPCN/qMYEvGc18EeEBdxuLAitErhiBNgaTrMHZqaYPmFhULZhlDR7laRoFoDKrAHOjKGCXHkb31BS5vxK1WLiVFMG45Clbq7liLBa9TdVbu7yfaGVBBLapgBxbWX/uYskopaheYt3aZCovnxL9e8yhkzDdhL+7COoszIYUtD5Gz+4IKG68nyzRhWCB+e+qlmbUQrY3+fUTI4wi4VTOVg2+8QtFCwYfzKIKErBgfmC1CZWlfvU3JXnsfeZUiOJQw5YkZSJG4ZUmqqCC9gUWvjUND2bfj0TGsZC4vxjEVhnYbR/iMUiwOAfAN1L0rrCcn2Khgqma1v3mEaY4So/RCZpFaI/j+Y1GO1C/x1FhMZog1GoGi8Iv51GCKVWrx7TUMRt2k17g3hS1ee5UI9NRoIJiyBLC0SkVQXUyNazNQwuoQj0L6YJYYs6C3xqMoFisdy+14AXDVFZb9zNZEvEFeyH3xDJKQfbEBLUiLAhZdTNlPwsxvpFixZkQzLEBsD83LlACk1D4h1kqCpKGTNB2PydfMCFu10P7gEr0Ksxtxua2X5p/EQIM3YVtfHma0xB9PJ5hkA1hq7fMwixSICxWqtfxM3TG7n6lCuhAwX/Mva08J/16YARV5zlT43L+u2RUPFG7jWwK6Xpn93ADswFflzHs22p+zuAR7xL8w4ZHdZ+CVjSAKYrRGKMJjAh4pUK6vWj61A4V7AhDvN4jh+Qlm/uS5EXDYtARfQwNGviOqQeEObce5WBlm8uoLVVcI1VQt68QHAsIhovuYlZdXrJCsGF1UtkAUj/dSzGyu4yULOhqJdgXA3/Mrsx3+XBFvyY3U27BGyhseIVF3AqvRCUMYqXeocM8L4mY3FGFy/EFrvlfMYAxkXa+39SuRWIV9379RqykLtpHrffmCYQV3gMZFYbyzj1CkUZQBlqvzEUmVYd+nqZqqruzf7/mG86PwfzcvCUQP73AUNZQXF+WBCNR3kx/jcEdhgDpX5YCUNOH4XAg25XafEXMATdt/TiYxBPTv4MRLbeAr/Efj9ipR9MrKymWxYcEdhwZIIuIkc1Lu5fdibxVly2iNQNK7F/E8Uzu/cBRs1KXYYxEWpoqJSq3RomfRlzrxmXUt9jEsgjV5r/f1Fo4Ry3itxkgYBHNxVMIFpioqmOE9QOCLFithq+asZaZsmtAX8f7+Zc0rGSWe6zXuKCDqFfa/GdwoFKCa10v3uLZGAoJEPa+YFpEUrZpw719pry0oCPh38y53VAu6rz+o2ZTFs+sTMfPFxUw4RQXP3ftcbzcim1HQeNR10FYFyecS8jxtxb93UQDbkEP+xm8XBx0eCwx7lzFHwMe8gsbEILdxHCMs3iIeXcNlp9SqwrELd9y8AENyl0FjtxqW97CwDVdYhallrzqviZlaR1YxGNFXyzEUB+BlmOUEo9TJPLL2VVDXhaEfZFWNisqac1n7TPZh0/EX7RMxHXB+guLhZV/3fiUDq5C6s0fYZRipswL+NuvmA9qrm6q69jFlAKymnur0YdsVBQaq7G2/n3G0qPZc/b8kKSDSrR8ulyQLwhtpv8ArogQMVsZOiIUCoOM9t9Rfp68HcCGHEIYYHBYYpi4szFFHMj9SyQF5I0IYsd0xwiklDO4pb1qA+YipXirPE3Kg7S1AQyuv+SxTF03s9QmVYYGzH+YqVw9Wml2nwcQaSxfZIJqyMdYwZGzcGIyEz8TIzxACfjosRixhh4OLmmF7mXF3Gf7iXIAHQv0/aKgpmyhX3lNgsAma8MqClAcMMQKFWZWkrK+MRsEADZhJ7mO9S0gxsualvcDDjSMFRR7m7ge45tiii0wrDukRiURc1CuJYzCO4xKt3MS8mYqpoKgOBaCoRsNqYIXSmjdYlJQTQrN73phuhVgRKXV+s/5qMPV/IrDFN6m4VnU6vAV95g2AborUdbrL2kVp6OKUqCYnPjcUUcWLGFeMRmztpzYP9EY2HNgDX7LolZIBABTyJYyTU7XuAxLcz0x/wBgkF3U1T1ebhANdr5lJUJOIjTmUcfNVcTqPce7tt/bKcSw4hq8uqPESyVTBH2jvZUvbu39wos2G67hG8E+8aWYulGpnbWdSA1YXBuMNNRTJPmVPyILZS4CpkvcNm1xR/MaTdty8EXc7k3Ybg5BcHBYsAoQbxUtCDQc/wC1cC9QgXsYzcgKNPX3nfb0fsRL0uRLdvzw0EIlRIMQ/Srjwx7iilkWetioQabBuWKxC8hCwZdtKhpsIO1wPMMi2qUGB50xTZ9i4rsDj5mWf8RbFzxKl78n4uKCsCPklIQf4/mnRp9hSURLas/dCqGikTWLeDr4jDXHHg7gjjiiOF6qE1ueswUqAFmPv6l65CsFfWv8RmyJVjemPWYYAdYlRCHCkEFEVQrYsMe5WFxcWSLB8SnNgfuYMao/iFpRLyvHvRzhh1m+Nu0kRS8wEA0TfCrzUUwoplchdU+I1ZKO1SwBAg796v3O+efwZ77qtsUUAGHL1iY0TPyO3yuVtQ3fvJmJjwQzEggriforiiijhuyUWIFVREkCA1KhCCQiRIIuOjHdxxYY448scFzTtZYQNRsmT5iiIzFCAuokYylCU27gArcUksqppFKDcFNPv2Q+R2b7/iaog8W/qXC2JnaR7B8eYWoDoWn7kd2KmZlj1biL8eZegl60/wCyvqMx4KEHBGJZzKYRxWxRRbxFhZlbBZKG84p/czc4/lKqNnmCBAhCRMzGKOOPecx+Wbr3N0ebiimV1d9S3bxt57gdNRk6wCW1coEZeYXZlgYeAqWMNXAYtJ0yj01UCxawfaVpFbDeIXnYS6hTiKUDeWX1BqwuNB8pRsOr1uPvAd1M7oDa6v1ARDRXvlV9AzxFFHHHFFHHINe4HVC80cgQESdouDmJmdjl0ce44pVp7ckbsM0YFEWiUDHvtTNhMSLPJL+COY1EYrCmgQgAFfE2WadgQF8qWfqGMjVUzLxH3FFqaYqDxMzbQ+mJhtpjY+Im1WI10+/cYKnGoviR1AxY7zHHFHVvqOmo4oscUUc9Kh9lhBGAH24BiCBcY6izHFHRM0UzRzEzI8TK82H8yrOh+BX9TJDMshFbczFKArZ9XHLRIfxdjmpra0+B/mZh9UAmwXaOH6gPCBlUNNrBZB7oByGo61xuYyeoIhYE3CCF71BOMNE07sj4t0Mj17xP+lB8PAY8Bdx4Y+Ycccccc2nvEywv4+Jo4glRixxcGBmRmZxxbszI8gwUOjf31Ax/vz/cZCDtFnYQRgXEIKOPtvWIK7FG4b6NRnykxW3LWGGhNnbcVEMFsWbzcue+U4LmeNsMQ0nxM/dlZYM9Yg3xXFWRRxxR4Y4uCi/zG+/gNMbmEghFqL9KC0ubZhZvm+b+DJDLjC4ISnC6+BiYQyRBXDxhlx4vxHApm43MiGmU21uHu01A5Cyowc70RtIwqJUtoZ6C+4RQxEqVKlQai8hKXCp+GJosykGJDXFq8h3HFxUfBdvjMsW18w/DBAgRIsceWBO73MVeuc2cCi4LAvbVeYDVAfuDB7hzKzaDUCi4XZDcjNeIxWr4i40amaAx5zHaihZRWlqbbN+JWjjRtni5fC7lxYrZ7fkO27dPqFVmIij3O30J4qOOOOFawFy2bEZgoYgSox+kHzuaio2PFujwxxRcvzLC0P6QoQm8UiuYWZQbJXTiw+cTaLfAYNrURuG+5QagLqDMc1rzL830LnLwcWDmLL8RnN04UeXjtMx/+DRjDfOnM+8PJ4avH+8WfvHg+Poqx952+Y4za4HiSTEcEFlWRdfE3mUYEdsFkFNE/ZgHABgoHolrT//Z')
GO

INSERT INTO [dbo].[ctrl_usuario] ([id], [id_suc], [usuario], [password], [nombre], [apellido_paterno], [apellido_materno], [email], [telefono], [celular], [id_nivel], [id_acceso], [fecha_creacion], [f_actualizacion], [eliminado], [nombre_dms], [Contrasena_dms], [UltimoCambio_dms], [vf_perfil], [vcf_perfil]) VALUES (N'2', N'1', N'paquetes', N'b90e5422641334778ad1bd1c249a7941e96dd455', N'Fame ', N'Morelia', N'Matriz', N'rortiz@intelisis.com', N'3445566', N'4433998877', N'2', NULL,CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0', N'', N'', N'1900-01-01 00:00:00.000', NULL, NULL)
GO



-- ----------------------------
-- Table structure for dat_ag
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dat_ag]') AND type IN ('U'))
	DROP TABLE [dbo].[dat_ag]
GO

CREATE TABLE [dbo].[dat_ag] (
  [id] int  NOT NULL,
  [id_div] int  NOT NULL,
  [agencia] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [nom] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [intelisis_empresa] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [intelisis_db] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [intelisis_user] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [intelisis_password] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [intelisis_ip] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [razon_social] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [razon_social_corta] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[dat_ag] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dat_ag
-- ----------------------------
INSERT INTO [dbo].[dat_ag] ([id], [id_div], [agencia], [nom], [intelisis_empresa], [intelisis_db], [intelisis_user], [intelisis_password], [intelisis_ip], [razon_social], [razon_social_corta], [fecha_creacion], [fecha_actualizacion], [eliminado]) VALUES (N'1', N'1', N'DESARROLLO', N'Agencia', N'GMFAM', N'intelisis', N'sa', NULL, N'192.168.41.123', N'VETRASA LA URUCA GRAL CAÑAS', N'Razon Social',CAST(0xA6330200 AS SmallDateTime), CAST(0xA6330200 AS SmallDateTime), N'0')
GO


-- ----------------------------
-- Table structure for dat_corp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dat_corp]') AND type IN ('U'))
	DROP TABLE [dbo].[dat_corp]
GO

CREATE TABLE [dbo].[dat_corp] (
  [id] int  NOT NULL,
  [corporativo] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [nom] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[dat_corp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dat_corp
-- ----------------------------
INSERT INTO [dbo].[dat_corp] ([id], [corporativo], [nom], [fecha_creacion], [fecha_actualizacion], [eliminado]) VALUES (N'1', N'CORP1', N'Corporativo 1',CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0')
GO


-- ----------------------------
-- Table structure for dat_div
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dat_div]') AND type IN ('U'))
	DROP TABLE [dbo].[dat_div]
GO

CREATE TABLE [dbo].[dat_div] (
  [id] int  NOT NULL,
  [id_corp] int  NOT NULL,
  [division] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [nom] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[dat_div] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dat_div
-- ----------------------------
INSERT INTO [dbo].[dat_div] ([id], [id_corp], [division], [nom], [fecha_creacion], [fecha_actualizacion], [eliminado]) VALUES (N'1', N'1', N'DIV1', N'Division 1', CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0')
GO


-- ----------------------------
-- Table structure for dat_suc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dat_suc]') AND type IN ('U'))
	DROP TABLE [dbo].[dat_suc]
GO

CREATE TABLE [dbo].[dat_suc] (
  [id] int  NOT NULL,
  [id_ag] int  NULL,
  [sucursal] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [nom] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [id_dat_suc] int  NULL,
  [id_dat_dir_suc] int  NULL,
  [int_sucursal] int  NOT NULL,
  [int_almacen_serv] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [int_almacen_ref] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [matriz] tinyint  NULL,
  [servicios_web] int  NULL,
  [logo] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [logo_cabezera] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [id_pedido] int  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [website] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[dat_suc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dat_suc
-- ----------------------------
INSERT INTO [dbo].[dat_suc] ([id], [id_ag], [sucursal], [nom], [id_dat_suc], [id_dat_dir_suc], [int_sucursal], [int_almacen_serv], [int_almacen_ref], [matriz], [servicios_web], [logo], [logo_cabezera], [id_pedido], [fecha_creacion], [fecha_actualizacion], [eliminado], [website]) VALUES (N'1', N'1', N'SUCURSAL', N'Matriz Sucursal', N'1', N'1', N'0', N'S', N'R', N'1', N'0', NULL, N'assets/imagenes/logo_agencia.png', NULL, CAST(0xA6330200 AS SmallDateTime),CAST(0xA6330200 AS SmallDateTime), N'0', N'intelisis-solutions.com.mx')
GO


-- ----------------------------
-- Table structure for dms_art
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dms_art]') AND type IN ('U'))
	DROP TABLE [dbo].[dms_art]
GO

CREATE TABLE [dbo].[dms_art] (
  [Articulo] varchar(20) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Descripcion1] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Tipo] varchar(20) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Estatus] varchar(15) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [UltimoCambio] datetime  NULL,
  [Id_Ag] int  NULL
)
GO

ALTER TABLE [dbo].[dms_art] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dms_art
-- ----------------------------

-- ----------------------------
-- Table structure for dms_catalogo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dms_catalogo]') AND type IN ('U'))
	DROP TABLE [dbo].[dms_catalogo]
GO

CREATE TABLE [dbo].[dms_catalogo] (
  [id] int  NOT NULL,
  [Catalogo] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [Eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[dms_catalogo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dms_catalogo
-- ----------------------------
INSERT INTO [dbo].[dms_catalogo] ([id], [Catalogo], [Descripcion], [FechaActualizacion], [Eliminado]) VALUES (N'1', N'Cilindros', N'Cilindros', CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[dms_catalogo] ([id], [Catalogo], [Descripcion], [FechaActualizacion], [Eliminado]) VALUES (N'2', N'Transmision', N'Transmision', CAST(0xA6330200 AS SmallDateTime), N'0')
GO

INSERT INTO [dbo].[dms_catalogo] ([id], [Catalogo], [Descripcion], [FechaActualizacion], [Eliminado]) VALUES (N'3', N'Motor', N'Motor', CAST(0xA6330200 AS SmallDateTime), N'0')
GO


-- ----------------------------
-- Table structure for dms_catalogo_detalle
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[dms_catalogo_detalle]') AND type IN ('U'))
	DROP TABLE [dbo].[dms_catalogo_detalle]
GO

CREATE TABLE [dbo].[dms_catalogo_detalle] (
  [id_catalogo] int  NOT NULL,
  [Descripcion] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaActualizacion] smalldatetime  NULL,
  [Eliminado] bit  NULL,
  [Id_Ag] int  NULL
)
GO

ALTER TABLE [dbo].[dms_catalogo_detalle] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of dms_catalogo_detalle
-- ----------------------------

-- ----------------------------
-- Table structure for ListadoProspectos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ListadoProspectos]') AND type IN ('U'))
	DROP TABLE [dbo].[ListadoProspectos]
GO

CREATE TABLE [dbo].[ListadoProspectos] (
  [id] int  NOT NULL,
  [idSuc] int  NULL,
  [idUsuario] int  NULL,
  [Prospecto] varchar(770) COLLATE Modern_Spanish_CI_AS  NULL,
  [Celular] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [Activo] bit  NULL,
  [idVehiculo] int  NOT NULL,
  [Modelo] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Version] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoEvento] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion] varchar(256) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaEvento] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[ListadoProspectos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ListadoProspectos
-- ----------------------------

-- ----------------------------
-- Table structure for PaquetesHomologacionPrecio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PaquetesHomologacionPrecio]') AND type IN ('U'))
	DROP TABLE [dbo].[PaquetesHomologacionPrecio]
GO

CREATE TABLE [dbo].[PaquetesHomologacionPrecio] (
  [Servicio] int  NOT NULL,
  [Vehiculo] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [CodigoPaquete] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Homologacion] money  NULL,
  [Varios] money  NULL,
  [Actualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[PaquetesHomologacionPrecio] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PaquetesHomologacionPrecio
-- ----------------------------

-- ----------------------------
-- Table structure for PaquetesWeb
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PaquetesWeb]') AND type IN ('U'))
	DROP TABLE [dbo].[PaquetesWeb]
GO

CREATE TABLE [dbo].[PaquetesWeb] (
  [IdPaquete] int  NULL,
  [Regla] int  NULL,
  [Articulo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Modelo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cilindros] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Transmision] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Motor] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionC] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionL] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoPaquete] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Kilometraje] int  NULL,
  [ClavePlanta] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[PaquetesWeb] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PaquetesWeb
-- ----------------------------

-- ----------------------------
-- Table structure for ServicioPaquetes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicioPaquetes]') AND type IN ('U'))
	DROP TABLE [dbo].[ServicioPaquetes]
GO

CREATE TABLE [dbo].[ServicioPaquetes] (
  [Id] int  NOT NULL,
  [DescripcionC] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionL] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoPaquete] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Kilometraje] int  NULL,
  [Precio] money  NULL,
  [TipoPrecio] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Prorrateo] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [TTabulador] float(53)  NULL,
  [TFacturado] float(53)  NULL,
  [ClavePlanta] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estatus] int  NULL,
  [Actualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[ServicioPaquetes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ServicioPaquetes
-- ----------------------------

-- ----------------------------
-- Table structure for ServicioPaquetesD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicioPaquetesD]') AND type IN ('U'))
	DROP TABLE [dbo].[ServicioPaquetesD]
GO

CREATE TABLE [dbo].[ServicioPaquetesD] (
  [IdPaquete] int  NOT NULL,
  [Renglon] float(53)  NOT NULL,
  [Articulo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [SubtipoCuenta] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cantidad] float(53)  NULL,
  [TTabulado] float(53)  NULL,
  [AlmacenEsp] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [ListaPreciosEsp] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [PrecioUnitario] money  NULL,
  [Actualizacion] smalldatetime  NULL,
  [TipoArticulo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [PrecioTotal] money  NULL
)
GO

ALTER TABLE [dbo].[ServicioPaquetesD] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ServicioPaquetesD
-- ----------------------------

-- ----------------------------
-- Table structure for ServicioPaquetesR
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ServicioPaquetesR]') AND type IN ('U'))
	DROP TABLE [dbo].[ServicioPaquetesR]
GO

CREATE TABLE [dbo].[ServicioPaquetesR] (
  [IdPaquete] int  NULL,
  [Regla] int  NULL,
  [Condicion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Definicion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Actualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[ServicioPaquetesR] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ServicioPaquetesR
-- ----------------------------

-- ----------------------------
-- Table structure for VehiculosPaquetes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VehiculosPaquetes]') AND type IN ('U'))
	DROP TABLE [dbo].[VehiculosPaquetes]
GO

CREATE TABLE [dbo].[VehiculosPaquetes] (
  [Id] int  NOT NULL,
  [IdPaquete] int  NOT NULL,
  [Modelo] varchar(254) COLLATE Modern_Spanish_CI_AS  NULL,
  [Articulo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cilindros] int  NULL,
  [Transmision] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Motor] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Estatus] int  NULL,
  [Actualizacion] smalldatetime  NULL,
  [Regla] int  NULL
)
GO

ALTER TABLE [dbo].[VehiculosPaquetes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VehiculosPaquetes
-- ----------------------------

-- ----------------------------
-- Table structure for VIN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VIN]') AND type IN ('U'))
	DROP TABLE [dbo].[VIN]
GO

CREATE TABLE [dbo].[VIN] (
  [VIN] varchar(20) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Articulo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Pedimento] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [ClaveVehicular] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoUnidad] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Km] int  NULL,
  [KmSalida] int  NULL,
  [Motor] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Llave] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Aduana] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Fecha] datetime  NULL,
  [Aseguradora] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cliente] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [Conductor] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [TieneMovimientos] bit  NOT NULL,
  [Alta] datetime  NULL,
  [Empresa] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [Placas] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Poliza] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [PolizaTipo] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [PolizaVencimiento] datetime  NULL,
  [GarantiaVencimiento] datetime  NULL,
  [CodigoRadio] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoTransmision] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoColor] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoLlanta1] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoLlanta2] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoLlanta3] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoLlanta4] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CodigoLlanta5] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Registro] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaCartaCredito] datetime  NULL,
  [FechaFactura] datetime  NULL,
  [FechaUltimoServicio] datetime  NULL,
  [FechaSiguienteServicio] datetime  NULL,
  [PolizaImporte] money  NULL,
  [Costo] float(53)  NULL,
  [CostoConGastos] float(53)  NULL,
  [Tasa] float(53)  NULL,
  [Logico1] bit  NOT NULL,
  [Logico2] bit  NOT NULL,
  [Logico3] bit  NOT NULL,
  [Logico4] bit  NOT NULL,
  [Logico5] bit  NOT NULL,
  [CambioVIN] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CambioKm] int  NULL,
  [Modelo] varchar(4) COLLATE Modern_Spanish_CI_AS  NULL,
  [ClaveFinanciera] varchar(3) COLLATE Modern_Spanish_CI_AS  NULL,
  [NumeroOrden] varchar(6) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoCompra] varchar(1) COLLATE Modern_Spanish_CI_AS  NULL,
  [FolioFacturaCompra] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaFacturaCompra] datetime  NULL,
  [Mercado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [ClaveDistribuidor] varchar(3) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion1] varchar(38) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descripcion2] varchar(38) COLLATE Modern_Spanish_CI_AS  NULL,
  [PrecioBasicoDistribuidor] money  NULL,
  [PrecioBasicoPublico] money  NULL,
  [AjusteBasicoDistribuidor] money  NULL,
  [TotalAccesoriosDistribuidor] money  NULL,
  [TotalAccesoriosPublico] money  NULL,
  [TotalDescuentoAccesoriosMemo] money  NULL,
  [TotalDescuentoDistribuidorMemo] money  NULL,
  [TotalDescuentoPepPublico] money  NULL,
  [Descuento1Descripcion] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descuento1Distribuidor] money  NULL,
  [Descuento1Publico] money  NULL,
  [Descuento2Descripcion] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descuento2Distribuidor] money  NULL,
  [Descuento2Publico] money  NULL,
  [Descuento3Descripcion] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Descuento3Distribuidor] money  NULL,
  [Descuento3Publico] money  NULL,
  [SeguroProvincial] money  NULL,
  [GastosTraslado] money  NULL,
  [SeguroAsociacion] money  NULL,
  [Bonificacion15DiasSinIntereses] money  NULL,
  [ReembolsoTransportacion] money  NULL,
  [Bonificacion] money  NULL,
  [BonificacionEnPrecio] money  NULL,
  [GarantiaServicio] money  NULL,
  [Miscelaneos] money  NULL,
  [SubTotalFacturaCompra] money  NULL,
  [IVAFacturaCompra] money  NULL,
  [CoutaPublicidad] money  NULL,
  [TotalFacturaCompra] money  NULL,
  [NivelPrecios] varchar(3) COLLATE Modern_Spanish_CI_AS  NULL,
  [ColorExterior] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [ColorExteriorDescripcion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ColorInterior] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [ColorInteriorDescripcion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ClaveAduana] varchar(4) COLLATE Modern_Spanish_CI_AS  NULL,
  [PedimentoFecha] datetime  NULL,
  [CoutaFondoCivico] money  NULL,
  [CoutaFordStar] money  NULL,
  [OtrasOpciones] varchar(22) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaEntrada] datetime  NULL,
  [FechaSalida] datetime  NULL,
  [FechaPago] datetime  NULL,
  [VentaID] int  NULL,
  [CompraID] int  NULL,
  [NumeroEconomico] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Holograma] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaMRS] datetime  NULL,
  [FechaSalidaMRS] datetime  NULL,
  [Interfase] bit  NULL,
  [DiasLibresIntereses] int  NULL,
  [DiasLibresAdicionales] int  NULL,
  [UltimoPagoCostoPiso] datetime  NULL,
  [IntercambioDirecto] bit  NULL,
  [FechaImportacion] datetime  NULL,
  [Estatus] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [Situacion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [SituacionFecha] datetime  NULL,
  [SituacionUsuario] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [SituacionNota] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Agente] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [PrecioDistribuidor] money  NULL,
  [PrecioPublico] money  NULL,
  [PrecioContado] money  NULL,
  [ISANPublico] money  NULL,
  [ISANContado] money  NULL,
  [IVAPublico] money  NULL,
  [IVAContado] money  NULL,
  [FechaBaja] datetime  NULL,
  [BonoLealtad] bit  NULL,
  [OtrasBonificaciones1] money  NULL,
  [OtrasBonificaciones1F] datetime  NULL,
  [OtrasBonificaciones2] money  NULL,
  [OtrasBonificaciones2F] datetime  NULL,
  [OtrasBonificaciones3] money  NULL,
  [OtrasBonificaciones3F] datetime  NULL,
  [BonificacionContratoServicio] money  NULL,
  [BonificacionContratoServicioF] datetime  NULL,
  [TipoVenta] varchar(1) COLLATE Modern_Spanish_CI_AS  NULL,
  [ImporteVenta] money  NULL,
  [Contrato] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [FIFSCAR] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [FIFechaFactura] datetime  NULL,
  [FIMontoFinanciar] money  NULL,
  [FIFechaPagare] datetime  NULL,
  [FINumeroContrato] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [FIFechaCompra] datetime  NULL,
  [FITipoFinanciamiento] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [UltimaLlamada] datetime  NULL,
  [SiguienteLlamada] datetime  NULL,
  [CantidadLlamadas] int  NULL,
  [NoLlamar] bit  NULL,
  [ValidarVIN] bit  NULL,
  [Blindado] bit  NULL,
  [KmsGarantia] int  NULL,
  [VencimientoGarantia] datetime  NULL,
  [TipoGarantia] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [KmsAdicionales] int  NULL,
  [MesesAdicionales] int  NULL,
  [KmsGarantiaTipo] int  NULL,
  [VencimientoGarantiaTipo] datetime  NULL,
  [Certificado] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [KmsAdicionalesCertificado] int  NULL,
  [MesesAdicionalesCertificado] int  NULL,
  [KilometrajeInicial] int  NULL,
  [FechaVentaCertificado] datetime  NULL,
  [KilometrosGarantiaCertificado] int  NULL,
  [VencimientoGarantiaCertificado] datetime  NULL,
  [CCNoLocalizable] bit  NULL,
  [Procedencia] varchar(55) COLLATE Modern_Spanish_CI_AS  NULL,
  [VehiculoDemo] bit  NOT NULL,
  [UbicacionFisica] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cilindros] int  NULL,
  [Puertas] char(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [Pasajeros] int  NULL,
  [CapacidadCarga] int  NULL,
  [CapacidadTanque] int  NULL,
  [Combustible] char(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [AfectoImpuesto] bit  NOT NULL,
  [Transmision] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Repuve] varchar(8) COLLATE Modern_Spanish_CI_AS  NULL,
  [PrimeraLlamada] datetime  NULL,
  [ComentariosPrimeraLLamada] varchar(1000) COLLATE Modern_Spanish_CI_AS  NULL,
  [SegundaLlamada] datetime  NULL,
  [ComentariosSegundaLLamada] varchar(1000) COLLATE Modern_Spanish_CI_AS  NULL,
  [TerceraLlamada] datetime  NULL,
  [ComentariosTerceraLLamada] varchar(1000) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionProximoServicio] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ClavePatenteAduana] char(4) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescPaisOrigen] char(40) COLLATE Modern_Spanish_CI_AS  NULL,
  [CuartaLlamada] datetime  NULL,
  [ComentariosCuartaLLamada] varchar(1000) COLLATE Modern_Spanish_CI_AS  NULL,
  [QuintaLlamada] datetime  NULL,
  [ComentariosQuintaLLamada] varchar(1000) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionLarga] varchar(150) COLLATE Modern_Spanish_CI_AS  NULL,
  [Holdback] money  NULL,
  [CategoriaVenta] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [MargenUtilidad] float(53)  NULL,
  [FolioGMAC] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [Cheque] bit  NULL,
  [DealerOrigen] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [DealerDestino] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [FacturaDealer] varchar(12) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaUltimaReparacion] datetime  NULL,
  [FechaProximaReservacion] datetime  NULL,
  [FechaUltimoServicioFord] datetime  NULL,
  [DescripcionUltimoServicio] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [DescripcionUltimaReparacion] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [KMReparacion] int  NULL,
  [ComentariosUltimaLLamada] text COLLATE Modern_Spanish_CI_AS  NULL,
  [TieneServicio] bit  NULL,
  [MotorLts] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoVehiculoQC] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [TipoVehiculoDemo] char(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CteResponsable] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [CteRespNombre] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [CteRespTel] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaDOFU] datetime  NULL,
  [UsadosAdquisicion] money  NULL,
  [UsadosEBC] money  NULL,
  [FechaCompra] datetime  NULL,
  [PlacasCompra] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [CostoConGasto] float(53)  NULL
)
GO

ALTER TABLE [dbo].[VIN] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VIN
-- ----------------------------

-- ----------------------------
-- Table structure for VIN2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[VIN2]') AND type IN ('U'))
	DROP TABLE [dbo].[VIN2]
GO

CREATE TABLE [dbo].[VIN2] (
  [Cilindros] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [Transmision] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [Motor] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[VIN2] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of VIN2
-- ----------------------------
