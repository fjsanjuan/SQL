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

Date: 2016-09-30 12:15:30
*/


-- ----------------------------
-- Table structure for UsuariosWeb
-- ----------------------------
DROP TABLE [dbo].[UsuariosWeb]
GO
CREATE TABLE [dbo].[UsuariosWeb] (
[Id] int NOT NULL IDENTITY(1,1) ,
[Usuario] varchar(255) NULL ,
[Contrasenia] varchar(255) NULL ,
[FechaCreacion] datetime NULL ,
[FechaActualizacion] datetime NULL ,
[Eliminado] bit NULL ,
[UsuarioIntelisis] varchar(20) NULL ,
[Nivel] varchar(1) NULL ,
[sucursal_int] int
)


GO
DBCC CHECKIDENT(N'[dbo].[UsuariosWeb]', RESEED, 4)
GO

-- ----------------------------
-- Records of UsuariosWeb
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UsuariosWeb] ON
GO
INSERT INTO [dbo].[UsuariosWeb] ([Id], [Usuario], [Contrasenia], [FechaCreacion], [FechaActualizacion], [Eliminado], [UsuarioIntelisis], [Nivel], [sucursal_int]) VALUES (N'2', N'encuesta', N'202cb962ac59075b964b07152d234b70', GETDATE(), GETDATE(), N'0', null, N'1', N'1')
GO
GO
INSERT INTO [dbo].[UsuariosWeb] ([Id], [Usuario], [Contrasenia], [FechaCreacion], [FechaActualizacion], [Eliminado], [UsuarioIntelisis], [Nivel], [sucursal_int]) VALUES (N'3', N'torrecontrol', N'202cb962ac59075b964b07152d234b70', GETDATE(), GETDATE(), N'0', null, N'1', N'1')
GO
GO
INSERT INTO [dbo].[UsuariosWeb] ([Id], [Usuario], [Contrasenia], [FechaCreacion], [FechaActualizacion], [Eliminado], [UsuarioIntelisis], [Nivel], [sucursal_int]) VALUES (N'4', N'seguimiento', N'30ef46de9a1e95182f53f69ab3e679b4', GETDATE(), GETDATE(), N'0', null, N'2', N'1')
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
ALTER TABLE [dbo].[UsuariosWeb] ADD PRIMARY KEY ([Id])
GO
