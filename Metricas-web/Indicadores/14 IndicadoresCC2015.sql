IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.IndicadoresCC2015') AND Type = 'V')
  DROP VIEW dbo.IndicadoresCC2015
GO
CREATE VIEW dbo.IndicadoresCC2015    
AS       
SELECT DISTINCT     
       UsuCC,    
       Fecha,    
       B   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha   
                                AND A.TipoProspeccion = 1   
                                AND A.IDEvento = 1)),  
       C   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha  
                                AND A.TipoProspeccion = 2   
                                AND A.IDEvento = 1)),            
       D   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion = 3   
                                AND A.IDEvento = 1)),            
       CeldaE  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                                  WHERE A.Usuario = I.UsuCC   
                                    AND A.Fecha = I.Fecha             
                                    AND A.TipoProspeccion = 4   
                                    AND A.IDEvento = 1)),            
       F   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion = 5   
                                AND A.IDEvento = 1)),            
       G   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion = 6   
                                AND A.IDEvento = 1)),            
       H   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion = 7   
                                AND A.IDEvento = 1)),  
       I   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion = 8   
                                AND A.IDEvento = 1)),            
       J   = CONVERT(FLOAT,0),  
       K   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015 A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.TipoProspeccion IN (9,10,11)   
                                AND A.IDEvento = 1)),            
       M   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec2015dtContacto A   
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                --AND A.TipoProspeccion IN (1,2,3,4,5,6,7,8,9,10,11) 
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n') --JLAV 14/03/2016
                                AND A.Estatus = 'Realizada'   
                                AND A.IDEvento = 1)),            
       CeldaO= CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.Fecha = I.Fecha  
                                 AND A.Resultado = 'Sin Tel�fono'   
                                 AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       Q   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Nadie Contesta'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       R   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Llamar mas tarde'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       S   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Cliente requiere Cita'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       T   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Cliente con queja o molesto'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       U   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Cliente no requiere Cita'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n')
                                AND A.Estatus IN ('Realizada'))),            
       V   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Servicio ya realizado en otro sitio'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       W   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha               
                             AND A.Resultado = 'Cliente ya realiz� el servicio en esta agencia'   
                             AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),                    
       X   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Cliente ya contact� o contactar� al distribuidor'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),                               
       CeldaY=CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Cliente no desea ser contactado'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),  
       Z   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha               
                                AND A.Resultado = 'Cliente ya no cuenta con el vehiculo'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),  
       AA  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Tel�fono correcto, el cliente no se ha localizado'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),  
       AB  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'N�mero de tel�fono incorrecto'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       AC  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'N�mero de tel�fono no existe'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       AD  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado = 'Fallecimiento del cliente'   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n')  
                                AND A.Origen = 'Historico')),  
       AE  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Resultado IN ('Otro','Cliente cambio de ubicaci�n')   
                                AND A.Subtipo IN ('Retenci�n', 'Promoci�n'))),            
       AL  = CONVERT(FLOAT, (SELECT COUNT(*) FROM vwCA_CCVistaProspeccion P--CCProspectosD D JOIN CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                              WHERE P.Usuario = I.UsuCC   
                                AND dbo.fnFechaSinHora(P.dtAContactar) = I.Fecha             
                                AND P.Tipo = 'Servicio'   
                                AND P.Subtipo = 'LeadIT'   
                                AND P.IDEvento = 1)            
                          + (SELECT COUNT(*) FROM CA_CCHistProspectosD D JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
                              WHERE C.Usuario = I.UsuCC   
                                AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                                AND C.Tipo = 'Servicio'   
                                AND D.Subtipo = 'LeadIT'   
                                AND D.IDEvento = 1)),  
       --2015                         
       AM=0,
       AN  = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.dtAContactar = I.Fecha             
                                AND A.Tipo = 'Servicio'   
                                AND A.Subtipo = 'LeadIT'   
                                AND A.Estatus<>'Pendiente')),            
       AO   = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Tipo = 'Servicio'   
                                AND A.Subtipo = 'LeadIT'   
                                AND A.Resultado = 'Cliente requiere Cita')), 
      --2015                         
       AP=0,
       AR   = CONVERT(FLOAT,(SELECT COUNT(*) FROM vwCA_CCVistaProspeccion P--CCProspectosD D JOIN CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                              WHERE P.Usuario = I.UsuCC   
                                AND dbo.fnFechaSinHora(P.dtAContactar) = I.Fecha             
                                AND P.Tipo = 'Servicio'   
                                AND P.Subtipo IN ('Campa�a Normal','Campa�a Seguridad')   
                                AND P.IDEvento = 1)            
             + (SELECT COUNT(*) FROM CA_CCHistProspectosD D JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
                              WHERE C.Usuario = I.UsuCC   
                                AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                                AND C.Tipo = 'Servicio'   
                                AND D.Subtipo IN ('Campa�a Normal','Campa�a Seguridad')   
                                AND D.IDEvento = 1)),            
        ASA  = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.dtAContactar = I.Fecha             
                                AND A.Tipo = 'Servicio'   
                                AND A.Subtipo IN ('Campa�a Normal','Campa�a Seguridad')   
                                AND A.Estatus ='Realizada')),            
        AT  = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                              WHERE A.Usuario = I.UsuCC   
                                AND A.Fecha = I.Fecha             
                                AND A.Tipo = 'Servicio'   
                                AND A.Subtipo IN ('Campa�a Normal','Campa�a Seguridad')   
                                AND A.Resultado = 'Cliente requiere Cita')),            
       AV   = CONVERT(FLOAT,(SELECT COUNT(*)   
                               FROM (SELECT 'A'=P.IdProspeccion ,'B'=dbo.fnFechaSinHora(P.dtAContactar)            
                                   FROM vwCA_CCVistaProspeccion P--CCProspectosD D JOIN CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                                  WHERE P.Usuario = I.UsuCC   
                                    AND dbo.fnFechaSinHora(P.dtAContactar) = I.Fecha   
                                    AND P.Tipo = 'Servicio'   
                                    AND P.Subtipo = 'Trabajos Pendientes'  
                                  GROUP BY dbo.fnFechaSinHora(P.dtAContactar), P.IdProspeccion ) AS I )  
             + (SELECT COUNT(*)     
                            FROM (SELECT 'A'=D.IdProspeccionH ,'B'=dbo.fnFechaSinHora(D.dtAContactar)             
                                   FROM CA_CCHistProspectosD D JOIN CA_CCHistProspectos  C ON C.IdProspeccionH = D.IdProspeccionH            
                                  WHERE C.Usuario = I.UsuCC   
                                    AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha   
                                    AND C.Tipo = 'Servicio'   
                                    AND D.Subtipo = 'Trabajos Pendientes'  
                                  GROUP BY dbo.fnFechaSinHora(D.dtAContactar), D.IdProspeccionH ) AS J )),            
       AW   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.Fecha = I.Fecha             
                                 AND A.Tipo = 'Servicio'   
                                 AND A.Subtipo = 'Trabajos Pendientes')),            
       AX   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.Fecha = I.Fecha             
                                 AND A.Tipo = 'Servicio'   
                                 AND A.Subtipo = 'Trabajos Pendientes'   
                                 AND A.Resultado = 'Cliente requiere Cita')), 
/******************************************************************/           
       BB   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtAContactar = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo') OR A.SubTipoHist in ('Nuevo'))   
                                 AND A.Flotilla = 1   
                                 AND A.ServicioTipoOrden not in('Garantia'))),                                                                        
       AZ   =CONVERT(FLOAT,  (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtAContactar = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo') OR A.SubTipoHist in ('Nuevo'))   
                                 AND A.Flotilla = 0   
                                 AND A.ServicioTipoOrden not in('Garantia'))),  
       BA   = CONVERT(FLOAT,ISNULL(( SELECT sum(C.cantidad) FROM vistacc2015 C              
                                      WHERE C.Usuario = I.UsuCC   
                                     AND c.FechaAContactar = I.Fecha                  
                                     AND C.Tipo = 'Servicio'   
                                     AND (C.Subtipo in ('Nuevo') OR C.SubTipoHist in ('Nuevo'))  
                                     AND C.Resultado = 'Cliente requiere Cita'   
                                     AND C.ServicioTipoOrden = 'Garantia'),0)           
                      + ISNULL(( SELECT sum(C.cantidad) FROM vistaccH2015 C               
                                  WHERE C.Usuario = I.UsuCC   
                                    AND c.FechaAContactar = I.Fecha                
                                    AND C.Tipo = 'Servicio'   
                                    AND (C.Subtipo in ('Nuevo') OR C.SubTipoHist in ('Nuevo'))  
                                    AND C.Resultado = 'Cliente requiere Cita'   
                                    AND C.ServicioTipoOrden = 'Garantia'),0)),  
/***********************************************************************************************************
***********************************************************************************************************/                                                 
       BG   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND A.Subtipo not in('Nuevo','LeadIT')    
                                 AND A.Flotilla = 0   
                                 AND A.ServicioTipoOrden not in('Garantia'))),            
       BH   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo','LeadIT') OR A.SubTipoHist in ('Nuevo','LeadIT'))   
                                 AND A.Flotilla = 0   
                                 AND A.ServicioTipoOrden not in('Garantia'))),           
       BI   = CONVERT(FLOAT,ISNULL((  
                              SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha               
                                 AND A.Subtipo not in ('Nuevo','LeadIT')   
                                 AND A.ServicioTipoOrden = 'Garantia'),0)),  
       BJ   = CONVERT(FLOAT,ISNULL((  
                              SELECT sum(C.cantidad) FROM vistacc2015 C              
                               WHERE C.Usuario = I.UsuCC   
                                 AND dbo.fnFechaSinHora(C.FechaRecepcion) = I.Fecha               
                                 AND C.Tipo = 'Servicio'   
                                 AND (C.Subtipo in ('Nuevo','LeadIT') OR C.SubTipoHist in ('Nuevo','LeadIT'))   
                                 AND C.Resultado in ('Cliente requiere Cita','Reprogramaci�n de Cita')   
                                 AND C.ServicioTipoOrden = 'Garantia'),0)             
			 + ISNULL((SELECT sum(C.Cantidad) FROM vistacch2015 C               
                               WHERE C.Usuario = I.UsuCC   
                                 AND dbo.fnFechaSinHora(C.FechaRecepcion) = I.Fecha              
                                 AND C.Tipo = 'Servicio'   
                                 AND (C.Subtipo in ('Nuevo','LeadIT') OR C.SubTipoHist in ('Nuevo','LeadIT'))   
								 AND C.Resultado in ('Cliente requiere Cita','Reprogramaci�n de Cita')   
                                 AND C.ServicioTipoOrden = 'Garantia'),0)),              
       BK   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND A.Subtipo  not in('Nuevo','LeadIT')   
                                 AND A.Flotilla = 1)),            
       BL   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.FechaEmision = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo','LeadIT') OR A.SubTipoHist in ('Nuevo','LeadIT'))   
                                 AND A.Flotilla = 1   
                                 AND A.ServicioTipoOrden not in('Garantia'))),            
       BM   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A    
                               WHERE A.Usuario = I.UsuCC     
                                 AND A.dtRecepcion = I.Fecha               
                                 AND A.Subtipo not in ('Nuevo','LeadIT')     
                                 AND A.Flotilla = 0              
                                 AND A.ServicioTipoOrden NOT IN ('Garantia') --Omar L.D. no debe sumar las garantias por que se duplicarian en la columna BS              
                                 AND A.Estatus = 'CONCLUIDO')),            
       BN   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo','LeadIT') OR A.SubTipoHist in ('Nuevo','LeadIT'))    
                                 AND A.Flotilla = 0   
                                 AND A.ServicioTipoOrden NOT IN ('Garantia')             
                                 AND A.Estatus = 'CONCLUIDO')),      
       BO   = CONVERT(FLOAT,ISNULL((  
                              SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha              
                                 AND A.Subtipo not in ('Nuevo','LeadIT')   
                                 AND A.Estatus = 'CONCLUIDO'  
                                 AND A.ServicioTipoOrden = 'Garantia'),0)),              
       BP   = CONVERT(FLOAT,ISNULL((  
                              SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha           
                                 AND (A.Subtipo in ('Nuevo','LeadIT') OR A.SubTipoHist in ('Nuevo','LeadIT'))   
                                 AND A.Estatus = 'CONCLUIDO'   
                                 AND A.ServicioTipoOrden = 'Garantia'),0)),           
       BQ   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND A.Subtipo  not in('Nuevo','LeadIT')   
                                 AND A.Flotilla = 1            
                                 AND A.Estatus = 'CONCLUIDO')),            
       BR   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec32015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.dtRecepcion = I.Fecha             
                                 AND (A.Subtipo in ('Nuevo','LeadIT') OR A.SubTipoHist in ('Nuevo','LeadIT'))    
                                 AND A.Flotilla = 1            
                                 AND A.Estatus = 'CONCLUIDO')),  
/***********************************************************************************************************
***********************************************************************************************************/
       BZ   = CONVERT(FLOAT, (SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015/*CCAcumProspec42015*/ A  -- JLAV: CAMBIO 10/02/2016
                               WHERE A.Usuario = I.UsuCC   
                               --AND A.dtAContactar = I.Fecha
                                 AND A.Fecha = I.Fecha                                                    
                                 AND A.Tipo = 'Servicio'   
                                 AND A.Subtipo = 'Cita no show'   
                                 AND A.Estatus ='Realizada')) ,        
       CA=CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                               WHERE A.Usuario = I.UsuCC   
                                 AND A.Fecha = I.Fecha           
                                 AND A.Tipo = 'Servicio'   
                                 AND A.Subtipo = 'Cita no show'   
                                 AND A.Resultado = 'Reprogramaci�n de Cita')),  
      CC = CONVERT(FLOAT,(SELECT COUNT(*)             
                            FROM CitasConfirmarCC2015 C         
                           WHERE C.Usuario = I.UsuCC AND dbo.fnFechaSinHora(C.dtAContactar) = I.Fecha)                          
						+ (SELECT COUNT(*)     
                            FROM CitasConfirmarCCHist2015 D             
                           WHERE D.Usuario = I.UsuCC AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha)),  
      CD = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.dtAContactar = I.Fecha             
                             AND A.Tipo = 'Servicio'   
                             AND A.Subtipo = 'Cita Servicio Confirmaci�n'   
                             AND A.Estatus='Realizada')),            
      CE = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha             
                             AND A.Tipo = 'Servicio'   
                             AND A.Resultado = 'Cita Confirmada')),                           
      CF = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha  
                             AND A.Tipo = 'Servicio'   
                             AND A.Resultado = 'Cancelaci�n de Cita')),    
      CG = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha  
                             AND A.Tipo = 'Servicio'   
                             AND A.Subtipo = 'Cita Servicio Confirmaci�n'  
                             AND A.Resultado = 'Reprogramaci�n de Cita')),            
      /*CI = CONVERT(FLOAT,(SELECT COUNT(*)   
                            FROM (SELECT d.IdProspeccion, FechaMin = min(dbo.fnFechaSinHora(D.dtAContactar))        
				FROM CCProspectosD D     
				JOIN CCProspectos  C ON C.idProspeccion = D.idProspeccion    
                              WHERE C.Usuario = I.UsuCC            
				AND C.Tipo = 'Servicio' 
				AND D.Subtipo = 'Orden Cerrada' 
				AND D.Estatus <> 'Cancelado'
				GROUP BY d.IdProspeccion) AS ta 
                      WHERE ta.FechaMin=I.Fecha)        
                     +(SELECT COUNT(*)   
                            FROM (SELECT d.IdProspeccionH, FechaMinima = min(dbo.fnFechaSinHora(D.dtAContactar))        
				FROM CCHistProspectosD D     
				JOIN CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH    
                                  WHERE C.Usuario = I.UsuCC           
				AND C.Tipo = 'Servicio' 
				AND D.Subtipo = 'Orden Cerrada' 
				AND D.Estatus <> 'Cancelado' AND D.Estatus<>'Descartado'
				GROUP BY d.IdProspeccionH) AS taD 
                          WHERE taD.FechaMinima = I.Fecha ) ), */   
	  CI = CONVERT(FLOAT,(SELECT COUNT(*)  --JLAV: 11/02/2016
							FROM CCAcum2016 A
							WHERE A.Usuario = I.UsuCC
							AND A.FechaMin = I.Fecha)),
	                                   
      CJ = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.dtAContactar = I.Fecha             
                             AND A.Tipo = 'Servicio'   
                             AND A.Subtipo = 'Orden Cerrada'    
                             AND A.Estatus='Realizada'
                             AND a.idProspeccion IN (SELECT IdProspeccion  --JLAV: 11/02/2016
							FROM CCAcum2016 A
							WHERE A.Usuario = I.UsuCC
							AND A.FechaMin = I.Fecha))),            
      CK = CONVERT(FLOAT,(SELECT COUNT(*) FROM CA_CCProspectosD D 
							JOIN CA_CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                           WHERE C.Usuario = I.UsuCC   
                             AND dbo.fnFechaSinHora(D.dtContacto) = I.Fecha             
                             AND C.Tipo = 'Servicio'   
                             AND D.Subtipo = 'Orden Cerrada'   
                             AND D.Resultado = 'Cliente Informado Entrega'
                             AND C.idProspeccion IN (SELECT IdProspeccion  --JLAV: 11/02/2016
							FROM CCAcum2016 A
							WHERE A.Usuario = I.UsuCC
							AND A.FechaMin = I.Fecha))            
                       + (SELECT COUNT(*) FROM CA_CCHistProspectosD D 
							JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
                           WHERE C.Usuario = I.UsuCC   
                             AND dbo.fnFechaSinHora(D.dtContacto) = I.Fecha             
                             AND C.Tipo = 'Servicio'   
                             AND D.Subtipo = 'Orden Cerrada'   
                             AND D.Resultado = 'Cliente Informado Entrega'
                             AND C.idProspeccionH IN (SELECT IdProspeccion  --JLAV: 11/02/2016
							FROM CCAcum2016 A
							WHERE A.Usuario = I.UsuCC
							AND A.FechaMin = I.Fecha))),            
      CM = CONVERT(FLOAT,(SELECT COUNT(*) FROM CA_CCProspectosD D JOIN CA_CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                           WHERE C.Usuario = I.UsuCC   
                             AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                             AND C.Tipo = 'Servicio'   
                             AND D.Subtipo = 'Encuesta'   
                             AND D.IDEvento = 1)            
                       + (SELECT COUNT(*) FROM CA_CCHistProspectosD D JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
                       WHERE C.Usuario = I.UsuCC   
							 AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                             AND C.Tipo = 'Servicio'   
                             AND D.Subtipo = 'Encuesta'   
                             AND D.IDEvento = 1)),            
      CN = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.dtAContactar = I.Fecha             
                             AND A.Tipo = 'Servicio'   
                             AND A.Subtipo = 'Encuesta'   
                             AND A.Estatus='Realizada')),            
      CO = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha             
                             AND A.Tipo = 'Servicio'   
                             AND A.Subtipo = 'Encuesta'   
                             AND A.Resultado = 'Encuesta Realizada')),            
      CP = CONVERT(FLOAT,(SELECT COUNT(*) FROM CA_CCProspectosD D JOIN CA_CCProspectos  C ON C.idProspeccion = D.idProspeccion            
                           WHERE C.Usuario = I.UsuCC   
                             AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                             AND C.Tipo = 'Nuevos'   
                             AND D.Subtipo = 'Encuesta'   
                             AND D.IDEvento = 1)            
                       + (SELECT COUNT(*) FROM CA_CCHistProspectosD D JOIN CA_CCHistProspectos  C ON C.idProspeccionH = D.idProspeccionH            
                           WHERE C.Usuario = I.UsuCC   
                             AND dbo.fnFechaSinHora(D.dtAContactar) = I.Fecha             
                             AND C.Tipo = 'Nuevos'   
							 AND D.Subtipo = 'Encuesta'   
                             AND D.IDEvento = 1)),           
      CQ = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec42015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.dtAContactar = I.Fecha             
                             AND A.Tipo = 'Nuevos'   
                             AND A.Subtipo = 'Encuesta'   
                             AND A.Estatus='Realizada')),          
      CR = CONVERT(FLOAT,(SELECT ISNULL(SUM(Cantidad),0) FROM CCAcumProspec22015 A  
                           WHERE A.Usuario = I.UsuCC   
                             AND A.Fecha = I.Fecha             
                             AND A.Tipo = 'Nuevos'   
                             AND A.Subtipo = 'Encuesta'   
                             AND A.Resultado = 'Encuesta Realizada'))                                               
  FROM CCIndicadores2015 I                 
GO
