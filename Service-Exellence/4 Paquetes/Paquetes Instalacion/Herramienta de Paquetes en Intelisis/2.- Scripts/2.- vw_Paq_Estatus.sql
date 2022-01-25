/****** Object:  View [dbo].[Paq_Estatus]    Script Date: 07/06/2016 06:00:31 p. m. ******/
SET ANSI_NULLS OFF
GO

SET QUOTED_IDENTIFIER OFF
GO
--SELECT * FROM sysobjects WHERE name='sp_Procedimiento'
IF EXISTS(SELECT * FROM sysobjects WHERE name='Paq_Estatus')
DROP VIEW Paq_Estatus
GO
CREATE VIEW [dbo].[Paq_Estatus]
AS 
SELECT (CASE WHEN SPQ.Estatus = 1 THEN 'ACTIVO' ELSE 'ELIMINADO' END) AS PAQ_EST,* FROM ServicioPaquetes AS SPQ

GO


