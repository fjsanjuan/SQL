/*
Navicat SQL Server Data Transfer

Source Server         : ColombiaPMG
Source Server Version : 105000
Source Host           : 10.10.35.200:1433
Source Database       : Colombia
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-08-19 13:12:33
*/


-- ----------------------------
-- Table structure for UsuariosWeb
-- ----------------------------
IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.UsuariosWeb') AND Type = 'U')
  DROP TABLE dbo.UsuariosWeb
GO
CREATE TABLE [dbo].[UsuariosWeb] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Usuario] varchar(255) NULL ,
[Contrasenia] varchar(255) NULL ,
[FechaCreacion] datetime NULL ,
[FechaActualizacion] datetime NULL ,
[Eliminado] bit NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[UsuariosWeb]', RESEED, 3)
GO

-- ----------------------------
-- Records of UsuariosWeb
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UsuariosWeb] ON
GO
INSERT INTO [dbo].[UsuariosWeb] ([Id], [Usuario], [Contrasenia], [FechaCreacion], [FechaActualizacion], [Eliminado]) VALUES (N'2', N'encuesta', N'202cb962ac59075b964b07152d234b70', N'2015-01-07 11:33:53.000', N'2015-01-07 11:33:53.000', N'0')
GO
GO
INSERT INTO [dbo].[UsuariosWeb] ([Id], [Usuario], [Contrasenia], [FechaCreacion], [FechaActualizacion], [Eliminado]) VALUES (N'3', N'torrecontrol', N'202cb962ac59075b964b07152d234b70', N'2015-01-07 11:33:53.000', N'2015-01-07 11:33:55.000', N'0')
GO
GO
SET IDENTITY_INSERT [dbo].[UsuariosWeb] OFF
GO

-- ----------------------------
-- Indexes structure for table UsuariosWeb
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table UsuariosWeb
-- ----------------------------
ALTER TABLE [dbo].[UsuariosWeb] ADD PRIMARY KEY ([Id]) WITH (FILLFACTOR=80)
GO
