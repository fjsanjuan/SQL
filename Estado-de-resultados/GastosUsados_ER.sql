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

Date: 2018-04-12 16:21:28
*/


-- ----------------------------
-- Table structure for GastosUsados_ER
-- ----------------------------
DROP TABLE [dbo].[GastosUsados_ER]
GO
CREATE TABLE [dbo].[GastosUsados_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[descripcion] varchar(255) NULL ,
[cuenta] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[GastosUsados_ER]', RESEED, 99)
GO

-- ----------------------------
-- Records of GastosUsados_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GastosUsados_ER] ON
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'0', N'COMISIONES VENTAS EXTERNAS', N'6200-0001-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'1', N'TRASLADOS UNIDADES', N'6200-0002-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'2', N'GASOLINA (Unid Entregadas)', N'6200-0003-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'3', N'CARGOS INTERNOS Y PREVIAS', N'6200-0004-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'4', N'MTTO MAQUINARIA Y EQUIPO', N'6200-0005-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'5', N'AMORTIZACION GASTOS DE INSTALACION', N'6200-0006-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'6', N'CARGOS INTERNOS SEMINUEVOS', N'6200-0007-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'7', N'REACONDICIONAMIENTO', N'6200-0008-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'8', N'MATERIALES DE CONSUMO', N'6200-0011-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'9', N'PUBLICIDAD', N'6200-0012-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'10', N'PROMOCION SEMINUEVOS', N'6200-0013-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'11', N'CAPACITACION Y ENTRENAMIENTO', N'6200-0014-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'12', N'RENTA DE INMUEBLES PERSONAS FISICAS', N'6200-0015-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'13', N'SERVICIOS ADMINISTRATIVOS PRESTADORAS', N'6200-0016-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'14', N'SERVICIOS ADMINISTRATIVOS', N'6200-0017-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'15', N'RECOLECCION RESIDUOS PELIGROSOS', N'6200-0018-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'16', N'GASTOS DE VIAJE', N'6200-0019-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'17', N'GASOLINA (Otros)', N'6200-0020-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'18', N'FLETES', N'6200-0021-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'19', N'MENSAJERIA Y PAQUETERIA', N'6200-0022-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'20', N'HERRAMIENTAS Y UTILES', N'6200-0023-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'21', N'CUOTAS PUBLICIDAD', N'6200-0024-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'22', N'CUOTAS Y SUSCRIPCIONES', N'6200-0025-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'23', N'CUOTAS ASOCIACIONES', N'6200-0026-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'24', N'ATENCION A CLIENTES', N'6200-0027-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'25', N'CORTESIAS A CLIENTES', N'6200-0028-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'26', N'AJUSTE DE INVENTARIO', N'6200-0029-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'27', N'ENERGIA ELECTRICA', N'6200-0030-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'28', N'TELEFONO', N'6200-0031-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'29', N'AGUA', N'6200-0032-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'30', N'PAPELERIA', N'6200-0033-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'31', N'UNIFORMES', N'6200-0034-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'32', N'DEPRECIACION', N'6200-0035-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'33', N'MTTO EQUIPO DE TRANSPORTE', N'6200-0036-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'34', N'MTTO DE EQUIPO DE COMPUTO', N'6200-0037-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'35', N'MTTO DE EDIF Y PROP ARREND', N'6200-0038-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'36', N'GASTOS DE INSTALACION', N'6200-0039-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'37', N'IMPUESTOS Y DERECHOS', N'6200-0040-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'38', N'TENENCIAS Y REFRENDOS', N'6200-0041-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'39', N'NO DEDUCIBLES', N'6200-0042-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'40', N'SERVICIO DE LIMPIEZA', N'6200-0043-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'41', N'PRIMAS DE SEG.Y FIANZAS', N'6200-0044-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'42', N'AUDITORIA', N'6200-0045-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'43', N'DONATIVOS', N'6200-0046-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'44', N'RESERVA DE CUENTAS INCOBRABLES E INVENTARIOS', N'6200-0047-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'45', N'HONORARIOS PROFESIONALES P.MORALES', N'6200-0048-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'46', N'RENTA DE INMUEBLES P. MORALES', N'6200-0049-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'47', N'DIVERSOS', N'6200-0050-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'48', N'PREVIA ENTREGA', N'6200-0051-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'49', N'GASTOS FIN DE AÑO', N'6200-0052-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'50', N'MTTO MAQUINARIA Y EQUIPO', N'6200-0053-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'51', N'MTTO EQUIPO DE OFICINA', N'6200-0054-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'52', N'HONORARIOS PROFESIONALES  P FISICAS', N'6200-0055-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'53', N'ACCESORIOS REFACCIONES', N'6200-0056-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'54', N'SEGURIDAD Y VIGILANCIA', N'6200-0057-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'55', N'RECARGOS', N'6200-0058-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'56', N'PROCESAMIENTO DE DATOS', N'6200-0059-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'57', N'INTERNET', N'6200-0060-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'58', N'PEDIDOS URGENTES', N'6200-0061-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'59', N'GESTORIAS', N'6200-0062-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'60', N'GASTOS DE INVESTIGACION DE CREDITO', N'6200-0063-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'61', N'EXTENSIONES DE GARANTIA', N'6200-0064-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'62', N'PREDIAL', N'6200-0065-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'63', N'AJUSTES POR POLITICA', N'6200-0066-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'64', N'INTERESES', N'6200-0067-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'65', N'MANTO DE EDIFICIO', N'6200-0068-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'66', N'AGUINALDO EXENTO', N'6200-1001-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'67', N'AGUINALDO GRAVABLE', N'6200-1002-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'68', N'BONOS', N'6200-1003-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'69', N'COMISIONES', N'6200-1004-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'70', N'COMPENSACION', N'6200-1005-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'71', N'FALTAS', N'6200-1006-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'72', N'GRATIFICACION', N'6200-1007-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'73', N'IMPTO SOBRE NOMINA', N'6200-1008-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'74', N'IMSS PATRON', N'6200-1009-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'75', N'INCAPACIDADES', N'6200-1010-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'76', N'INDEMNIZACION 20 DIAS EXENTA', N'6200-1011-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'77', N'INDEMNIZACION 20 DIAS GRAVABLE', N'6200-1012-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'78', N'INDEMNIZACION 3 MESES EXENTA', N'6200-1013-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'79', N'INDEMNIZACION 3 MESES GRAVABLE', N'6200-1014-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'80', N'ISR AGUINALDO', N'6200-1015-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'81', N'ISR PTU', N'6200-1016-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'82', N'OTRAS DEDUCCIONES', N'6200-1017-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'83', N'OTRAS PERCEPCIONES', N'6200-1018-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'84', N'PRIMA ANTIGUEDAD EXENTA', N'6200-1019-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'85', N'PRIMA ANTIGUEDAD', N'6200-1020-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'86', N'PRIMA DOMINICAL EXENTA', N'6200-1021-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'87', N'PRIMA DOMINICAL GRAVABLE', N'6200-1022-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'88', N'PRIMA VACACIONAL EXENTA', N'6200-1023-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'89', N'PRIMA VACACIONAL GRAVABLE', N'6200-1024-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'90', N'PTU EXENTO', N'6200-1025-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'91', N'PTU GRAVABLE', N'6200-1026-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'92', N'RETIRO Y CESANTIA', N'6200-1027-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'93', N'SUELDOS', N'6200-1028-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'94', N'VACACIONES', N'6200-1029-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'95', N'INFONAVIT PATRON', N'6200-1030-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'96', N'INCENTIVOS', N'6200-1031-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'97', N'HONORARIOS RECUPERADOS', N'6200-1032-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'98', N'CUOTA SOCIAL', N'6200-1033-0000')
GO
GO
INSERT INTO [dbo].[GastosUsados_ER] ([id], [descripcion], [cuenta]) VALUES (N'99', N'SUELDOS GTES Y SUPERV.', N'6200-1034-0000')
GO
GO
SET IDENTITY_INSERT [dbo].[GastosUsados_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table GastosUsados_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table GastosUsados_ER
-- ----------------------------
ALTER TABLE [dbo].[GastosUsados_ER] ADD PRIMARY KEY ([id])
GO