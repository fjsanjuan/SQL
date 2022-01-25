/*
Navicat SQL Server Data Transfer

Source Server         : SamuraiMotors
Source Server Version : 105000
Source Host           : 10.10.74.200:1433
Source Database       : PO_Samurai
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-09-30 12:16:47
*/


-- ----------------------------
-- Table structure for conf_menuWeb
-- ----------------------------
DROP TABLE [dbo].[conf_menuWeb]
GO
CREATE TABLE [dbo].[conf_menuWeb] (
[id] int NOT NULL IDENTITY(1,1) ,
[menu_texto] varchar(20) NULL ,
[url] varchar(50) NULL ,
[fecha_creacion] datetime NULL ,
[fecha_actualizacion] datetime NULL ,
[eliminado] int NULL ,
[icono] varchar(32) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[conf_menuWeb]', RESEED, 0)
GO

-- ----------------------------
-- Records of conf_menuWeb
-- ----------------------------
SET IDENTITY_INSERT [dbo].[conf_menuWeb] ON
GO
INSERT INTO [dbo].[conf_menuWeb] ([id], [menu_texto], [url], [fecha_creacion], [fecha_actualizacion], [eliminado], [icono]) 
VALUES (N'1', N'Seguimiento', N'index.php/navegacion/seguimiento', GETDATE(), GETDATE(), N'0', N'fa fa-users fa-3x')
GO
INSERT INTO [dbo].[conf_menuWeb] ([id], [menu_texto], [url], [fecha_creacion], [fecha_actualizacion], [eliminado], [icono]) 
VALUES (N'2', N'Multipuntos', N'index.php/multipuntos/carga', GETDATE(), GETDATE(), N'0', N'fa fa-list-ol fa-3x')
GO
INSERT INTO [dbo].[conf_menuWeb] ([id], [menu_texto], [url], [fecha_creacion], [fecha_actualizacion], [eliminado], [icono]) 
VALUES (N'3', N'Gráficos', N'index.php/graficos/tabla', GETDATE(), GETDATE(), N'0', N'fa fa-bar-chart fa-3x')
GO
GO
SET IDENTITY_INSERT [dbo].[conf_menuWeb] OFF
GO

-- ----------------------------
-- Indexes structure for table conf_menuWeb
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table conf_menuWeb
-- ----------------------------
ALTER TABLE [dbo].[conf_menuWeb] ADD PRIMARY KEY ([id])
GO
