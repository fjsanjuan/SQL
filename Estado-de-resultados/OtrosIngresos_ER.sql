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

Date: 2018-04-12 16:23:36
*/


-- ----------------------------
-- Table structure for OtrosIngresos_ER
-- ----------------------------
DROP TABLE [dbo].[OtrosIngresos_ER]
GO
CREATE TABLE [dbo].[OtrosIngresos_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[OtrosIngresos_ER]', RESEED, 7)
GO

-- ----------------------------
-- Records of OtrosIngresos_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[OtrosIngresos_ER] ON
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'0', N'9300-0001-0000', N'INGRESOS POR GESTORIAS')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'1', N'9300-0002-0000', N'OTROS INGRESOS')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'2', N'9300-0003-0000', N'INGRESOS POR DIVIDENDOS')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'3', N'9300-0004-0000', N'ACTUALIZACION IMPTOS A FAVOR')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'4', N'9300-0005-0000', N'INGRESO X VTA.ACTIVO FIJO')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'5', N'9300-0006-0000', N'OTROS PRODUCTOS GRAVADOS')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'6', N'9300-0007-0000', N'INCENTIVOS PLANTA')
GO
GO
INSERT INTO [dbo].[OtrosIngresos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'7', N'9300-0008-0000', N'INGRESOS POR PLACAS Y TENENCIA')
GO
GO
SET IDENTITY_INSERT [dbo].[OtrosIngresos_ER] OFF
GO
