IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec2015') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec2015
GO
CREATE VIEW dbo.CCAcumProspec2015
AS
  SELECT Cantidad = COUNT(*), 
         C.Usuario, 
         D.Estatus, 
         Fecha=dbo.fnFechaSinHora(D.dtAContactar), 
         D.TipoProspeccion, 
         D.IDEvento
    FROM CCProspectosD D 
    JOIN CCProspectos C ON C.idProspeccion = D.idProspeccion          
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento
  UNION ALL
  SELECT Cantidad = COUNT(*), C.Usuario, D.Estatus, Fecha=dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento
    FROM CCHistProspectosD D 
    JOIN CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH          
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento
GO