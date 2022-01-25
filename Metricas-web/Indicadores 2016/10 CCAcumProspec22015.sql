IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec22015') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec22015
GO
CREATE VIEW dbo.CCAcumProspec22015
AS
--  SELECT Cantidad = COUNT(*), 
--         Origen = 'Produccion',
--         C.Usuario, 
--         Fecha=dbo.fnFechaSinHora(D.dtContacto), 
--         D.Resultado,
--         C.Tipo,
--         D.SubTipo
--    FROM CCProspectosD D 
--    JOIN CCProspectos C ON C.idProspeccion = D.idProspeccion          
--   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtContacto), d.Resultado, C.Tipo, D.SubTipo 
--  UNION ALL
--  SELECT Cantidad = COUNT(*), 
--         Origen = 'Historico',
--         C.Usuario, 
--         Fecha=dbo.fnFechaSinHora(D.dtContacto), 
--         D.Resultado,
--         C.Tipo,
--         D.SubTipo 
--    FROM CCHistProspectosD D 
--    JOIN CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH          
--   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), D.Resultado, C.Tipo, D.SubTipo 
--GO   
  SELECT Cantidad = COUNT(*),   
         Origen = 'Produccion',  
         C.Usuario,   
         Fecha=dbo.fnFechaSinHora(D.dtContacto),   
         D.Resultado,  
         C.Tipo,  
         D.SubTipo  ,D.Estatus 
    FROM CCProspectosD D   
    JOIN CCProspectos C ON C.idProspeccion = D.idProspeccion            
   GROUP BY C.Usuario, D.Estatus,dbo.fnFechaSinHora(D.dtContacto), d.Resultado, C.Tipo, D.SubTipo,D.Estatus    
  UNION ALL  
  SELECT Cantidad = COUNT(*),   
         Origen = 'Historico',  
         C.Usuario,   
         Fecha=dbo.fnFechaSinHora(D.dtContacto),   
         D.Resultado,  
         C.Tipo,  
         D.SubTipo   ,D.Estatus    
    FROM CCHistProspectosD D   
    JOIN CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), D.Resultado, C.Tipo, D.SubTipo,D.Estatus     
   
go   