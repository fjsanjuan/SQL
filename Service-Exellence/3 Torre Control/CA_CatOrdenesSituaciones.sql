/*
Navicat SQL Server Data Transfer

Source Server         : ColombiaPMG
Source Server Version : 105000
Source Host           : 10.10.35.200:1433
Source Database       : Colombia
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-08-19 12:52:52
*/


-- ----------------------------
-- Table structure for CA_CatOrdenesSituaciones
-- ----------------------------
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_CatOrdenesSituaciones') AND Type = 'U')
  DROP TABLE dbo.CA_CatOrdenesSituaciones
GO
CREATE TABLE [dbo].[CA_CatOrdenesSituaciones] (
[id] smallint NOT NULL IDENTITY(1,1) ,
[situacionSeg] varchar(50) NULL ,
[color] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CA_CatOrdenesSituaciones]', RESEED, 10)
GO

-- ----------------------------
-- Records of CA_CatOrdenesSituaciones
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CA_CatOrdenesSituaciones] ON
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'1', N'No Asignada', N'#F0DFDF')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'2', N'Asignada', N'#121111')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'3', N'En Proceso', N'#16F26E')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'4', N'Detenida por TOT', N'#F20000')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'5', N'Detenida por Otros', N'#0AF5F1')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'6', N'Detenida por Soporte Planta', N'#E809E4')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'7', N'Detenida por Autorización', N'#E8102A')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'8', N'Reactivar', N'#E0CECE')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'9', N'Orden Cerrada', N'#1F36DE')
GO
GO
INSERT INTO [dbo].[CA_CatOrdenesSituaciones] ([id], [situacionSeg], [color]) VALUES (N'10', N'Detenida por Refacciones', N'#5F84C7')
GO
GO
SET IDENTITY_INSERT [dbo].[CA_CatOrdenesSituaciones] OFF
GO

-- ----------------------------
-- Indexes structure for table CA_CatOrdenesSituaciones
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CA_CatOrdenesSituaciones
-- ----------------------------
ALTER TABLE [dbo].[CA_CatOrdenesSituaciones] ADD PRIMARY KEY ([id]) WITH (FILLFACTOR=80)
GO
