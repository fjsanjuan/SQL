/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.41.168
Source Server Version : 110000
Source Host           : 192.168.41.168:1433
Source Database       : Recepcion
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2019-06-03 18:04:47
*/


-- ----------------------------
-- Table structure for presupuesto_detalle
-- ----------------------------
DROP TABLE [dbo].[presupuesto_detalle]
GO
CREATE TABLE [dbo].[presupuesto_detalle] (
[id_articulo] int NOT NULL IDENTITY(1,1) ,
[id_presupuesto] int NOT NULL ,
[cve_articulo] varchar(50) NULL ,
[descripcion] varchar(250) NULL ,
[cantidad] int NULL ,
[precio_unitario] float(53) NULL ,
[total_arts] float(53) NULL ,
[autorizado] bit NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[presupuesto_detalle]', RESEED, 117)
GO

-- ----------------------------
-- Indexes structure for table presupuesto_detalle
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table presupuesto_detalle
-- ----------------------------
ALTER TABLE [dbo].[presupuesto_detalle] ADD PRIMARY KEY ([id_articulo])
GO
