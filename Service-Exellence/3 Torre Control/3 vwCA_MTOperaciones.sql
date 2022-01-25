CREATE VIEW vwCA_MTOperaciones 
AS
  SELECT IdVenta, Mov, MovID, FechaEmision, Estatus, Situacion, Sucursal, ServicioTipoOperacion, ServicioTipoOrden, Torre, ColorTorre, HoraLlegada, HoraPromesa, 
         ClaveAsesor, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, CteNombre, Cliente, CteCorreo, CteLada, CteTel, VIN, ClaveModelo, AnoModelo, Modelo, 
         Renglon, Mecanico, MODescripcion, ClaveOperacion, IniEstimado, FinEstimado, DEstimado, EstadoActualOper,
         --InicioReal = (SELECT MIN(MS.InicioReal) FROM MTOperacionesSeg MS WHERE MS.IdVenta = S.IdVenta AND MS.Renglon = S.Renglon AND MS.EstadoSeg = 'En Curso'),
         --FinReal = (SELECT MAX(MS.FinReal) FROM MTOperacionesSeg MS WHERE MS.IdVenta = S.IdVenta AND MS.Renglon = S.Renglon AND MS.EstadoSeg = 'Completada'),
         InicioReal = MIN(S.InicioReal),
         FinReal = MAX(S.FinReal),
         DReal = SUM(DReal),
         DTrabajado = SUM(DTrabajado)
    FROM vwCA_MTOperacionesSeg S
   GROUP BY IdVenta, Mov, MovID, FechaEmision, Estatus, Situacion, Sucursal, ServicioTipoOperacion, ServicioTipoOrden, Torre, ColorTorre, HoraLlegada, HoraPromesa, 
            ClaveAsesor, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, CteNombre, Cliente, CteCorreo, CteLada, CteTel, VIN, ClaveModelo, AnoModelo, Modelo, 
            Renglon, Mecanico, MODescripcion, ClaveOperacion, IniEstimado, FinEstimado, DEstimado, EstadoActualOper

GO