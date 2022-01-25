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

Date: 2018-04-12 16:22:25
*/


-- ----------------------------
-- Table structure for IngresosFinan_ER
-- ----------------------------
DROP TABLE [dbo].[IngresosFinan_ER]
GO
CREATE TABLE [dbo].[IngresosFinan_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[IngresosFinan_ER]', RESEED, 4)
GO

-- ----------------------------
-- Records of IngresosFinan_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[IngresosFinan_ER] ON
GO
INSERT INTO [dbo].[IngresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'0', N'9100-0001-0000', N'INTERESES GANADOS')
GO
GO
INSERT INTO [dbo].[IngresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'1', N'9100-0002-0000', N'INTERESES BANCARIOS')
GO
GO
INSERT INTO [dbo].[IngresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'2', N'9100-0003-0000', N'OTROS INTERESES GANADOS')
GO
GO
INSERT INTO [dbo].[IngresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'3', N'9100-0004-0000', N'INTERESES PLANTA')
GO
GO
INSERT INTO [dbo].[IngresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'4', N'9100-0005-0000', N'UTILIDAD CAMBIARIA')
GO
GO
SET IDENTITY_INSERT [dbo].[IngresosFinan_ER] OFF
GO
