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

Date: 2018-04-12 16:17:53
*/


-- ----------------------------
-- Table structure for EgresosFinan_ER
-- ----------------------------
DROP TABLE [dbo].[EgresosFinan_ER]
GO
CREATE TABLE [dbo].[EgresosFinan_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[EgresosFinan_ER]', RESEED, 12)
GO

-- ----------------------------
-- Records of EgresosFinan_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[EgresosFinan_ER] ON
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'5', N'9200-0001-0000', N'INTERESES PAGADOS')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'6', N'9200-0002-0000', N'INTERESES BANCARIOS')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'7', N'9200-0003-0000', N'OTROS GASTOS FINANCIEROS')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'8', N'9200-0004-0000', N'INTERESES PLANTA')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'9', N'9200-0005-0000', N'PERDIDA CAMBIARIA')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'10', N'9200-0006-0000', N'INTERESES PLAN PISO UNIDADES')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'11', N'9200-0007-0000', N'COMISIONES BANCARIAS')
GO
GO
INSERT INTO [dbo].[EgresosFinan_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'12', N'9200-0008-0000', N'EXCEDENTE PLAN PISO')
GO
GO
SET IDENTITY_INSERT [dbo].[EgresosFinan_ER] OFF
GO
