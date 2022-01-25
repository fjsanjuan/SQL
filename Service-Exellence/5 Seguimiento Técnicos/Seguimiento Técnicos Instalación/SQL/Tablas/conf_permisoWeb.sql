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

Date: 2016-09-30 12:17:28
*/


-- ----------------------------
-- Table structure for conf_permisoWeb
-- ----------------------------
DROP TABLE [dbo].[conf_permisoWeb]
GO
CREATE TABLE [dbo].[conf_permisoWeb] (
[id] int NOT NULL IDENTITY(1,1) ,
[id_conf_menu] int NULL ,
[id_nivel_usu] int NULL ,
[permiso] varchar(15) NULL ,
[primero] int NULL ,
[fecha_creacion] datetime NULL ,
[fecha_actualizacion] datetime NULL ,
[eliminado] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[conf_permisoWeb]', RESEED, 0)
GO

-- ----------------------------
-- Records of conf_permisoWeb
-- ----------------------------
SET IDENTITY_INSERT [dbo].[conf_permisoWeb] ON
GO
INSERT INTO [dbo].[conf_permisoWeb] ([id], [id_conf_menu], [id_nivel_usu], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado]) 
VALUES (N'1', N'1', N'2', N'Seguimiento', N'1', GETDATE(), GETDATE(), N'0')
GO
INSERT INTO [dbo].[conf_permisoWeb] ([id], [id_conf_menu], [id_nivel_usu], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado]) 
VALUES (N'2', N'2', N'2', N'Multipuntos', N'0', GETDATE(), GETDATE(), N'0')
GO
INSERT INTO [dbo].[conf_permisoWeb] ([id], [id_conf_menu], [id_nivel_usu], [permiso], [primero], [fecha_creacion], [fecha_actualizacion], [eliminado]) 
VALUES (N'3', N'3', N'2', N'Gráficos', N'0', GETDATE(), GETDATE(), N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[conf_permisoWeb] OFF
GO

-- ----------------------------
-- Indexes structure for table conf_permisoWeb
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table conf_permisoWeb
-- ----------------------------
ALTER TABLE [dbo].[conf_permisoWeb] ADD PRIMARY KEY ([id])
GO
