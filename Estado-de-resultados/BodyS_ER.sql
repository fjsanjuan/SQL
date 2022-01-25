/*
Navicat SQL Server Data Transfer

Source Server         : PlasenciaNAYARIT
Source Server Version : 105000
Source Host           : 10.251.0.38:1433
Source Database       : PF_Nayarit
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2018-04-12 16:16:48
*/


-- ----------------------------
-- Table structure for BodyS_ER
-- ----------------------------
DROP TABLE [dbo].[BodyS_ER]
GO
CREATE TABLE [dbo].[BodyS_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[cuenta] varchar(255) NULL ,
[cuenta2] varchar(255) NULL ,
[cuenta3] varchar(255) NULL ,
[cuenta4] varchar(255) NULL ,
[descripcion] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[BodyS_ER]', RESEED, 6)
GO

-- ----------------------------
-- Records of BodyS_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[BodyS_ER] ON
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'0', N'4310-0001-0000', N'4312-0001-0000', N'4313-0001-0000', N'5310-0001-0000', N'TALLER DE BODY SHOP')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'1', N'4310-0002-0000', N'4312-0002-0000', N'4313-0002-0000', N'5310-0002-0000', N'M.O. HOJ.Y PINTU')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'2', N'4310-0003-0000', N'4312-0003-0000', N'4313-0003-0000', N'5310-0003-0000', N'HYP GARANTIAS')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'3', N'4310-0004-0000', N'4312-0004-0000', N'4313-0004-0000', N'5310-0004-0000', N'TOT MECANICO')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'4', N'4310-0005-0000', N'4312-0005-0000', N'4313-0005-0000', N'5310-0005-0000', N'TOT HOJ.Y PINTUR')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'5', N'4310-0006-0000', N'4312-0006-0000', N'4313-0006-0000', N'5310-0006-0000', N'INTERNAS')
GO
GO
INSERT INTO [dbo].[BodyS_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'6', N'4310-0007-0000', N'4312-0007-0000', N'4313-0007-0000', N'5310-0007-0000', N'MATERIALES DIVERSOS')
GO
GO
SET IDENTITY_INSERT [dbo].[BodyS_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table BodyS_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table BodyS_ER
-- ----------------------------
ALTER TABLE [dbo].[BodyS_ER] ADD PRIMARY KEY ([id])
GO
