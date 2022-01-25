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

Date: 2018-04-12 16:17:19
*/


-- ----------------------------
-- Table structure for DeptoUsados_ER
-- ----------------------------
DROP TABLE [dbo].[DeptoUsados_ER]
GO
CREATE TABLE [dbo].[DeptoUsados_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[cuenta] varchar(255) NULL ,
[cuenta2] varchar(255) NULL ,
[cuenta3] varchar(255) NULL ,
[cuenta4] varchar(255) NULL ,
[concepto] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[DeptoUsados_ER]', RESEED, 2)
GO

-- ----------------------------
-- Records of DeptoUsados_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DeptoUsados_ER] ON
GO
INSERT INTO [dbo].[DeptoUsados_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [concepto]) VALUES (N'0', N'4201-0001-0000', N'4202-0001-0000', N'4203-0001-0000', N'5201-0001-0000', N'Usados Mayoreo')
GO
GO
INSERT INTO [dbo].[DeptoUsados_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [concepto]) VALUES (N'1', N'4201-0002-0000', N'4202-0002-0000', N'4203-0002-0000', N'5201-0002-0000', N'Usados Menudeo')
GO
GO
INSERT INTO [dbo].[DeptoUsados_ER] ([id], [cuenta], [cuenta2], [cuenta3], [cuenta4], [concepto]) VALUES (N'2', N'4291-9999-0000', N'', N'', N'', N'Otros Ingresos Vehiculos Seminuevos')
GO
GO
SET IDENTITY_INSERT [dbo].[DeptoUsados_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table DeptoUsados_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table DeptoUsados_ER
-- ----------------------------
ALTER TABLE [dbo].[DeptoUsados_ER] ADD PRIMARY KEY ([id])
GO
