IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwIndicadorTaller') AND Type = 'V')
  DROP VIEW dbo.vwIndicadorTaller
GO
CREATE VIEW [dbo].[vwIndicadorTaller] 
AS 
  SELECT IDCita = C.ID,
         Cita   = C.MovID, 
		 IDOrden= S.ID,
	     Orden  = S.MovID, 
         S.Agente,
		 S.FechaEmision,
         Llegada   = C.CFechaLlegada,
	     Recepcion = C.CFechaAtencion, 
	     Inicio    = S.FechaRegistro, 
         Termina   = (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Comienza lavado' ORDER BY FechaComenzo DESC),
         Lavado    = (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Finaliza lavado' ORDER BY FechaComenzo DESC),
	     Entrega   = CASE S.Estatus WHEN 'CONCLUIDO' THEN 
		              ISNULL((SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Orden Cerrada' ORDER BY FechaComenzo DESC),
					         (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Estatus   = 'CONCLUIDO'     ORDER BY FechaComenzo DESC))
		             ELSE    (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Orden Cerrada' ORDER BY FechaComenzo DESC) END,
		 S.Estatus,
		 C.Sucursal
    FROM Venta C
    JOIN Venta S ON C.Empresa = S.Empresa AND C.Sucursal = S.Sucursal AND S.Origen = C.Mov AND S.OrigenID = C.MovID
   WHERE C.Mov = 'Cita Servicio' AND C.FechaEmision > '31-12-2018' AND C.Estatus IN ('CONCLUIDO','CONFIRMAR') AND S.Estatus IN ('CONCLUIDO','PENDIENTE')

   UNION ALL

  SELECT IDCita = NULL,
         Cita   = NULL, 
		 IDOrden= S.ID,
	     Orden  = S.MovID, 
         S.Agente,
		 S.FechaEmision,
         Llegada   = NULL,
	     Recepcion = NULL, 
	     Inicio    = S.FechaRegistro, 
         Termina   = (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Comienza lavado' ORDER BY FechaComenzo DESC),
         Lavado    = (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Finaliza lavado' ORDER BY FechaComenzo DESC),
	     Entrega   = CASE S.Estatus WHEN 'CONCLUIDO' THEN 
		              ISNULL((SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Orden Cerrada' ORDER BY FechaComenzo DESC),
					         (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Estatus   = 'CONCLUIDO'     ORDER BY FechaComenzo DESC))
		             ELSE    (SELECT TOP 1 FechaComenzo FROM MovTiempo WHERE Modulo = 'VTAS' AND ID = S.ID AND Situacion = 'Orden Cerrada' ORDER BY FechaComenzo DESC) END,
		 S.Estatus,
		 S.Sucursal
    FROM Venta S
   WHERE S.Mov = 'Servicio' AND S.FechaEmision > '31-12-2018' AND S.Estatus IN ('CONCLUIDO','PENDIENTE') AND S.OrigenID IS NULL AND S.AnexoID IS NULL
GO