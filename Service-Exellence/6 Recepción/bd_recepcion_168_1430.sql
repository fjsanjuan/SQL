/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.41.168,1430
 Source Server Type    : SQL Server
 Source Server Version : 12006164
 Source Host           : 192.168.41.168:1430
 Source Catalog        : Recepcion
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12006164
 File Encoding         : 65001

 Date: 01/11/2021 23:04:05
*/


-- ----------------------------
-- Table structure for agencia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[agencia]') AND type IN ('U'))
	DROP TABLE [dbo].[agencia]
GO

CREATE TABLE [dbo].[agencia] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ip_agencia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [usuario_agencia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [bd_agencia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [pass_agencia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [consecutivo] int DEFAULT ((0)) NULL,
  [razon_social] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_calle_fiscal] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_col_fiscal] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_numExt_fiscal] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_numInt_fiscal] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_ciudad_fiscal] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_estado_fiscal] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_cp_fiscal] varchar(8) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[agencia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of agencia
-- ----------------------------
SET IDENTITY_INSERT [dbo].[agencia] ON
GO

INSERT INTO [dbo].[agencia] ([id], [nombre], [ip_agencia], [usuario_agencia], [bd_agencia], [pass_agencia], [fecha_creacion], [fecha_actualizacion], [eliminado], [consecutivo], [razon_social], [dom_calle_fiscal], [dom_col_fiscal], [dom_numExt_fiscal], [dom_numInt_fiscal], [dom_ciudad_fiscal], [dom_estado_fiscal], [dom_cp_fiscal]) VALUES (N'1', N'MIALT', N'192.168.4.200,1429', N'sa', N'FA_Altozano', N'4u0v5j0b', N'', N'', N'0', N'13', N'Fame Altozano, S.A. de C.V.', N'Adolfo Ruiz Cortines', N'Jardines del Pedregal', N'4000', N'BIS', NULL, N'Ciudad de México', N'01900')
GO

SET IDENTITY_INSERT [dbo].[agencia] OFF
GO


-- ----------------------------
-- Table structure for archivo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[archivo]') AND type IN ('U'))
	DROP TABLE [dbo].[archivo]
GO

CREATE TABLE [dbo].[archivo] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_orden_servicio] int  NULL,
  [tipo_archivo] int  NULL,
  [ruta_archivo] nvarchar(500) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [comentario] nvarchar(300) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[archivo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of archivo
-- ----------------------------


-- ----------------------------
-- Table structure for bitacora_lavado
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[bitacora_lavado]') AND type IN ('U'))
	DROP TABLE [dbo].[bitacora_lavado]
GO

CREATE TABLE [dbo].[bitacora_lavado] (
  [id_servicio] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inicia_lavado] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [finaliza_lavado] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [FechaCreacion] timestamp  NULL
)
GO

ALTER TABLE [dbo].[bitacora_lavado] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of bitacora_lavado
-- ----------------------------

-- ----------------------------
-- Table structure for datos_sucursal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[datos_sucursal]') AND type IN ('U'))
	DROP TABLE [dbo].[datos_sucursal]
GO

CREATE TABLE [dbo].[datos_sucursal] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_sucursal] int  NULL,
  [dom_calle] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_numExt] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_numInt] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_colonia] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_cp] int  NULL,
  [dom_ciudad] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dom_estado] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [telefono] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [cedula_empresarial] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [reg_cam_nal_com] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [email_contacto] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [sitio_web] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [horario_recep] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [horario_caja] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [rfc] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [ruta_logo] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [noyexpediente] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [horario_entrega] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[datos_sucursal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of datos_sucursal
-- ----------------------------
SET IDENTITY_INSERT [dbo].[datos_sucursal] ON
GO

INSERT INTO [dbo].[datos_sucursal] ([id], [id_sucursal], [dom_calle], [dom_numExt], [dom_numInt], [dom_colonia], [dom_cp], [dom_ciudad], [dom_estado], [telefono], [cedula_empresarial], [reg_cam_nal_com], [email_contacto], [sitio_web], [horario_recep], [horario_caja], [rfc], [ruta_logo], [noyexpediente], [horario_entrega]) VALUES (N'1', N'1', N'Blvd López Portillo', N'201', NULL, N'Dependencias Federales', N'98618', N'Guadalupe', N'Michoacan', N'(492) 923 3413 ', NULL, NULL, N'buzondesugerencias@ford.com', N'www.ford.com', N'Lunes a Viernes de 8 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 8:30 AM a 2 PM', N'Lunes a Viernes de 8 AM a 2 PM  y de 4 PM a 7 PM los Sábados de 8:30 AM a 2 PM', N'ACZ970422FS0
', N'', N'34-2016, Expediente No. PFC.B.E.7/000042-2016', NULL)
GO

SET IDENTITY_INSERT [dbo].[datos_sucursal] OFF
GO


-- ----------------------------
-- Table structure for firma_electronica
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[firma_electronica]') AND type IN ('U'))
	DROP TABLE [dbo].[firma_electronica]
GO

CREATE TABLE [dbo].[firma_electronica] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_orden_servicio] int  NULL,
  [firma] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [firma_multipuntos] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_formatoInventario] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_renunciaGarantia] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[firma_electronica] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of firma_electronica
-- ----------------------------



-- ----------------------------
-- Table structure for mov_servicio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[mov_servicio]') AND type IN ('U'))
	DROP TABLE [dbo].[mov_servicio]
GO

CREATE TABLE [dbo].[mov_servicio] (
  [id_mov] int  IDENTITY(1,1) NOT NULL,
  [movimiento] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [eliminado] int  NULL,
  [fecha_actualizacion] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[mov_servicio] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of mov_servicio
-- ----------------------------
SET IDENTITY_INSERT [dbo].[mov_servicio] ON
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'1', N'Servicio', N'0', N'2019-08-08 10:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'2', N'servicio2', N'0', N'2019-08-08 10:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'3', N'Servicio HYP', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'4', N'Servicio Garantia', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'5', N'Servicio Reclamacion', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'6', N'Servicio', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'7', N'Serv Linc HYP', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'8', N'Serv Linc Garantia', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'9', N'Serv Linc Reclam', N'0', N'2019-12-08 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'10', N'Serv Linc', N'0', N'2019-12-08 13:16:00')
GO

SET IDENTITY_INSERT [dbo].[mov_servicio] OFF
GO


-- ----------------------------
-- Table structure for orden_servicio
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orden_servicio]') AND type IN ('U'))
	DROP TABLE [dbo].[orden_servicio]
GO

CREATE TABLE [dbo].[orden_servicio] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [cliente] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [vin] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [num_orden] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [num_cita] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [asesor] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [torre] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_recepcion] smalldatetime  NULL,
  [hora_recepcion] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_entrega] smalldatetime  NULL,
  [hora_entrega] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [nombre_cliente] varchar(200) COLLATE Modern_Spanish_CI_AS  NULL,
  [ap_cliente] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [am_cliente] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [nom_compania] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [nom_contacto_compania] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [ap_contacto_compania] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [am_contacto_compania] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [email_cliente] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [email_compania] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [rfc_cliente] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_calle] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_num_ext] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_num_int] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_colonia] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_municipio] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_estado] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [dir_cp] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [tel_movil] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [otro_tel] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [placas_v] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [vin_v] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [kilometraje_v] float(53)  NULL,
  [marca_v] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [anio_modelo_v] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [color_v] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [tipo_orden] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [subtotal_orden] float(53)  NULL,
  [iva_orden] float(53)  NULL,
  [anticipo] float(53)  NULL,
  [total_orden] float(53)  NULL,
  [clave_asesor] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [id_orden_intelisis] int  NULL,
  [id_sucursal_intelisis] int  NULL,
  [multipuntos] int DEFAULT ((0)) NULL,
  [regimen] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [torrecolor] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [torrenumero] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [comentario_cliente] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [comentario_tecnico_multip] nvarchar(2500) COLLATE Modern_Spanish_CI_AS  NULL,
  [iva_aplicado] float(53)  NULL,
  [acepta_termCond] bit  NULL,
  [fecha_termCond] datetime  NULL
)
GO

ALTER TABLE [dbo].[orden_servicio] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for orden_servicio_desglose
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orden_servicio_desglose]') AND type IN ('U'))
	DROP TABLE [dbo].[orden_servicio_desglose]
GO

CREATE TABLE [dbo].[orden_servicio_desglose] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NULL,
  [articulo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [descripcion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [cantidad] float(53)  NULL,
  [precio_unitario] float(53)  NULL,
  [total] float(53)  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[orden_servicio_desglose] SET (LOCK_ESCALATION = TABLE)
GO



-- ----------------------------
-- Table structure for orden_servicio_inspeccion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[orden_servicio_inspeccion]') AND type IN ('U'))
	DROP TABLE [dbo].[orden_servicio_inspeccion]
GO

CREATE TABLE [dbo].[orden_servicio_inspeccion] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_servicio] int  NOT NULL,
  [cajuela] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [exteriores] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [documentacion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [gasolina] varchar(3) COLLATE Modern_Spanish_CI_AS  NULL,
  [dejaArticulos] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [articulos] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [aceiteMotor] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [direccionHidraulica] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [liquidoTransmision] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [liquidoLimpiaPara] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [liquidoFreno] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [pruebaParabrisas] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [plumas] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [llantas] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [tambores] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [discos] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [balatas] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [img] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [bateria] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [corriente_fabrica] int  NULL,
  [corriente_real] int  NULL,
  [nivel_carga] int  NULL,
  [luces] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [parabrisas] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [multipuntos] bit DEFAULT ((0)) NULL,
  [multipuntos_box] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [multipuntos_input] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [perdida_fluidos] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [nivel_fluidos_cambiado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [plumaslimp_cambiado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [bateria_cambiado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [sistemas1_cambiado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [sistemas2_cambiado] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [deposito_refrigerante] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [multipuntos_text] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [tecnico_inspeccion] varchar(150) COLLATE Modern_Spanish_CI_AS  NULL,
  [claxon] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [luces_int] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [radio] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [pantalla] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [ac] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [encendedor] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [vidrios] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [espejos] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [seguros_ele] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [co] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [asientosyvesti] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [tapetes] varchar(13) COLLATE Modern_Spanish_CI_AS  NULL,
  [multipuntos_radio] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [extension_garantia] varchar(2) COLLATE Modern_Spanish_CI_AS  NULL,
  [existen_danios] bit  NULL,
  [dan_costDerecho] bit  NULL,
  [dan_parteDel] bit  NULL,
  [dan_intAsAlf] bit  NULL,
  [dan_costIzq] bit  NULL,
  [dan_parteTras] bit  NULL,
  [dan_cristFaros] bit  NULL,
  [inf_sistEsc] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_amort] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_tuberias] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_transeje_transm] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_sistDir] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_chasisSucio] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [inf_golpesEspecif] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_ddBalata] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_ddDisco] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_ddNeumat] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_diBalata] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_diDisco] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_diNeumat] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tdBalata] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tdDisco] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tdNeumat] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tiBalata] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tiDisco] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_tiNeumat] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sfrenos_refNeumat] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [reqRev_inferior] bit  NULL,
  [reqRev_sistFrenos] bit  NULL,
  [profecoFame] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[orden_servicio_inspeccion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of orden_servicio_inspeccion
-- ----------------------------


-- ----------------------------
-- Table structure for ParametrosAgencia
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ParametrosAgencia]') AND type IN ('U'))
	DROP TABLE [dbo].[ParametrosAgencia]
GO

CREATE TABLE [dbo].[ParametrosAgencia] (
  [IdParametro] int  IDENTITY(1,1) NOT NULL,
  [Clave] varchar(10) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Descripcion] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Valor] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [Grupo] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Empresa] varchar(5) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [Sucursal] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ParametrosAgencia] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ParametrosAgencia
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ParametrosAgencia] ON
GO

SET IDENTITY_INSERT [dbo].[ParametrosAgencia] OFF
GO


-- ----------------------------
-- Table structure for perfil
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[perfil]') AND type IN ('U'))
	DROP TABLE [dbo].[perfil]
GO

CREATE TABLE [dbo].[perfil] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [perfil] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[perfil] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of perfil
-- ----------------------------
SET IDENTITY_INSERT [dbo].[perfil] ON
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'1', N'Superusuario', N'2018-10-11 12:16:00', N'0')
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'2', N'Recepcionista', N'2018-10-11 12:16:00', N'0')
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'3', N'Asesor', N'2018-10-11 12:16:00', N'0')
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'4', N'Jefe de Taller', N'2018-10-11 12:17:00', N'1')
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'5', N'Técnico', N'2018-10-11 12:17:00', N'1')
GO

INSERT INTO [dbo].[perfil] ([id], [perfil], [fecha_creacion], [eliminado]) VALUES (N'6', N'Refacciones', N'2018-10-11 12:17:00', N'0')
GO

SET IDENTITY_INSERT [dbo].[perfil] OFF
GO


-- ----------------------------
-- Table structure for presupuesto_detalle
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[presupuesto_detalle]') AND type IN ('U'))
	DROP TABLE [dbo].[presupuesto_detalle]
GO

CREATE TABLE [dbo].[presupuesto_detalle] (
  [id_articulo] int  IDENTITY(1,1) NOT NULL,
  [id_presupuesto] int  NOT NULL,
  [cve_articulo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [descripcion] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [cantidad] float(53)  NULL,
  [precio_unitario] float(53)  NULL,
  [total_arts] float(53)  NULL,
  [autorizado] bit  NULL,
  [comentario] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [quien_autoriza] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_autorizacion] datetime  NULL
)
GO

ALTER TABLE [dbo].[presupuesto_detalle] SET (LOCK_ESCALATION = TABLE)
GO



-- ----------------------------
-- Table structure for presupuestos
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[presupuestos]') AND type IN ('U'))
	DROP TABLE [dbo].[presupuestos]
GO

CREATE TABLE [dbo].[presupuestos] (
  [id_presupuesto] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NOT NULL,
  [fecha_creacion] smalldatetime  NULL,
  [eliminado] int  NULL,
  [total_presupuesto] float(53)  NULL,
  [autorizado] int  NULL,
  [vista_email] int  NULL
)
GO

ALTER TABLE [dbo].[presupuestos] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of presupuestos
-- ----------------------------


-- ----------------------------
-- Table structure for sucursal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sucursal]') AND type IN ('U'))
	DROP TABLE [dbo].[sucursal]
GO

CREATE TABLE [dbo].[sucursal] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_agencia] int  NULL,
  [nombre] varchar(100) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [fecha_actualizacion] smalldatetime  NULL,
  [eliminado] bit  NULL,
  [id_intelisis] int  NULL,
  [id_servicio] int  NULL,
  [rampas] int  NULL,
  [horas_rampas] varchar(8) COLLATE Modern_Spanish_CI_AS  NULL,
  [rampas_x_disponibilidad] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [servicio_express] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [max_agenexpress] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [max_agennormal] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [hora_Actualizacion] smalldatetime  NULL,
  [empresa] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [sucursal_int] int  NULL,
  [almacen_servicio] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [almacen_refacciones] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [moneda] nvarchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [sucursal_marca] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [email_refacciones] varchar(200) COLLATE Modern_Spanish_CI_AS  NULL,
  [tickaje] bit  NULL,
  [mail_host] varchar(90) COLLATE Modern_Spanish_CI_AS  NULL,
  [mail_smtpAuth] bit  NULL,
  [mail_userName] varchar(90) COLLATE Modern_Spanish_CI_AS  NULL,
  [mail_password] varchar(65) COLLATE Modern_Spanish_CI_AS  NULL,
  [mail_smtpSecure] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [mail_port] int  NULL
)
GO

ALTER TABLE [dbo].[sucursal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sucursal
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sucursal] ON
GO

INSERT INTO [dbo].[sucursal] ([id], [id_agencia], [nombre], [fecha_creacion], [fecha_actualizacion], [eliminado], [id_intelisis], [id_servicio], [rampas], [horas_rampas], [rampas_x_disponibilidad], [servicio_express], [max_agenexpress], [max_agennormal], [hora_Actualizacion], [empresa], [sucursal_int], [almacen_servicio], [almacen_refacciones], [moneda], [sucursal_marca], [email_refacciones], [tickaje], [mail_host], [mail_smtpAuth], [mail_userName], [mail_password], [mail_smtpSecure], [mail_port]) VALUES (N'1', N'1', N'Qro Mitsu', N'', N'', N'0', N'1', N'1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'MIALT', N'1', N'S', N'R', N'PESOS', N'FAME', N'sistemas.intelisis@gmail.com', N'0', NULL, NULL, NULL, NULL, NULL, NULL)
GO




SET IDENTITY_INSERT [dbo].[sucursal] OFF
GO


-- ----------------------------
-- Table structure for tipo_archivo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[tipo_archivo]') AND type IN ('U'))
	DROP TABLE [dbo].[tipo_archivo]
GO

CREATE TABLE [dbo].[tipo_archivo] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [tipo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [eliminado] bit  NULL
)
GO

ALTER TABLE [dbo].[tipo_archivo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of tipo_archivo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[tipo_archivo] ON
GO

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'1', N'imagen inspeccion', N'', N'0')
GO

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'2', N'imagen seguimiento', N'', N'0')
GO

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'3', N'imagen multipuntos', N'', N'0')
GO

SET IDENTITY_INSERT [dbo].[tipo_archivo] OFF
GO


-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usuarios]') AND type IN ('U'))
	DROP TABLE [dbo].[usuarios]
GO

CREATE TABLE [dbo].[usuarios] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [usuario] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [nombre] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [apellidos] varchar(45) COLLATE Modern_Spanish_CI_AS  NULL,
  [email] varchar(45) COLLATE Modern_Spanish_CI_AS  NULL,
  [salt] varchar(45) COLLATE Modern_Spanish_CI_AS  NULL,
  [password] varchar(65) COLLATE Modern_Spanish_CI_AS  NULL,
  [perfil] int  NULL,
  [creado] datetime DEFAULT (getdate()) NULL,
  [eliminado] tinyint  NULL,
  [id_sucursal] int  NULL,
  [cve_intelisis] varchar(25) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_electronica] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [actualizado] smalldatetime  NULL
)
GO

ALTER TABLE [dbo].[usuarios] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of usuarios
-- ----------------------------
SET IDENTITY_INSERT [dbo].[usuarios] ON
GO

INSERT INTO [dbo].[usuarios] ([id], [usuario], [nombre], [apellidos], [email], [salt], [password], [perfil], [creado], [eliminado], [id_sucursal], [cve_intelisis], [firma_electronica], [actualizado]) VALUES (N'1', N'SOPDESA', N'Intelisis', N'Solutions', N'desarrollo@intelisis.com', N'7db5fsPGzuNlcDwISEHyxAQ6', N'db9ddccc9a72cd4a384a9786883ed9df0c8d0111258580cede639753f82d4e3f', N'1', N'2018-05-12 17:46:34.347', N'0', N'2', N'AS', NULL, NULL)
GO


SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO


-- ----------------------------
-- function structure for existeOrdenCita
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[existeOrdenCita]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[existeOrdenCita]
GO

CREATE FUNCTION [dbo].[existeOrdenCita] ( @cliente VARCHAR ( 30 ), @vin VARCHAR ( 30 ), @movId VARCHAR ( 30 ) ) 
RETURNS VARCHAR ( 20 ) 
AS BEGIN
	DECLARE
		@RES VARCHAR ( 20 ) 

			--	SELECT TOP 1 @RES =  id  FROM orden_servicio 
			--	WHERE cliente = @cliente AND vin =
		 --@vin AND num_cita =@movId 
		 --and id_orden_intelisis IS NULL
		 --AND CONVERT(DATE,fecha_creacion)   = CONVERT (DATE, GETDATE())
			--	ORDER BY ID DESC

		IF @movId = '0'
		BEGIN
			SELECT TOP 1 @RES =  id  FROM orden_servicio 
			WHERE cliente = @cliente 
			AND vin =@vin 
			AND num_cita =@movId 
			AND id_orden_intelisis IS NULL
			AND CONVERT(DATE,fecha_creacion)   = CONVERT (DATE, GETDATE())
		END 
		ELSE
		BEGIN
			SELECT TOP 1 @RES =  id  FROM orden_servicio 
			WHERE cliente = @cliente 
			AND vin =@vin 
			AND num_cita =@movId 
		END

	RETURN @RES 
END
GO





-- ----------------------------
-- Primary Key structure for table agencia
-- ----------------------------
ALTER TABLE [dbo].[agencia] ADD CONSTRAINT [PK__agencia__3213E83F2AA87598] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table archivo
-- ----------------------------
ALTER TABLE [dbo].[archivo] ADD CONSTRAINT [PK__archivo__3213E83FD3B95C35] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table datos_sucursal
-- ----------------------------
ALTER TABLE [dbo].[datos_sucursal] ADD CONSTRAINT [PK__datos_su__3213E83FAEB0A91B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table firma_electronica
-- ----------------------------
ALTER TABLE [dbo].[firma_electronica] ADD CONSTRAINT [PK__firma_el__3213E83F85226841] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table mov_servicio
-- ----------------------------
ALTER TABLE [dbo].[mov_servicio] ADD CONSTRAINT [PK__mov_serv__6C8843B800C38F97] PRIMARY KEY CLUSTERED ([id_mov])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO





-- ----------------------------
-- Primary Key structure for table orden_servicio
-- ----------------------------
ALTER TABLE [dbo].[orden_servicio] ADD CONSTRAINT [PK__orden_se__3213E83FF6266071] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO





-- ----------------------------
-- Primary Key structure for table orden_servicio_desglose
-- ----------------------------
ALTER TABLE [dbo].[orden_servicio_desglose] ADD CONSTRAINT [PK__orden_se__3213E83F91DFAD7E] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Uniques structure for table orden_servicio_inspeccion
-- ----------------------------
ALTER TABLE [dbo].[orden_servicio_inspeccion] ADD CONSTRAINT [UQ__orden_se__3213E83EF7EADF47] UNIQUE NONCLUSTERED ([id] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table orden_servicio_inspeccion
-- ----------------------------
ALTER TABLE [dbo].[orden_servicio_inspeccion] ADD CONSTRAINT [PK__orden_se__E4EEEFC22A11159D] PRIMARY KEY CLUSTERED ([id], [id_servicio])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO





-- ----------------------------
-- Primary Key structure for table perfil
-- ----------------------------
ALTER TABLE [dbo].[perfil] ADD CONSTRAINT [PK__perfil__3213E83F456F6496] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table presupuesto_detalle
-- ----------------------------
ALTER TABLE [dbo].[presupuesto_detalle] ADD CONSTRAINT [PK__presupue__3F6E8288E12EE8E0] PRIMARY KEY CLUSTERED ([id_articulo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table presupuestos
-- ----------------------------
ALTER TABLE [dbo].[presupuestos] ADD CONSTRAINT [PK__presupue__3E94B4E537A8643F] PRIMARY KEY CLUSTERED ([id_presupuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO



-- ----------------------------
-- Primary Key structure for table sucursal
-- ----------------------------
ALTER TABLE [dbo].[sucursal] ADD CONSTRAINT [PK__sucursal__3213E83F62B85F32] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Primary Key structure for table tipo_archivo
-- ----------------------------
ALTER TABLE [dbo].[tipo_archivo] ADD CONSTRAINT [PK__tipo_arc__3213E83F7F9EA570] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO




-- ----------------------------
-- Uniques structure for table usuarios
-- ----------------------------
ALTER TABLE [dbo].[usuarios] ADD CONSTRAINT [Email_Unico] UNIQUE NONCLUSTERED ([email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table usuarios
-- ----------------------------
ALTER TABLE [dbo].[usuarios] ADD CONSTRAINT [PK__usuarios__3213E83F4E055736] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table archivo
-- ----------------------------
ALTER TABLE [dbo].[archivo] ADD CONSTRAINT [FK__archivo__id_orde__30F848ED] FOREIGN KEY ([id_orden_servicio]) REFERENCES [dbo].[orden_servicio] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[archivo] ADD CONSTRAINT [FK__archivo__tipo_ar__31EC6D26] FOREIGN KEY ([tipo_archivo]) REFERENCES [dbo].[tipo_archivo] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table sucursal
-- ----------------------------
ALTER TABLE [dbo].[sucursal] ADD CONSTRAINT [FK__sucursal__id_age__32E0915F] FOREIGN KEY ([id_agencia]) REFERENCES [dbo].[agencia] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

