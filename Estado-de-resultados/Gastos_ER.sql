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

Date: 2018-04-12 16:18:55
*/


-- ----------------------------
-- Table structure for Gastos_ER
-- ----------------------------
DROP TABLE [dbo].[Gastos_ER]
GO
CREATE TABLE [dbo].[Gastos_ER] (
[id] int NOT NULL IDENTITY(1,1) ,
[descripcion] varchar(50) NULL ,
[cuenta] varchar(30) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[Gastos_ER]', RESEED, 101)
GO

-- ----------------------------
-- Records of Gastos_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Gastos_ER] ON
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'1', N'COMISIONES VENTAS EXTERNAS', N'6100-0001-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'2', N'TRASLADOS UNIDADES', N'6100-0002-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'3', N'GASOLINA (Unid Entregadas)', N'6100-0003-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'4', N'CARGOS INTERNOS Y PREVIAS', N'6100-0004-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'5', N'MTTO MAQUINARIA Y EQUIPO', N'6100-0005-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'6', N'AMORTIZACION GASTOS DE INSTALACION', N'6100-0006-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'7', N'CARGOS INTERNOS SEMINUEVOS', N'6100-0007-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'8', N'REACONDICIONAMIENTO', N'6100-0008-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'9', N'REENBOLSO DE PUBLICIDAD', N'6100-0010-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'10', N'MATERIALES DE CONSUMO', N'6100-0011-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'11', N'PUBLICIDAD', N'6100-0012-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'12', N'PROMOCION NUEVOS', N'6100-0013-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'13', N'CAPACITACION Y ENTRENAMIENTO', N'6100-0014-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'14', N'RENTA DE INMUEBLES PERSONAS FISICAS', N'6100-0015-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'15', N'SERVICIOS ADMINISTRATIVOS PRESTADORAS', N'6100-0016-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'16', N'SERVICIOS ADMINISTRATIVOS', N'6100-0017-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'17', N'RECOLECCION RESIDUOS PELIGROSOS', N'6100-0018-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'18', N'GASTOS DE VIAJE', N'6100-0019-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'19', N'GASOLINA (Otros)', N'6100-0020-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'20', N'FLETES', N'6100-0021-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'21', N'MENSAJERIA Y PAQUETERIA', N'6100-0022-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'22', N'HERRAMIENTAS Y UTILES', N'6100-0023-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'23', N'CUOTAS PUBLICIDAD', N'6100-0024-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'24', N'CUOTAS Y SUSCRIPCIONES', N'6100-0025-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'25', N'CUOTAS ASOCIACIONES', N'6100-0026-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'26', N'ATENCION A CLIENTES', N'6100-0027-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'27', N'CORTESIAS A CLIENTES', N'6100-0028-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'28', N'AJUSTE DE INVENTARIO', N'6100-0029-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'29', N'ENERGIA ELECTRICA', N'6100-0030-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'30', N'TELEFONO', N'6100-0031-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'31', N'AGUA', N'6100-0032-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'32', N'PAPELERIA', N'6100-0033-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'33', N'UNIFORMES', N'6100-0034-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'34', N'DEPRECIACION', N'6100-0035-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'35', N'MTTO EQUIPO DE TRANSPORTE', N'6100-0036-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'36', N'MTTO DE EQUIPO DE COMPUTO', N'6100-0037-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'37', N'MTTO DE EDIF Y PROP ARREND', N'6100-0038-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'38', N'GASTOS DE INSTALACION', N'6100-0039-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'39', N'IMPUESTOS Y DERECHOS', N'6100-0040-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'40', N'TENENCIAS Y REFRENDOS', N'6100-0041-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'41', N'NO DEDUCIBLES', N'6100-0042-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'42', N'SERVICIO DE LIMPIEZA', N'6100-0043-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'43', N'PRIMAS DE SEG.Y FIANZAS', N'6100-0044-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'44', N'AUDITORIA', N'6100-0045-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'45', N'DONATIVOS', N'6100-0046-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'46', N'RESERVA DE CUENTAS INCOBRABLES E INVENTARIOS', N'6100-0047-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'47', N'HONORARIOS PROFESIONALES P.MORALES', N'6100-0048-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'48', N'RENTA DE INMUEBLES P. MORALES', N'6100-0049-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'49', N'DIVERSOS', N'6100-0050-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'50', N'PREVIA ENTREGA', N'6100-0051-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'51', N'GASTOS FIN DE AÑO', N'6100-0052-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'52', N'MTTO MAQUINARIA Y EQUIPO', N'6100-0053-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'53', N'MTTO EQUIPO DE OFICINA', N'6100-0054-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'54', N'HONORARIOS PROFESIONALES  P FISICAS', N'6100-0055-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'55', N'ACCESORIOS REFACCIONES', N'6100-0056-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'56', N'SEGURIDAD Y VIGILANCIA', N'6100-0057-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'57', N'RECARGOS', N'6100-0058-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'58', N'PROCESAMIENTO DE DATOS', N'6100-0059-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'59', N'INTERNET', N'6100-0060-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'60', N'PEDIDOS URGENTES', N'6100-0061-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'61', N'GESTORIAS', N'6100-0062-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'62', N'GASTOS DE INVESTIGACION DE CREDITO', N'6100-0063-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'63', N'EXTENSIONES DE GARANTIA', N'6100-0064-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'64', N'PREDIAL', N'6100-0065-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'65', N'AJUSTES POR POLITICA', N'6100-0066-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'66', N'INTERESES', N'6100-0067-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'67', N'MANTO DE EDIFICIO', N'6100-0068-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'68', N'AGUINALDO EXENTO', N'6100-1001-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'69', N'AGUINALDO GRAVABLE', N'6100-1002-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'70', N'BONOS', N'6100-1003-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'71', N'COMISIONES', N'6100-1004-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'72', N'COMPENSACION', N'6100-1005-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'73', N'FALTAS', N'6100-1006-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'74', N'GRATIFICACION', N'6100-1007-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'75', N'IMPTO SOBRE NOMINA', N'6100-1008-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'76', N'IMSS PATRON', N'6100-1009-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'77', N'INCAPACIDADES', N'6100-1010-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'78', N'INDEMNIZACION 20 DIAS EXENTA', N'6100-1011-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'79', N'INDEMNIZACION 20 DIAS GRAVABLE', N'6100-1012-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'80', N'INDEMNIZACION 3 MESES EXENTA', N'6100-1013-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'81', N'INDEMNIZACION 3 MESES GRAVABLE', N'6100-1014-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'82', N'ISR AGUINALDO', N'6100-1015-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'83', N'ISR PTU', N'6100-1016-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'84', N'OTRAS DEDUCCIONES', N'6100-1017-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'85', N'OTRAS PERCEPCIONES', N'6100-1018-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'86', N'PRIMA ANTIGUEDAD EXENTA', N'6100-1019-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'87', N'PRIMA ANTIGUEDAD', N'6100-1020-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'88', N'PRIMA DOMINICAL EXENTA', N'6100-1021-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'89', N'PRIMA DOMINICAL GRAVABLE', N'6100-1022-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'90', N'PRIMA VACACIONAL EXENTA', N'6100-1023-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'91', N'PRIMA VACACIONAL GRAVABLE', N'6100-1024-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'92', N'PTU EXENTO', N'6100-1025-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'93', N'PTU GRAVABLE', N'6100-1026-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'94', N'RETIRO Y CESANTIA', N'6100-1027-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'95', N'SUELDOS', N'6100-1028-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'96', N'VACACIONES', N'6100-1029-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'97', N'INFONAVIT PATRON', N'6100-1030-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'98', N'INCENTIVOS', N'6100-1031-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'99', N'HONORARIOS RECUPERADOS', N'6100-1032-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'100', N'CUOTA SOCIAL', N'6100-1033-0000')
GO
GO
INSERT INTO [dbo].[Gastos_ER] ([id], [descripcion], [cuenta]) VALUES (N'101', N'SUELDO GTES Y SUPERV.', N'6100-1034-0000')
GO
GO
SET IDENTITY_INSERT [dbo].[Gastos_ER] OFF
GO

-- ----------------------------
-- Indexes structure for table Gastos_ER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Gastos_ER
-- ----------------------------
ALTER TABLE [dbo].[Gastos_ER] ADD PRIMARY KEY ([id])
GO
