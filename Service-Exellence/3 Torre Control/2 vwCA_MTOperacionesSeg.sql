CREATE VIEW vwCA_MTOperacionesSeg
AS
  SELECT V.*,    
         D.Renglon,     
         Mecanico = D.Agente,    
         MODescripcion = A.Descripcion1,    
         ClaveOperacion = D.Articulo,    
         IniEstimado = D.CCFechaIni,    
         FinEstimado = D.CCFechaFin,    
         DEstimado = CASE WHEN D.CCFechaFin IS NOT NULL AND D.CCFechaIni IS NOT NULL THEN (CONVERT(FLOAT,DATEDIFF(MINUTE,D.CCFechaIni,CCFechaFin))/60) ELSE 0 END,    
         EstadoActualOper = D.Estado,    
         IdSeguimiento = SO.ID,    
         EstadoSeg = SO.Estado,    
         SO.Comentarios,    
         InicioReal = SO.FechaInicio,    
         FinReal = ISNULL(SO.FechafIN,CASE WHEN SO.Estado = 'Completada' THEN SO.FechaInicio ELSE ISNULL(MT.FechaComenzoEstatus,GETDATE()) END),    
         DReal = CONVERT(float,DATEDIFF(MINUTE,SO.FechaInicio,ISNULL(SO.FechafIN,CASE WHEN SO.Estado = 'Completada' THEN SO.FechaInicio ELSE GETDATE() END)))/60,    
         DTrabajado =  CASE WHEN SO.Estado = 'En Curso' THEN CONVERT(float,DATEDIFF(MINUTE,SO.FechaInicio,ISNULL(SO.FechafIN,CASE WHEN SO.Estado = 'Completada' THEN SO.FechaInicio ELSE GETDATE() END)))/60 ELSE 0 END    
    FROM vwCA_MTInfoVenta V    
    LEFT OUTER JOIN VentaD D ON V.IdVenta = D.ID    
    LEFT OUTER JOIN Art A ON A.Articulo = D.Articulo AND A.Tipo = 'Servicio'    
   RIGHT outer join CA_SeguimientoOperaciones SO ON SO.IdVenta = D.ID AND SO.Renglon = D.Renglon          
    LEFT JOIN (SELECT Modulo, ID, IDOrden=MAX(IDOrden), FechaComenzoEstatus=MAX(FechaComenzo), Sucursal  
                        FROM MovTiempo   
                       WHERE Modulo = 'VTAS'   
                       --AND Estatus IN ('CONCLUIDO','CANCELADO')  
                        AND (Estatus IN ('CONCLUIDO','CANCELADO')  or (Estatus = 'PENDIENTE' AND Situacion = 'Orden Cerrada'))
                       GROUP BY Modulo, ID, Sucursal) AS MT ON MT.Id = V.IdVenta --AND MT.Estatus = M.Estatus  
      
   WHERE V.Mov IN ('Servicio')  

GO