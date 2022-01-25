IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vistacc2015') AND Type = 'V')
  DROP VIEW dbo.vistacc2015
GO
CREATE VIEW dbo.vistacc2015    
AS    
  SELECT Cantidad=COUNT(*),   
         C.Tipo, D.SubTipo,   
         D.Resultado,   
         v.Estatus,   
         Fecha=dbo.fnFechaSinHora(D.dtContacto),   
         C.Usuario,  
         FechaRecepcion = dbo.fnFechaSinHora(D.dtRecepcion),  
         V.ServicioTipoOrden  ,  
         D.IdProspeccionHist,  
         D.IdEventoHist,  
         D.SubTipoHist ,  
         FechaAContactar = dbo.fnFechaSinHora(D.dtAContactar)    
  FROM CA_CCProspectosD D     
 JOIN CA_CCProspectos  C ON C.IdProspeccion = D.IdProspeccion    
 JOIN Venta V         ON  C.Idventa =V.Id  
  GROUP BY C.Tipo, D.SubTipo, D.Resultado, V.Estatus, dbo.fnFechaSinHora(D.dtContacto), C.Usuario ,dbo.fnFechaSinHora(D.dtRecepcion)  ,V.ServicioTipoOrden  ,D.IdProspeccionHist,D.IdEventoHist,D.SubTipoHist,dbo.fnFechaSinHora(D.dtAContactar)     
GO