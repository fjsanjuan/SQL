IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.dms_art') AND Type = 'V')
  DROP VIEW dbo.dms_art
GO
CREATE VIEW [dbo].[dms_art] AS 
SELECT Articulo, Descripcion1, Tipo, Estatus, UltimoCambio, Id_Ag = 1 
	FROM Art 
	WHERE Tipo IN ('Normal', 'VIN', 'Servicio')
GO