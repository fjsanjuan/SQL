/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.41.168
 Source Server Type    : SQL Server
 Source Server Version : 11007493
 Source Host           : 192.168.41.168:1433
 Source Catalog        : Recepcion
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11007493
 File Encoding         : 65001

 Date: 01/10/2020 18:23:51
*/


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

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'3', N'Servicio HYP', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'4', N'Servicio Garantia', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'5', N'Servicio Reclamacion', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'6', N'Servicio', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'7', N'Serv Linc HYP', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'8', N'Serv Linc Garantia', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'9', N'Serv Linc Reclam', N'0', N'2019-08-12 13:16:00')
GO

INSERT INTO [dbo].[mov_servicio] ([id_mov], [movimiento], [eliminado], [fecha_actualizacion]) VALUES (N'10', N'Serv Linc', N'0', N'2019-08-12 13:16:00')
GO

SET IDENTITY_INSERT [dbo].[mov_servicio] OFF
GO


-- ----------------------------
-- Auto increment value for mov_servicio
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[mov_servicio]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table mov_servicio
-- ----------------------------
ALTER TABLE [dbo].[mov_servicio] ADD CONSTRAINT [PK__mov_serv__6C8843B8A1EC436E] PRIMARY KEY CLUSTERED ([id_mov])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

