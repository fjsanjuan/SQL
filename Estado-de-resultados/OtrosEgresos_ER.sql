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

Date: 2018-04-12 16:22:53
*/


-- ----------------------------
-- Table structure for OtrosEgresos_ER
-- ----------------------------
DROP TABLE [dbo].[OtrosEgresos_ER]
GO
CREATE TABLE [dbo].[OtrosEgresos_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OtrosEgresos_ER]', RESEED, 3)
GO

-- ----------------------------
-- Records of OtrosEgresos_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OtrosEgresos_ER] ON
GO
INSERT INTO [dbo].[OtrosEgresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'0', N'9400-0001-0000', N'EGRESOS POR ARRENDAMIENTO')
GO
GO
INSERT INTO [dbo].[OtrosEgresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'1', N'9400-0002-0000', N'OTROS EGRESOS')
GO
GO
INSERT INTO [dbo].[OtrosEgresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'2', N'9400-0005-0000', N'COSTO VENTA ACTIVO FIJO')
GO
GO
INSERT INTO [dbo].[OtrosEgresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'3', N'9400-0006-0000', N'EGRESOS VARIOS')
GO
GO
SET IDENTITY_INSERT [dbo].[OtrosEgresos_ER] OFF
GO
