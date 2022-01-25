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

Date: 2016-08-19 12:57:15
*/


-- ----------------------------
-- Table structure for CatColorTC
-- ----------------------------
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CatColorTC') AND Type = 'U')
  DROP TABLE dbo.CatColorTC
GO
CREATE TABLE [dbo].[CatColorTC] (
[id] int NOT NULL IDENTITY(1,1) ,
[concepto] varchar(255) NULL ,
[color] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CatColorTC]', RESEED, 10)
GO

-- ----------------------------
-- Records of CatColorTC
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CatColorTC] ON
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'1', N'citaEstimado', N'#D500FA')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'2', N'ordenServicioEstimado', N'#DBC311')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'3', N'permiso', N'#9a939e')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'4', N'excedente', N'#D61111')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'5', N'ordenServicioSinHReal', N'#646491')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'6', N'operacionServicioSinHReal', N'#25F505')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'7', N'estimadoProceso', N'#1ADB00')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'8', N'estimadoDetenida', N'#C92724')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'9', N'estimadoFinalizada', N'#1032A1')
GO
GO
INSERT INTO [dbo].[CatColorTC] ([id], [concepto], [color]) VALUES (N'10', N'alerta15min', N'#E0DC04')
GO
GO
SET IDENTITY_INSERT [dbo].[CatColorTC] OFF
GO

-- ----------------------------
-- Indexes structure for table CatColorTC
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CatColorTC
-- ----------------------------
ALTER TABLE [dbo].[CatColorTC] ADD PRIMARY KEY ([id]) WITH (FILLFACTOR=80)
GO
