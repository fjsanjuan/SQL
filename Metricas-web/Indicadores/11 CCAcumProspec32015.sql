IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCAcumProspec32015') AND Type = 'V')
  DROP VIEW dbo.CCAcumProspec32015
GO
CREATE VIEW  CCAcumProspec32015              
AS              
  SELECT Cantidad=COUNT(*), 
         Origen = 'Produccion', 
		     D.SubTipo, 
		     D.SubTipoHist,
		     V.Estatus, 
		     dtAContactar = dbo.fnFechaSinHora(D.dtContacto), 
		     C.Usuario,
		     dtRecepcion = dbo.fnFechaSinHora(D.dtRecepcion),
		     V.ServicioTipoOrden,
		     Flotilla = ISNULL(T.Flotilla,0),
		     FechaEmision = dbo.fnFechaSinHora(V.FechaEmision)
    FROM CA_CCProspectosD D               
    JOIN CA_CCProspectos  C ON C.IdProspeccion = D.IdProspeccion              
    JOIN Venta V ON  C.Idventa =V.Id                
    LEFT OUTER JOIN Cte T ON C.Cliente = T.Cliente 
   WHERE C.Tipo = 'Servicio' 
     AND D.Resultado = 'Cliente requiere Cita' 
   GROUP BY D.SubTipo, D.SubTipoHist, V.Estatus, dbo.fnFechaSinHora(D.dtContacto), C.Usuario, dbo.fnFechaSinHora(D.dtRecepcion), V.ServicioTipoOrden, ISNULL(T.Flotilla,0),dbo.fnFechaSinHora(V.FechaEmision)
  UNION ALL
  SELECT Cantidad=COUNT(*), 
         Origen = 'Historico',
		     D.SubTipo, 
		     D.SubTipoHist,
		     V.Estatus, 
		     dtAContactar = dbo.fnFechaSinHora(D.dtContacto), 
		     C.Usuario   ,
		     dtRecepcion = dbo.fnFechaSinHora(D.dtRecepcion) ,
		     V.ServicioTipoOrden,
		     Flotilla = ISNULL(T.Flotilla,0),  		
         FechaEmision = dbo.fnFechaSinHora(V.FechaEmision)
    FROM CA_CCHistProspectosD D               
    JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH              
    JOIN Venta V         ON  C.Idventa =V.Id                         
    LEFT OUTER JOIN Cte T ON C.Cliente = T.Cliente 
   WHERE C.Tipo = 'Servicio' 
     AND D.Resultado = 'Cliente requiere Cita' 
   GROUP BY D.SubTipo, D.SubTipoHist, V.Estatus, dbo.fnFechaSinHora(D.dtContacto), C.Usuario, dbo.fnFechaSinHora(D.dtRecepcion), V.ServicioTipoOrden, ISNULL(T.Flotilla,0), dbo.fnFechaSinHora(V.FechaEmision)  
GO