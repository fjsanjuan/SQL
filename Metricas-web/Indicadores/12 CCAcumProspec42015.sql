IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec42015') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec42015
GO
CREATE VIEW dbo.CCAcumProspec42015
AS
  SELECT Cantidad = COUNT(*), 
         Origen = 'Produccion',
         C.Usuario, 
         dtAContactar=dbo.fnFechaSinHora(D.dtContacto), 
         C.Tipo,
         D.SubTipo,
         D.Estatus 
    FROM CA_CCProspectosD D 
    JOIN CA_CCProspectos C ON C.idProspeccion = D.idProspeccion          
   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), C.Tipo, D.SubTipo, D.Estatus 
  UNION ALL
  SELECT Cantidad = COUNT(*), 
         Origen = 'Historico',
         C.Usuario, 
         dtAContactar=dbo.fnFechaSinHora(D.dtContacto), 
         C.Tipo,
         D.SubTipo,
         D.Estatus
    FROM CA_CCHistProspectosD D 
    JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH          
   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), C.Tipo, D.SubTipo, D.Estatus 
GO 