CREATE VIEW vwCA_MTOrdenes 
AS
  SELECT IdVenta, Mov, MovID, FechaEmision, Estatus, Situacion, Sucursal, ServicioTipoOperacion, ServicioTipoOrden, Torre, ColorTorre, 
       HoraLlegada, HoraPromesa, ClaveAsesor, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, CteNombre, Cliente, 
       CteCorreo, CteLada, CteTel, VIN, ClaveModelo, AnoModelo, Modelo, Mecanico,
       IniEstimado, FinEstimado, DEstimado, InicioReal, FinReal, DReal, DTrabajado
  FROM vwCA_MTOrdenesSituaciones
  GROUP BY IdVenta, Mov, MovID, FechaEmision, Estatus, Situacion, Sucursal, ServicioTipoOperacion, ServicioTipoOrden, Torre, ColorTorre, 
           HoraLlegada, HoraPromesa, ClaveAsesor, PersonalNombres, PersonalApellidoPaterno, PersonalApellidoMaterno, CteNombre, Cliente, 
           CteCorreo, CteLada, CteTel, VIN, ClaveModelo, AnoModelo, Modelo, Mecanico,
           IniEstimado, FinEstimado, DEstimado, InicioReal, FinReal, DReal, DTrabajado

GO