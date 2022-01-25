IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwIndicadorMovto') AND Type = 'V')
  DROP VIEW dbo.vwIndicadorMovto
GO
CREATE VIEW [dbo].[vwIndicadorMovto] 
AS 
  SELECT Tllegada   = DATEDIFF(MI,Llegada,Recepcion),
         TRecepcion = DATEDIFF(MI,Recepcion,Inicio),
         TTaller    = DATEDIFF(MI,Inicio,Termina),
         TLavado    = DATEDIFF(MI,Termina,Lavado),
         TEntrega   = DATEDIFF(MI,Lavado,Entrega),
		 TTotal     = DATEDIFF(MI,ISNULL(Llegada,Inicio),Entrega),
         *
    FROM vwIndicadorTaller
GO