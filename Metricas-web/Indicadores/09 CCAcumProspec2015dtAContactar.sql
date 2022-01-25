IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec2015dtAContactar') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec2015dtAContactar
GO
CREATE VIEW dbo.CCAcumProspec2015dtAContactar
AS  
  SELECT Cantidad = COUNT(*),   
         C.Usuario,   
         D.Estatus,   
         Fecha=dbo.fnFechaSinHora(D.dtAContactar),   
         D.TipoProspeccion,   
         D.IDEvento  
    FROM CA_CCProspectosD D   
    JOIN CA_CCProspectos C ON C.idProspeccion = D.idProspeccion            
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento  
  UNION ALL  
  SELECT Cantidad = COUNT(*), C.Usuario, D.Estatus, Fecha=dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento  
    FROM CA_CCHistProspectosD D   
    JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtAContactar), D.TipoProspeccion, D.IDEvento  
GO  