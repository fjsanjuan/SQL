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

Date: 2016-08-19 12:52:01
*/


-- ----------------------------
-- Table structure for CA_CatOperacionesEstados
-- ----------------------------
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_CatOperacionesEstados') AND Type = 'U')
  DROP TABLE dbo.CA_CatOperacionesEstados
GO
CREATE TABLE [dbo].[CA_CatOperacionesEstados] (
[id] smallint NOT NULL IDENTITY(1,1) ,
[estadoSeg] varchar(50) NULL ,
[color] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CA_CatOperacionesEstados]', RESEED, 8)
GO

-- ----------------------------
-- Records of CA_CatOperacionesEstados
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CA_CatOperacionesEstados] ON
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'1', N'No Comenzada', N'#F0DADA')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'2', N'En Curso', N'#00AD31')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'3', N'Detenida por TOT', N'#C72424')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'4', N'Detenida por Otros', N'#4D4748')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'5', N'Detenida por Soporte Planta', N'#EB913D')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'6', N'Detenida por Autorización', N'#D6CF0D')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'7', N'Detenida por Refacciones', N'#42403D')
GO
GO
INSERT INTO [dbo].[CA_CatOperacionesEstados] ([id], [estadoSeg], [color]) VALUES (N'8', N'Completada', N'#3232D6')
GO
GO
SET IDENTITY_INSERT [dbo].[CA_CatOperacionesEstados] OFF
GO

-- ----------------------------
-- Indexes structure for table CA_CatOperacionesEstados
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CA_CatOperacionesEstados
-- ----------------------------
ALTER TABLE [dbo].[CA_CatOperacionesEstados] ADD PRIMARY KEY ([id]) WITH (FILLFACTOR=80)
GO
