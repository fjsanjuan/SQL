IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.metricasUsuariosUnion') AND Type = 'P') 
  DROP PROCEDURE dbo.metricasUsuariosUnion
GO
CREATE PROCEDURE [dbo].[metricasUsuariosUnion]
	-- @Param1 varchar(30), @Param2 int
AS
BEGIN
	UPDATE ##usuariosCC2015
	SET 
		CU = UCCE.CU,
		CV = UCCE.CV
	FROM ##usuariosCC2015 UCC15
		JOIN 
			##usuariosCCEconomicos UCCE
		ON 
			UCCE.CCUsu = UCC15.CCUsu
		AND 
			UCCE.Fecha = UCC15.Fecha;
		
		--SELECT * FROM ##usuariosCC2015;
END

GO