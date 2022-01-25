/*
 Navicat Premium Data Transfer

 Source Server         : qwerty
 Source Server Type    : SQL Server
 Source Server Version : 11007507
 Source Host           : 192.168.41.168:1433
 Source Catalog        : Recepcion
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11007507
 File Encoding         : 65001

 Date: 04/01/2022 20:58:34
*/


-- ----------------------------
-- Table structure for verificacion_refacciones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[verificacion_refacciones]') AND type IN ('U'))
	DROP TABLE [dbo].[verificacion_refacciones]
GO

CREATE TABLE [dbo].[verificacion_refacciones] (
  [id_presupuesto] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NULL,
  [fecha_creacion] smalldatetime  NULL,
  [eliminado] int DEFAULT ((0)) NULL,
  [total_presupuesto] float(53)  NULL,
  [autorizado] bit DEFAULT ((0)) NULL,
  [vista_email] int DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[verificacion_refacciones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for verificacion_refacciones
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[verificacion_refacciones]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table verificacion_refacciones
-- ----------------------------
ALTER TABLE [dbo].[verificacion_refacciones] ADD CONSTRAINT [PK_verificacion_refacciones] PRIMARY KEY CLUSTERED ([id_presupuesto])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for detalles_verificacion_refacciones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[detalles_verificacion_refacciones]') AND type IN ('U'))
	DROP TABLE [dbo].[detalles_verificacion_refacciones]
GO

CREATE TABLE [dbo].[detalles_verificacion_refacciones] (
  [id_articulo] int  IDENTITY(1,1) NOT NULL,
  [id_presupuesto] int  NOT NULL,
  [cve_articulo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [descripcion] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [cantidad] float(53)  NULL,
  [precio_unitario] float(53)  NULL,
  [total_arts] float(53)  NULL,
  [en_existencia] bit DEFAULT ((0)) NULL,
  [comentario] varchar(255) COLLATE Modern_Spanish_CI_AS  NULL,
  [quien_autoriza] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [fecha_autorizacion] datetime  NULL
)
GO

ALTER TABLE [dbo].[detalles_verificacion_refacciones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for detalles_verificacion_refacciones
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[detalles_verificacion_refacciones]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table detalles_verificacion_refacciones
-- ----------------------------
ALTER TABLE [dbo].[detalles_verificacion_refacciones] ADD CONSTRAINT [PK_detalles_verificacion_refacciones] PRIMARY KEY CLUSTERED ([id_articulo])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for diagnostico_tecnico
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[diagnostico_tecnico]') AND type IN ('U'))
	DROP TABLE [dbo].[diagnostico_tecnico]
GO

CREATE TABLE [dbo].[diagnostico_tecnico] (
  [id_diagnostico] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NOT NULL,
  [parte_causante] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [causa_falla] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [equipo_diagnostico] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [reparacion_efectuada] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [clave_defect] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [retorno_partes] date DEFAULT NULL NULL,
  [mecanico_clave] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [costo_tiempo] int  NULL,
  [terminado] bit  NULL,
  [jefe_de_taller] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_jefe_taller] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[diagnostico_tecnico] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for diagnostico_tecnico
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[diagnostico_tecnico]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table diagnostico_tecnico
-- ----------------------------
ALTER TABLE [dbo].[diagnostico_tecnico] ADD CONSTRAINT [PK_detalles_diagnostico_tecnico] PRIMARY KEY CLUSTERED ([id_diagnostico])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for detalles_diagnostico_tecnico
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[detalles_diagnostico_tecnico]') AND type IN ('U'))
	DROP TABLE [dbo].[detalles_diagnostico_tecnico]
GO

CREATE TABLE [dbo].[detalles_diagnostico_tecnico] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_diagnostico] int  NOT NULL,
  [num_reparacion] int  NULL,
  [luz_de_falla] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [tren_motriz] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [codigos] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[detalles_diagnostico_tecnico] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for detalles_diagnostico_tecnico
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[detalles_diagnostico_tecnico]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table detalles_diagnostico_tecnico
-- ----------------------------
ALTER TABLE [dbo].[detalles_diagnostico_tecnico] ADD CONSTRAINT [PK_diagnostico_tecnico] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for requisiciones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[requisiciones]') AND type IN ('U'))
	DROP TABLE [dbo].[requisiciones]
GO

CREATE TABLE [dbo].[requisiciones] (
  [id_requisicion] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NOT NULL,
  [id_usuario] int  NULL,
  [no_requisicion] int  NULL,
  [fecha_requisicion] smalldatetime  NULL,
  [fecha_recepcion] smalldatetime  NULL,
  [nom_tecnico] varchar(30) COLLATE Modern_Spanish_CI_AS  NULL,
  [total_presupuesto] float(53)  NULL,
  [entregado] bit DEFAULT ((0)) NULL,
  [firma_de_admon] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_de_tecnico] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL,
  [autorizado] bit  NULL
)
GO

ALTER TABLE [dbo].[requisiciones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for requisiciones
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[requisiciones]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table requisiciones
-- ----------------------------
ALTER TABLE [dbo].[requisiciones] ADD CONSTRAINT [PK_requisiciones] PRIMARY KEY CLUSTERED ([id_requisicion])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for detalles_requisiciones
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[detalles_requisiciones]') AND type IN ('U'))
	DROP TABLE [dbo].[detalles_requisiciones]
GO

CREATE TABLE [dbo].[detalles_requisiciones] (
  [id_detalles] int  IDENTITY(1,1) NOT NULL,
  [id_requisicion] int  NOT NULL,
  [cantidad] int  NULL,
  [descripcion] varchar(250) COLLATE Modern_Spanish_CI_AS  NULL,
  [precio_unitario] float(53)  NULL,
  [total_arts] float(53)  NULL,
  [cve_articulo] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[detalles_requisiciones] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for detalles_requisiciones
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[detalles_requisiciones]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table detalles_requisiciones
-- ----------------------------
ALTER TABLE [dbo].[detalles_requisiciones] ADD CONSTRAINT [PK_detalles_requisiciones] PRIMARY KEY CLUSTERED ([id_detalles])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

-- ----------------------------
-- Table structure for causa_raiz_componente
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[causa_raiz_componente]') AND type IN ('U'))
	DROP TABLE [dbo].[causa_raiz_componente]
GO

CREATE TABLE [dbo].[causa_raiz_componente] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_orden_servicio] int  NOT NULL,
  [autorizacion_grabar_voz] bit  NULL,
  [definicion_falla] varchar(2000) COLLATE Modern_Spanish_CI_AS  NULL,
  [arranca_vehiculo] bit  NULL,
  [inicia_movimiento] bit  NULL,
  [disminuye_vel] bit  NULL,
  [da_vuelta_izq] bit  NULL,
  [da_vuelta_der] bit  NULL,
  [pasa_tope] bit  NULL,
  [pasa_bache] bit  NULL,
  [cambia_vel] bit  NULL,
  [esta_sin_movimiento] bit  NULL,
  [constantemente] bit  NULL,
  [esperodicamente] bit  NULL,
  [volante] bit  NULL,
  [asiento] bit  NULL,
  [cristales] bit  NULL,
  [carroceria] bit  NULL,
  [cofre] bit  NULL,
  [cajuela] bit  NULL,
  [toldo] bit  NULL,
  [debajo] bit  NULL,
  [estando_dentro] bit  NULL,
  [estando_fuera] bit  NULL,
  [estando_frente] bit  NULL,
  [estando_detras] bit  NULL,
  [temp_ambiente] int  NULL,
  [humedad] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [viento] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [vel_km_hr] int  NULL,
  [cambio_transmision] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [rpmx1000] int  NULL,
  [cambio_tipo] varchar(3) COLLATE Modern_Spanish_CI_AS  NULL,
  [carga] int  NULL,
  [pasajeros] int  NULL,
  [cajuela_cond_operativa] int  NULL,
  [estructura] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [camino] varchar(15) COLLATE Modern_Spanish_CI_AS  NULL,
  [pendiente] varchar(20) COLLATE Modern_Spanish_CI_AS  NULL,
  [firma_cliente] text COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[causa_raiz_componente] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for causa_raiz_componente
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[causa_raiz_componente]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table causa_raiz_componente
-- ----------------------------
ALTER TABLE [dbo].[causa_raiz_componente] ADD CONSTRAINT [PK_causa_raiz_componente] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table causa_raiz_componente
-- ----------------------------
ALTER TABLE [dbo].[causa_raiz_componente] ADD CONSTRAINT [FK_causa_raiz_componente_orden_servicio] FOREIGN KEY ([id_orden_servicio]) REFERENCES [dbo].[orden_servicio] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

-- ----------------------------
-- Table structure for lineas_reparacion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[lineas_reparacion]') AND type IN ('U'))
	DROP TABLE [dbo].[lineas_reparacion]
GO

CREATE TABLE [dbo].[lineas_reparacion] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [id_orden] int  NOT NULL,
  [num_reparacion] int  NULL,
  [tipo_garantia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [subtipo_garantia] varchar(50) COLLATE Modern_Spanish_CI_AS  NULL,
  [dannio] varchar(5) COLLATE Modern_Spanish_CI_AS  NULL,
  [autoriz_1] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [autoriz_2] varchar(10) COLLATE Modern_Spanish_CI_AS  NULL,
  [partes_totales] float(53)  NULL,
  [mano_obra_total] float(53)  NULL,
  [misc_total] float(53)  NULL,
  [iva] float(53)  NULL,
  [participacion_cliente] float(53)  NULL,
  [participacion_distribuidor] float(53)  NULL,
  [reparacion_total] float(53)  NULL,
  [firma_admin] nvarchar(max) COLLATE Modern_Spanish_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[lineas_reparacion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Auto increment value for lineas_reparacion
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[lineas_reparacion]', RESEED, 1)
GO