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

Date: 2018-04-12 16:26:00
*/


-- ----------------------------
-- Table structure for Usuarios_ER
-- ----------------------------
DROP TABLE [dbo].[Usuarios_ER]
GO
CREATE TABLE [dbo].[Usuarios_ER] (
[Usuario] varchar(40) NULL ,
[Password] varchar(40) NULL ,
[Nivel] varchar(1) NULL ,
[Nombre] varchar(50) NULL ,
[ApellidoPaterno] varchar(50) NULL ,
[ApellidoMaterno] varchar(50) NULL 
)


GO

-- ----------------------------
-- Records of Usuarios_ER
-- ----------------------------
INSERT INTO [dbo].[Usuarios_ER] ([Usuario], [Password], [Nivel], [Nombre], [ApellidoPaterno], [ApellidoMaterno]) VALUES (N'Estado', N'Resultados', N'1', N'Usuario', N'Consulta', null)
GO
GO
INSERT INTO [dbo].[Usuarios_ER] ([Usuario], [Password], [Nivel], [Nombre], [ApellidoPaterno], [ApellidoMaterno]) VALUES (N'Administrador', N'Presupuestos', N'2', N'Administrador', null, null)
GO
GO
INSERT INTO [dbo].[Usuarios_ER] ([Usuario], [Password], [Nivel], [Nombre], [ApellidoPaterno], [ApellidoMaterno]) VALUES (N'jplasencia', N'jplasencia', N'1', N'Jorge', N'Plasencia', null)
GO
GO
INSERT INTO [dbo].[Usuarios_ER] ([Usuario], [Password], [Nivel], [Nombre], [ApellidoPaterno], [ApellidoMaterno]) VALUES (N'gmeza', N'gmeza', N'1', N'Gerardo ', N'Meza', null)
GO
GO
