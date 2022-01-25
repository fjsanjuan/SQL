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

Date: 2018-04-12 16:25:32
*/


-- ----------------------------
-- Table structure for Unidades_ER
-- ----------------------------
DROP TABLE [dbo].[Unidades_ER]
GO
CREATE TABLE [dbo].[Unidades_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[descripcion] varchar(50) NULL ,
[articulo] varchar(20) NULL ,
[cuenta] varchar(30) NULL ,
[cuenta1_utilidad] varchar(30) NULL ,
[cuenta2_utilidad] varchar(30) NULL ,
[cuenta3_utilidad] varchar(30) NULL ,
[cuenta4_utilidad] varchar(30) NULL ,
[tipo] varchar(2) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Unidades_ER]', RESEED, 28)
GO

-- ----------------------------
-- Records of Unidades_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Unidades_ER] ON
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'1', N'VENTA FIESTA', N'SNA1', N'4101-0001-0000', N'4101-0001-0000', N'4102-0001-0000', N'4103-0001-0000', N'5101-0001-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'2', N'FIESTA SE TA 5 PTAS 1.6L', N'F2A', N'4101-0002-0000', N'4101-0002-0000', N'4102-0002-0000', N'4103-0002-0000', N'5101-0002-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'3', N'FOCUS S 4 PTAS TA', N'Z1A', N'4101-0003-0000', N'4101-0003-0000', N'4102-0003-0000', N'4103-0003-0000', N'5101-0003-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'4', N'FUSION SE TRANSMISION AUTOMATICA 4 CIL.', N'C2B', N'4101-0004-0000', N'4101-0004-0000', N'4102-0004-0000', N'4103-0004-0000', N'5101-0004-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'5', N'MUSTANG COUPE LUJO TA V6', N'MBA', N'4101-0005-0000', N'4101-0005-0000', N'4102-0005-0000', N'4103-0005-0000', N'5101-0005-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'6', N'ECOSPORT TITANIUM TA 2.0L', N'W7B', N'4101-0006-0000', N'4101-0006-0000', N'4102-0006-0000', N'4103-0006-0000', N'5101-0006-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'7', N'VENTA ESCAPE', N'SNA2', N'4101-0007-0000', N'4101-0007-0000', N'4102-0007-0000', N'4103-0007-0000', N'5101-0007-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'8', N'EDGE BASE SE V6', N'D2B', N'4101-0008-0000', N'4101-0008-0000', N'4102-0008-0000', N'4103-0008-0000', N'5101-0008-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'9', N'EXPLORER LIMITED V6 4WD', N'E1A', N'4101-0009-0000', N'4101-0009-0000', N'4102-0009-0000', N'4103-0009-0000', N'5101-0009-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'10', N'EXPEDITION LIMITED 4X2', N'V1M', N'4101-0010-0000', N'4101-0010-0000', N'4102-0010-0000', N'4103-0010-0000', N'5101-0010-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'11', N'RANGER SA CREW CAB XLT', N'J1D', N'4101-0011-0000', N'4101-0011-0000', N'4102-0011-0000', N'4103-0011-0000', N'5101-0011-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'12', N'LOBOTA 8 CIL.', N'G1A', N'4101-0012-0000', N'4101-0012-0000', N'4102-0012-0000', N'4103-0012-0000', N'5101-0012-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'13', N'F150 XL 4X2 SUPERCREW', N'J6B', N'4101-0013-0000', N'4101-0013-0000', N'4102-0013-0000', N'4103-0013-0000', N'5101-0013-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'14', N'F250 XLT SUPERDUTY', N'K2A', N'4101-0014-0000', N'4101-0014-0000', N'4102-0014-0000', N'4103-0014-0000', N'5101-0014-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'15', N'F350 XL PLUS 6.2L GAS', N'K6D', N'4101-0015-0000', N'4101-0015-0000', N'4102-0015-0000', N'4103-0015-0000', N'5101-0015-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'16', N'VENTA ECONOLINE', N'SNA3', N'4101-0016-0000', N'4101-0016-0000', N'4102-0016-0000', N'4103-0016-0000', N'5101-0016-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'17', N'F450 SUPER DUTY 6.8 LTS', N'K5E', N'4101-0017-0000', N'4101-0017-0000', N'4102-0017-0000', N'4103-0017-0000', N'5101-0017-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'18', N'TRANSIT VAN CHASSIS CAB', N'M3K', N'4101-0018-0000', N'4101-0018-0000', N'4102-0018-0000', N'4103-0018-0000', N'5101-0018-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'19', N'TRANSIT CUST PASS', N'N2A', N'4101-0019-0000', N'4101-0019-0000', N'4102-0019-0000', N'4103-0019-0000', N'5101-0019-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'20', N'VENTAS CAMIONES NUEVOS', N'', N'4121-0001-0000', N'4121-0001-0000', N'4122-0001-0000', N'4123-0001-0000', N'5121-0001-0000', N'C')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'21', N'VENTAS INTERCAMBIOS', N'', N'4131-0001-0000', N'4131-0001-0000', N'4132-0004-0000', N'4133-0001-0000', N'5131-0001-0000', N'I')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'22', N'VENTAS AUTOFINANCIAMIENTO', N'', N'4141-0001-0000', N'4141-0001-0000', N'4142-0001-0000', N'4143-0001-0000', N'5141-0001-0000', N'A')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'23', N'VENTAS FLOTILLA VEHICULOS', N'', N'4151-0001-0000', N'4151-0001-0000', N'4152-0001-0000', N'4153-0001-0000', N'5151-0001-0000', N'F')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'24', N'VENTAS FLOTILLA CAMIONES', N'', N'4151-0002-0001', N'4151-0002-0001', N'4152-0002-0001', N'4153-0002-0001', N'5151-0002-0001', N'F')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'25', N'OTROS ING. VEH. NUEVOS', N'', N'4191-9999-0000', N'4191-9999-0000', N'', N'', N'', N'T')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'26', N'VENTAS COMERCIALES', null, N'4111-0001-0000', N'4111-0001-0000', N'4112-0001-0000', N'4113-0001-0000', N'5111-0001-0000', N'C')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'27', N'FIGO', N'A12', N'4101-0020-0000', N'4101-0020-0000', N'4102-0020-0000', N'4103-0020-0000', N'5101-0020-0000', N'U')
GO
GO
INSERT INTO [dbo].[Unidades_ER] ([id], [descripcion], [articulo], [cuenta], [cuenta1_utilidad], [cuenta2_utilidad], [cuenta3_utilidad], [cuenta4_utilidad], [tipo]) VALUES (N'28', N'OTROS ING. VEH. NUEVOS', null, N'4192-9999-0000', N'4192-9999-0000', null, null, null, N'T')
GO
GO
SET IDENTITY_INSERT [dbo].[Unidades_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table Unidades_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Unidades_ER
-- ----------------------------
ALTER TABLE [dbo].[Unidades_ER] ADD PRIMARY KEY ([id])
GO
