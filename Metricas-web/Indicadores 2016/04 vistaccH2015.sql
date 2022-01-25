IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vistaccH2015') AND Type = 'V')
  DROP VIEW dbo.vistaccH2015
GO
CREATE VIEW dbo.vistaccH2015
AS    
SELECT Cantidad=COUNT(*),   
       C.Tipo,   
       D.SubTipo,   
       D.Resultado,  
       v.Estatus,   
       Fecha=dbo.fnFechaSinHora(D.dtContacto),   
       C.Usuario   ,  
       FechaRecepcion = dbo.fnFechaSinHora(D.dtRecepcion) ,  
       V.ServicioTipoOrden,D.IdProspeccionHist,  
       D.IdEventoHist,  
       D.SubTipoHist,  
       FechaAContactar = dbo.fnFechaSinHora(D.dtAContactar)        
  FROM CCHistProspectosD D                 
  JOIN CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH                
  JOIN Venta V         ON  C.Idventa =V.Id                           
 GROUP BY C.Tipo, D.SubTipo, D.Resultado, V.Estatus, dbo.fnFechaSinHora(D.dtContacto), C.Usuario ,dbo.fnFechaSinHora(D.dtRecepcion) ,V.ServicioTipoOrden,D.IdProspeccionHist,D.IdEventoHist,D.SubTipoHist ,dbo.fnFechaSinHora(D.dtAContactar)    
GO