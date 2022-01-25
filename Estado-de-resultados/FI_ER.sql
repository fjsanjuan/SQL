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

Date: 2018-04-12 16:18:27
*/


-- ----------------------------
-- Table structure for FI_ER
-- ----------------------------
DROP TABLE [dbo].[FI_ER]
GO
CREATE TABLE [dbo].[FI_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[cuenta] varchar(255) NULL ,
[descripcion] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[FI_ER]', RESEED, 16)
GO

-- ----------------------------
-- Records of FI_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[FI_ER] ON
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'0', N'4501-0001-0000', N'ING X FINANCIAMIENTOS
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'1', N'4501-0002-0000', N'ING COMISIONES BANCARIAS
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'2', N'4501-0004-0000', N'ING CREDITOS PLANTA
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'3', N'4501-0003-0000', N'ING X SEGUROS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'4', N'4501-0005-0000', N'ING GARANTIAS EXT.
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'5', N'4501-0006-0000', N'ING X COMISION
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'6', N'4501-0007-0000', N'ING X SERVICIOS PREPAGADOS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'7', N'4501-0008-0000', N'ING X ACCESORIOS
')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'8', N'5501-0001-0000', N'TRAMITES VEHICULARES')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'9', N'5501-0002-0000', N'APERTURA DE CREDITOS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'10', N'5501-0003-0000', N'SEGUROS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'11', N'5501-0004-0000', N'COMISION DE FINANC')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'12', N'5501-0005-0000', N'GARANTIA EXTENDIDA')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'13', N'5501-0006-0000', N'COSTOS X VENTA ACCESORIOS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'14', N'5501-0007-0000', N'COSTOS X SERVICIOS PREP')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'15', N'5501-0008-0000', N'COSTOS ACCESORIOS')
GO
GO
INSERT INTO [dbo].[FI_ER] ([id], [cuenta], [descripcion]) VALUES (N'16', N'4591-9999-0000', N'OTROS INGRESOS')
GO
GO
SET IDENTITY_INSERT [dbo].[FI_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table FI_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table FI_ER
-- ----------------------------
ALTER TABLE [dbo].[FI_ER] ADD PRIMARY KEY ([id])
GO
