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

Date: 2016-09-30 12:25:04
*/


-- ----------------------------
-- Table structure for SeguimientoOperaciones
-- ----------------------------
DROP TABLE [dbo].[SeguimientoOperaciones]
GO
CREATE TABLE [dbo].[SeguimientoOperaciones] (
[ID] int NOT NULL IDENTITY(1,1) ,
[IdVenta] int NULL ,
[Renglon] float(53) NULL ,
[RenglonId] int NULL ,
[Estado] varchar(50) NULL ,
[FechaInicio] datetime NULL ,
[FechafIN] datetime NULL ,
[Usuario] varchar(10) NULL ,
[Comentarios] varchar(250) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[SeguimientoOperaciones]', RESEED, 801)
GO

-- ----------------------------
-- Indexes structure for table SeguimientoOperaciones
-- ----------------------------
CREATE INDEX [Seguimiento] ON [dbo].[SeguimientoOperaciones]
([IdVenta] ASC, [Renglon] ASC, [RenglonId] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table SeguimientoOperaciones
-- ----------------------------
ALTER TABLE [dbo].[SeguimientoOperaciones] ADD PRIMARY KEY ([ID])
GO
