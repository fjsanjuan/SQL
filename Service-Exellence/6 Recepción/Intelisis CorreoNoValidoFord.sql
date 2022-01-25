/*
Navicat SQL Server Data Transfer

Source Server         : FORD AUCAZA
Source Server Version : 105000
Source Host           : 10.10.48.200:1433
Source Database       : ACF_Zacatecas
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2019-07-31 11:40:11
*/


-- ----------------------------
-- Table structure for CorreoNoValidoFord
-- ----------------------------
--DROP TABLE [dbo].[CorreoNoValidoFord]
--GO
CREATE TABLE [dbo].[CorreoNoValidoFord] (
[ID] int NOT NULL IDENTITY(1,1) ,
[Email] varchar(100) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CorreoNoValidoFord]', RESEED, 111)
GO

-- ----------------------------
-- Records of CorreoNoValidoFord
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CorreoNoValidoFord] ON
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'1', N'_@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'2', N'N@N.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'3', N'NO TIENECORREO@NOTIENECORREO')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'4', N'NO@MAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'5', N'NO@NO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'6', N'NO@TIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'7', N'NOAPLICA.CORREO@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'8', N'NOCORREO@GMIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'9', N'NOCUENTA@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'10', N'NOHAY@CORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'11', N'NOT.CORR.@NOT.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'12', N'NOT@NTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'13', N'NOTCORR._.@NOTCORR.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'14', N'NOTCORRE@NOTCORRE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'15', N'NOTEIEN@CORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'16', N'NOTEIENECORREO@NOTIENECORRE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'17', N'NOTENE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'18', N'NOTENGO@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'19', N'NOTENGPO@NOTENGO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'20', N'NOTIEBNE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'21', N'NOTIEN@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'22', N'NOTIEN@HOTMAUL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'23', N'NOTIEN@NO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'24', N'NOTIENA@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'25', N'NOTIENCORRE@NOTIENECORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'26', N'NOTIENCORREO@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'27', N'NOTIENDECORREO@NOTIENECORREO')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'28', N'NOTIENE CORREO@NO TIENE.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'29', N'NOTIENE@9NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'30', N'NOTIENE@COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'31', N'NOTIENE CORREO@NO TIENE.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'32', N'NOTIENE@CORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'33', N'NOTIENE@CORREO.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'34', N'NOTIENE@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'35', N'NOTIENE@GMAIL.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'36', N'NOTIENE@GOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'37', N'NOTIENE@HOITMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'38', N'NOTIENE@HOTMAI.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'39', N'NOTIENE@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'40', N'NOTIENE@HOTMIAL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'41', N'NOTIENE@MOTIENE.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'42', N'NOTIENE@NOLTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'43', N'NOTIENE@NOTIEN.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'44', N'NOTIENE@NOTIENE')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'45', N'NOTIENE@NOTIENE,COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'46', N'NOTIENE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'47', N'NOTIENE@NOTIENE.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'48', N'NOTIENE@NOTIENE.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'49', N'NOTIENE@NOTIENECORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'50', N'NOTIENE@NOYTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'51', N'NOTIENE@OUTLOOK.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'52', N'NOTIENECORR@NOTCORR.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'53', N'NOTIENECORRE@NOTIENE.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'54', N'NOTIENECORRE@NOTIENECORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'55', N'NOTIENECORREO @NOTIENECORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'56', N'NOTIENECORREO@COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'57', N'NOTIENECORREO@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'58', N'NOTIENECORREO@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'59', N'NOTIENECORREO@NO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'60', N'NOTIENECORREO@NOTIEN.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'61', N'NOTIENECORREO@NOTIENE')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'62', N'NOTIENECORREO@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'63', N'NOTIENECORREO@NOTIENE.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'64', N'NOTIENECORREO@NOTIENE.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'65', N'NOTIENECORREO@NOTIENECORRE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'66', N'NOTIENECORREO@NOTIENECORREO')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'67', N'NOTIENECORREO@NOTIENECORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'68', N'NOTIENECORREO@NOTIENECORREO.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'69', N'NOTIENECORREO@NOTIENENCORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'70', N'NOTIENECORREO@NTONENE')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'71', N'NOTIENECPORREO@NOTIENECORRE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'72', N'NOTIENEMAIL@NOTIENEMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'73', N'NOTIENEN@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'74', N'NOTIERNE@GMIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'75', N'NOTIIENE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'76', N'NOTINE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'77', N'NOTINE@NOTIENE.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'78', N'NOTIOEN@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'79', N'NOTIOENE@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'80', N'NOTIRNE@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'81', N'NOTNOTCORR@NOT.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'82', N'NT@NT.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'83', N'NTC@FORDPENINSULA.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'84', N'NTC@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'85', N'NTC@HOTAMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'86', N'NTC@HOTAMIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'87', N'NTC@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'88', N'NTC@HOTMIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'89', N'NTC@NOTIENE.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'90', N'NTC@NTC.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'91', N'NTC@NTC.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'92', N'SIN@SIN.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'93', N'SINCORRE@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'94', N'SINCORRE@SINCORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'95', N'SINCORREO@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'96', N'SINCORREO@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'97', N'SINCORREO@MAZDA.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'98', N'SINCORREO@SINCORREO')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'99', N'SINCORREO@SINCORREO .COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'100', N'SINCORREO@SINCORREO.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'101', N'SINCORREO@SINCORREO.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'102', N'SINCORREO@ZAPATA.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'103', N'SINCORREO35@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'104', N'SINCORRREO@HOTMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'105', N'SNCORREO@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'106', N'XX@XX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'107', N'XX@XXX.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'108', N'XXX@GMAIL.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'109', N'XXX@XXX.COM')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'110', N'XXX@XXX.COM.MX')
GO
GO
INSERT INTO [dbo].[CorreoNoValidoFord] ([ID], [Email]) VALUES (N'111', N'XXXX@GMAIL.COM')
GO
GO
SET IDENTITY_INSERT [dbo].[CorreoNoValidoFord] OFF
GO

-- ----------------------------
-- Indexes structure for table CorreoNoValidoFord
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CorreoNoValidoFord
-- ----------------------------
ALTER TABLE [dbo].[CorreoNoValidoFord] ADD PRIMARY KEY ([ID])
GO
