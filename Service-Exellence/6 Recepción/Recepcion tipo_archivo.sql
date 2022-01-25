/*
 Navicat Premium Data Transfer

 Source Server         : FameToyota(192.168.6.200)
 Source Server Type    : SQL Server
 Source Server Version : 12006118
 Source Host           : 192.168.6.200:1433
 Source Catalog        : recepcion
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12006118
 File Encoding         : 65001

 Date: 11/01/2021 14:12:41
*/


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

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'1', N'imagen inspeccion', N'2020-08-04 12:18:00', N'0')
GO

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'2', N'imagen seguimiento', N'2020-08-04 12:18:00', N'0')
GO

INSERT INTO [dbo].[tipo_archivo] ([id], [tipo], [fecha_creacion], [eliminado]) VALUES (N'3', N'imagen multipuntos', N'2020-08-04 12:18:00', N'0')
GO

SET IDENTITY_INSERT [dbo].[tipo_archivo] OFF
GO


-- ----------------------------
-- Auto increment value for tipo_archivo
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[tipo_archivo]', RESEED, 3)
GO


-- ----------------------------
-- Primary Key structure for table tipo_archivo
-- ----------------------------
ALTER TABLE [dbo].[tipo_archivo] ADD CONSTRAINT [PK__tipo_arc__3213E83F91798A18] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

