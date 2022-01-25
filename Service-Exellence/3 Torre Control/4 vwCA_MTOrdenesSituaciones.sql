CREATE VIEW vwCA_MTOrdenesSituaciones 
AS
  SELECT V.*,
         IniEstimado = MO.IniEstimado,--(SELECT MIN(S.IniEstimado) FROM MTOperacionesSeg S WHERE S.IdVenta = V.IdVenta), 
         FinEstimado = MO.FinEstimado,--(SELECT MAX(S.FinEstimado) FROM MTOperacionesSeg S WHERE S.IdVenta = V.IdVenta),
         DEstimado, 
         InicioReal = MO.InicioReal,--(SELECT MIN(MO.InicioReal) FROM MTOperaciones MO WHERE MO.IdVenta = V.IdVenta),
         FinReal = MO.FinReal,--(SELECT MAX(MO.FinReal) FROM MTOperaciones MO WHERE MO.IdVenta = V.IdVenta),
         DReal, 
         DTrabajado,
         IdSituacion = MT.IDOrden,
         SituacionHist = MT.Situacion,
         FechaIniSituacion = MT.FechaComenzo,
         FechaFinSituacion = ISNULL(MT.FechaTermino,CASE WHEN mt.Situacion = 'Orden Cerrada' THEN MT.FechaComenzo ELSE GETDATE() END), 
         UsuarioSituacion = MT.Usuario,
         MO.Mecanico
    FROM vwCA_MTInfoVenta V
    LEFT OUTER JOIN (SELECT IdVenta, IniEstimado=MIN(IniEstimado), FinEstimado=MAX(FinEstimado), InicioReal=MIN(InicioReal), FinReal=MAX(FinReal), 
                            DEstimado=SUM(DEstimado), DReal=SUM(DReal), DTrabajado=SUM(DTrabajado), Mecanico
                       FROM vwCA_MTOperaciones GROUP BY IdVenta, Mecanico) AS MO ON MO.IdVenta = V.IDVenta
   RIGHT OUTER JOIN MovTiempo MT ON MT.Modulo = 'VTAS' AND MT.ID = V.IdVenta AND mt.Estatus = 'PENDIENTE'
   WHERE V.Mov = 'Servicio'

GO