IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec2015dtContacto') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec2015dtContacto
GO
CREATE VIEW dbo.CCAcumProspec2015dtContacto
AS  
  SELECT Cantidad = COUNT(*),     
         C.Usuario,     
         D.Estatus,     
         Fecha=dbo.fnFechaSinHora(D.dtContacto),     
         D.TipoProspeccion,     
         D.IDEvento ,
         D.Subtipo
    FROM CA_CCProspectosD D     
    JOIN CA_CCProspectos C ON C.idProspeccion = D.idProspeccion              
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtContacto), D.TipoProspeccion, D.IDEvento ,D.Subtipo    
  UNION ALL    
  SELECT Cantidad = COUNT(*), C.Usuario, D.Estatus, Fecha=dbo.fnFechaSinHora(D.dtContacto), D.TipoProspeccion, D.IDEvento  ,D.Subtipo  
    FROM CA_CCHistProspectosD D     
    JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH              
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtContacto), D.TipoProspeccion, D.IDEvento    ,D.Subtipo  
GO 