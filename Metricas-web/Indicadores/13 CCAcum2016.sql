IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcum2016') AND Type = 'V')
  DROP VIEW dbo.CCAcum2016
GO
create VIEW CCAcum2016
AS
SELECT d.IdProspeccion,Origen = 'Produccion', C.Usuario,C.Tipo,D.Subtipo,D.Estatus,D.Resultado,FechaMin = min(dbo.fnFechaSinHora(D.dtAContactar)) ,dtContacto = dbo.fnFechaSinHora(D.dtContacto),dtAContactar = dbo.fnFechaSinHora(D.dtAContactar)         
FROM CA_CCProspectosD D     
JOIN CA_CCProspectos  C ON C.idProspeccion = D.idProspeccion    
WHERE C.Tipo = 'Servicio' 
AND D.Subtipo = 'Orden Cerrada' 
AND D.Estatus <> 'Cancelado'
GROUP BY d.IdProspeccion,C.Usuario,C.Tipo,D.Subtipo,D.Estatus,D.Resultado,dbo.fnFechaSinHora(D.dtContacto),dbo.fnFechaSinHora(D.dtAContactar) 
UNION ALL
SELECT d.IdProspeccionH, Origen = 'Historico',C.Usuario,C.Tipo,D.Subtipo,D.Estatus,D.Resultado,FechaMinima = min(dbo.fnFechaSinHora(D.dtAContactar)) ,dtContacto = dbo.fnFechaSinHora(D.dtContacto),dtAContactar = dbo.fnFechaSinHora(D.dtAContactar)                
FROM CA_CCHistProspectosD D     
JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH    
WHERE C.Tipo = 'Servicio' 
AND D.Subtipo = 'Orden Cerrada' 
AND D.Estatus <> 'Cancelado' AND D.Estatus<>'Descartado'
GROUP BY d.IdProspeccionH,C.Usuario,C.Tipo,D.Subtipo,D.Estatus,D.Resultado,dbo.fnFechaSinHora(D.dtContacto),dbo.fnFechaSinHora(D.dtAContactar) 

go

alter VIEW dbo.CCAcumProspec42015  
AS  
  SELECT Cantidad = COUNT(*),   
         Origen = 'Produccion',  
         C.Usuario,   
         dtAContactar=dbo.fnFechaSinHora(D.dtContacto),   
         C.Tipo,  
         D.SubTipo,  
         D.Estatus,C.idProspeccion   
    FROM CA_CCProspectosD D   
    JOIN CA_CCProspectos C ON C.idProspeccion = D.idProspeccion            
   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), C.Tipo, D.SubTipo, D.Estatus,C.idProspeccion   
  UNION ALL  
  SELECT Cantidad = COUNT(*),   
         Origen = 'Historico',  
         C.Usuario,   
         dtAContactar=dbo.fnFechaSinHora(D.dtContacto),   
         C.Tipo,  
         D.SubTipo,  
         D.Estatus ,C.idProspeccionH 
    FROM CA_CCHistProspectosD D   
    JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
   GROUP BY C.Usuario, dbo.fnFechaSinHora(D.dtContacto), C.Tipo, D.SubTipo, D.Estatus,C.idProspeccionH   

