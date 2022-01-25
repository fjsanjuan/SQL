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

Date: 2018-04-12 16:19:57
*/


-- ----------------------------
-- Table structure for GastosFI_ER
-- ----------------------------
DROP TABLE [dbo].[GastosFI_ER]
GO
CREATE TABLE [dbo].[GastosFI_ER] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Cuenta] varchar(20) NULL ,
[Descripcion] varchar(100) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[GastosFI_ER]', RESEED, 99)
GO

-- ----------------------------
-- Records of GastosFI_ER
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GastosFI_ER] ON
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'0', N'6500-0001-0000', N'COMISIONES VENTAS EXTERNAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'1', N'6500-0002-0000', N'TRASLADOS UNIDADES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'2', N'6500-0003-0000', N'GASOLINA (Unid Entregadas)')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'3', N'6500-0004-0000', N'CARGOS INTERNOS Y PREVIAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'4', N'6500-0005-0000', N'MTTO MAQUINARIA Y EQUIPO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'5', N'6500-0006-0000', N'AMORTIZACION GASTOS DE INSTALACION')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'6', N'6500-0007-0000', N'CARGOS INTERNOS SEMINUEVOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'7', N'6500-0008-0000', N'REACONDICIONAMIENTO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'8', N'6500-0011-0000', N'MATERIALES DE CONSUMO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'9', N'6500-0012-0000', N'PUBLICIDAD')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'10', N'6500-0013-0000', N'PROMOCION F&I')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'11', N'6500-0014-0000', N'CAPACITACION Y ENTRENAMIENTO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'12', N'6500-0015-0000', N'RENTA DE INMUEBLES PERSONAS FISICAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'13', N'6500-0016-0000', N'SERVICIOS ADMINISTRATIVOS PRESTADORAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'14', N'6500-0017-0000', N'SERVICIOS ADMINISTRATIVOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'15', N'6500-0018-0000', N'RECOLECCION RESIDUOS PELIGROSOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'16', N'6500-0019-0000', N'GASTOS DE VIAJE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'17', N'6500-0020-0000', N'GASOLINA (Otros)')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'18', N'6500-0021-0000', N'FLETES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'19', N'6500-0022-0000', N'MENSAJERIA Y PAQUETERIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'20', N'6500-0023-0000', N'HERRAMIENTAS Y UTILES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'21', N'6500-0024-0000', N'CUOTAS PUBLICIDAD')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'22', N'6500-0025-0000', N'CUOTAS Y SUSCRIPCIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'23', N'6500-0026-0000', N'CUOTAS ASOCIACIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'24', N'6500-0027-0000', N'ATENCION A CLIENTES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'25', N'6500-0028-0000', N'CORTESIAS A CLIENTES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'26', N'6500-0029-0000', N'AJUSTE DE INVENTARIO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'27', N'6500-0030-0000', N'ENERGIA ELECTRICA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'28', N'6500-0031-0000', N'TELEFONO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'29', N'6500-0032-0000', N'AGUA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'30', N'6500-0033-0000', N'PAPELERIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'31', N'6500-0034-0000', N'UNIFORMES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'32', N'6500-0035-0000', N'DEPRECIACION')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'33', N'6500-0036-0000', N'MTTO EQUIPO DE TRANSPORTE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'34', N'6500-0037-0000', N'MTTO DE EQUIPO DE COMPUTO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'35', N'6500-0038-0000', N'MTTO DE EDIF Y PROP ARREND')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'36', N'6500-0039-0000', N'GASTOS DE INSTALACION')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'37', N'6500-0040-0000', N'IMPUESTOS Y DERECHOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'38', N'6500-0041-0000', N'TENENCIAS Y REFRENDOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'39', N'6500-0042-0000', N'NO DEDUCIBLES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'40', N'6500-0043-0000', N'SERVICIO DE LIMPIEZA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'41', N'6500-0044-0000', N'PRIMAS DE SEG.Y FIANZAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'42', N'6500-0045-0000', N'AUDITORIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'43', N'6500-0046-0000', N'DONATIVOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'44', N'6500-0047-0000', N'RESERVA DE CUENTAS INCOBRABLES E INVENTARIOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'45', N'6500-0048-0000', N'HONORARIOS PROFESIONALES P.MORALES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'46', N'6500-0049-0000', N'RENTA DE INMUEBLES P. MORALES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'47', N'6500-0050-0000', N'DIVERSOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'48', N'6500-0051-0000', N'PREVIA ENTREGA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'49', N'6500-0052-0000', N'GASTOS FIN DE AÑO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'50', N'6500-0053-0000', N'MTTO MAQUINARIA Y EQUIPO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'51', N'6500-0054-0000', N'MTTO EQUIPO DE OFICINA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'52', N'6500-0055-0000', N'HONORARIOS PROFESIONALES  P FISICAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'53', N'6500-0056-0000', N'ACCESORIOS REFACCIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'54', N'6500-0057-0000', N'SEGURIDAD Y VIGILANCIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'55', N'6500-0058-0000', N'RECARGOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'56', N'6500-0059-0000', N'PROCESAMIENTO DE DATOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'57', N'6500-0060-0000', N'INTERNET')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'58', N'6500-0061-0000', N'PEDIDOS URGENTES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'59', N'6500-0062-0000', N'GESTORIAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'60', N'6500-0063-0000', N'GASTOS DE INVESTIGACION DE CREDITO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'61', N'6500-0064-0000', N'EXTENSIONES DE GARANTIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'62', N'6500-0065-0000', N'PREDIAL')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'63', N'6500-0066-0000', N'AJUSTES POR POLITICA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'64', N'6500-0067-0000', N'INTERESES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'65', N'6500-0068-0000', N'MANTO DE EDIFICIO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'66', N'6500-1001-0000', N'AGUINALDO EXENTO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'67', N'6500-1002-0000', N'AGUINALDO GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'68', N'6500-1003-0000', N'BONOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'69', N'6500-1004-0000', N'COMISIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'70', N'6500-1005-0000', N'COMPENSACION')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'71', N'6500-1006-0000', N'FALTAS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'72', N'6500-1007-0000', N'GRATIFICACION')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'73', N'6500-1008-0000', N'IMPTO SOBRE NOMINA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'74', N'6500-1009-0000', N'IMSS PATRON')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'75', N'6500-1010-0000', N'INCAPACIDADES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'76', N'6500-1011-0000', N'INDEMNIZACION 20 DIAS EXENTA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'77', N'6500-1012-0000', N'INDEMNIZACION 20 DIAS GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'78', N'6500-1013-0000', N'INDEMNIZACION 3 MESES EXENTA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'79', N'6500-1014-0000', N'INDEMNIZACION 3 MESES GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'80', N'6500-1015-0000', N'ISR AGUINALDO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'81', N'6500-1016-0000', N'ISR PTU')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'82', N'6500-1017-0000', N'OTRAS DEDUCCIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'83', N'6500-1018-0000', N'OTRAS PERCEPCIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'84', N'6500-1019-0000', N'PRIMA ANTIGUEDAD EXENTA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'85', N'6500-1020-0000', N'PRIMA ANTIGUEDAD')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'86', N'6500-1021-0000', N'PRIMA DOMINICAL EXENTA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'87', N'6500-1022-0000', N'PRIMA DOMINICAL GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'88', N'6500-1023-0000', N'PRIMA VACACIONAL EXENTA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'89', N'6500-1024-0000', N'PRIMA VACACIONAL GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'90', N'6500-1025-0000', N'PTU EXENTO')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'91', N'6500-1026-0000', N'PTU GRAVABLE')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'92', N'6500-1027-0000', N'RETIRO Y CESANTIA')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'93', N'6500-1028-0000', N'SUELDOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'94', N'6500-1029-0000', N'VACACIONES')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'95', N'6500-1030-0000', N'INFONAVIT PATRON')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'96', N'6500-1031-0000', N'INCENTIVOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'97', N'6500-1032-0000', N'HONORARIOS RECUPERADOS')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'98', N'6500-1033-0000', N'CUOTA SOCIAL')
GO
GO
INSERT INTO [dbo].[GastosFI_ER] ([ID], [Cuenta], [Descripcion]) VALUES (N'99', N'6500-1034-0000', N'SUELDOS GTES Y SUPERV.')
GO
GO
SET IDENTITY_INSERT [dbo].[GastosFI_ER] OFF
GO
