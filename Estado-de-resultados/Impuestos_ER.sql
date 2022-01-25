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

Date: 2018-04-12 16:21:56
*/


-- ----------------------------
-- Table structure for Impuestos_ER
-- ----------------------------
DROP TABLE [dbo].[Impuestos_ER]
GO
CREATE TABLE [dbo].[Impuestos_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Impuestos_ER]', RESEED, 2)
GO

-- ----------------------------
-- Records of Impuestos_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Impuestos_ER] ON
GO
INSERT INTO [dbo].[Impuestos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'0', N'9500-0001-0000', N'ISR')
GO
GO
INSERT INTO [dbo].[Impuestos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'1', N'9500-0002-0000', N'IETU')
GO
GO
INSERT INTO [dbo].[Impuestos_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'2', N'9500-0003-0000', N'IMPUESTOS DIFERIDOS')
GO
GO
SET IDENTITY_INSERT [dbo].[Impuestos_ER] OFF
GO
