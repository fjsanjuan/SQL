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

Date: 2019-06-03 18:04:37
*/


-- ----------------------------
-- Table structure for presupuestos
-- ----------------------------
DROP TABLE [dbo].[presupuestos]
GO
CREATE TABLE [dbo].[presupuestos] (
[id_presupuesto] int NOT NULL IDENTITY(1,1) ,
[id_orden] int NOT NULL ,
[fecha_creacion] smalldatetime NULL ,
[eliminado] int NULL ,
[total_presupuesto] float(53) NULL ,
[autorizado] int NULL ,
[vista_email] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[presupuestos]', RESEED, 49)
GO

-- ----------------------------
-- Indexes structure for table presupuestos
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table presupuestos
-- ----------------------------
ALTER TABLE [dbo].[presupuestos] ADD PRIMARY KEY ([id_presupuesto])
GO
