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

Date: 2018-04-12 16:25:04
*/


-- ----------------------------
-- Table structure for Taller_ER
-- ----------------------------
DROP TABLE [dbo].[Taller_ER]
GO
CREATE TABLE [dbo].[Taller_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[cuenta] varchar(255) NULL ,
[cuenta2] varchar(255) NULL ,
[cuenta3] varchar(255) NULL ,
[cuenta4] varchar(255) NULL ,
[descripcion] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Taller_ER]', RESEED, 8)
GO

-- ----------------------------
-- Records of Taller_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Taller_ER] ON
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'0', N'4301-0001-0000', N'4302-0001-0000', N'4303-0001-0000', N'5301-0001-0000', N'M.O. MECANICA')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'1', N'4301-0002-0000', N'4302-0002-0000', N'4303-0002-0000', N'5301-0002-0000', N'M.O. HOJ.Y PINTU')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'2', N'4301-0003-0000', N'4302-0003-0000', N'4303-0003-0000', N'5301-0003-0000', N'M.O. GARANTIAS')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'3', N'4301-0004-0000', N'4302-0004-0000', N'4303-0004-0000', N'5301-0004-0000', N'TOT MECANICO')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'4', N'4301-0005-0000', N'4302-0005-0000', N'4303-0005-0000', N'5301-0005-0000', N'TOT HOJ.Y PINTUR')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'5', N'4301-0006-0000', N'4302-0006-0000', N'4303-0006-0000', N'5301-0006-0000', N'INTERNAS')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'6', N'4301-0007-0000', N'4302-0007-0000', N'4303-0007-0000', N'5301-0007-0000', N'MATERIALES DIVERSOS')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'7', N'4301-0008-0000', N'4302-0008-0000', N'4303-0008-0000', N'5301-0008-0000', N'OTRAS MERCANCIAS')
GO
GO
INSERT INTO [dbo].[Taller_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [descripcion]) VALUES (N'8', N'4391-9999-0000', N'', N'', N'', N'OTROS INGRESOS SERVICIO')
GO
GO
SET IDENTITY_INSERT [dbo].[Taller_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table Taller_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Taller_ER
-- ----------------------------
ALTER TABLE [dbo].[Taller_ER] ADD PRIMARY KEY ([id])
GO
