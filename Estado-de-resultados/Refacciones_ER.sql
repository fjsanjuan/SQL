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

Date: 2018-04-12 16:24:35
*/


-- ----------------------------
-- Table structure for Refacciones_ER
-- ----------------------------
DROP TABLE [dbo].[Refacciones_ER]
GO
CREATE TABLE [dbo].[Refacciones_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[cuenta] varchar(255) NULL ,
[cuenta2] varchar(255) NULL ,
[cuenta3] varchar(255) NULL ,
[cuenta4] varchar(255) NULL ,
[descripcion] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Refacciones_ER]', RESEED, 8)
GO

-- ----------------------------
-- Records of Refacciones_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Refacciones_ER] ON
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'0', N'4401-0001-0000', N'4402-0001-0000', N'4403-0001-0000', N'5401-0001-0000', N'REFACCIONES MEUNDEO')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'1', N'4401-0002-0000', N'4402-0002-0000', N'4403-0002-0000', N'5401-0002-0000', N'REFACCIONES MAYOREO')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'2', N'4401-0003-0000', N'4402-0003-0000', N'4403-0003-0000', N'5401-0003-0000', N'REFAC.TALLER')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'3', N'4401-0004-0000', N'4402-0004-0000 ', N'4403-0004-0000', N'5401-0004-0000', N'REFAC.TALLER GARANTIAS')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'4', N'4401-0005-0000', N'4402-0005-0000', N'4403-0005-0000 ', N'5401-0005-0000', N'REFAC.TALLER INTERNAS')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'5', N'4401-0006-0000', N'4402-0006-0000', N'4403-0006-0000', N'5401-0006-0000', N'REFAC. INTERNAS MOSTRADOR')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'6', N'4401-0007-0000 ', N'4402-0007-0000', N'4403-0007-0000', N'5401-0007-0000', N'OTROS MATERIALES')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'7', N'4491-9999-0000', N'', N'', N'', N'OTROS INGRESOS REFACCIONES')
GO
GO
INSERT INTO [dbo].[Refacciones_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'8', N'4492-9999-0000', N'', N'', N'', N'OTROS EGRESOS REFACCIONES')
GO
GO
SET IDENTITY_INSERT [dbo].[Refacciones_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table Refacciones_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Refacciones_ER
-- ----------------------------
ALTER TABLE [dbo].[Refacciones_ER] ADD PRIMARY KEY ([id])
GO
