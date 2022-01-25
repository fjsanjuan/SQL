CREATE VIEW dbo.vwCA_MTInfoVenta
AS
  SELECT IdVenta = V.ID, V.Mov, V.MovID, V.FechaEmision, V.Estatus, V.Situacion, V.Sucursal, V.ServicioTipoOperacion, V.ServicioTipoOrden, Torre = V.ServicioNumero, ColorTorre = V.ServicioIdentificador, 
         HoraLlegada =CASE WHEN LEN(V.HoraRecepcion) = 4 THEN DATEADD(hh,CONVERT(int, SUBSTRING(V.HoraRecepcion,1,1)),DATEADD(MI,CONVERT(int, SUBSTRING(V.HoraRecepcion,3,2)),V.FechaEmision))
                            ELSE DATEADD(hh,CONVERT(int, SUBSTRING(ISNULL(V.HoraRecepcion ,'00:00'),1,2)),DATEADD(MI,CONVERT(int, SUBSTRING(ISNULL(V.HoraRecepcion,'00:00'),4,2)),V.FechaEmision)) END,
         HoraPromesa = CASE WHEN LEN(V.HoraRequerida) = 4 THEN DATEADD(hh,CONVERT(int, SUBSTRING(V.HoraRequerida,1,1)),DATEADD(MI,CONVERT(int, SUBSTRING(V.HoraRequerida,3,2)),V.FechaRequerida))
                              ELSE DATEADD(hh,CONVERT(int, SUBSTRING(ISNULL(V.HoraRequerida ,'00:00'),1,2)),DATEADD(MI,CONVERT(int, SUBSTRING(ISNULL(V.HoraRequerida,'00:00'),4,2)),V.FechaRequerida)) END,
         ClaveAsesor = Ag.Agente, Ag.PersonalNombres, Ag.PersonalApellidoPaterno, Ag.PersonalApellidoMaterno,
         CteNombre = CASE WHEN C.FiscalRegimen = 'Persona Fisica' THEN C.PersonalNombres + ' ' + ISNULL(C.PersonalNombres2,'') + ' ' + ISNULL(C.PersonalApellidoPaterno,'') + ' ' + ISNULL(C.PersonalApellidoMaterno,'') 
                            ELSE C.Nombre END,
         C.Cliente, CteCorreo = C.eMail1, CteLada = C.TelefonosLada, CteTel = C.Telefonos,
         VIN.VIN, ClaveModelo=VIN.Articulo, AnoModelo=VIN.Modelo, Modelo=AV.Descripcion1
    FROM Venta V
    LEFT OUTER JOIN Agente Ag ON AG.Agente = V.Agente 
    LEFT OUTER JOIN Cte C ON C.Cliente = V.Cliente
    LEFT OUTER JOIN VIN ON VIN.VIN = V.ServicioSerie  
    LEFT OUTER JOIN Art AV ON AV.Articulo = VIN.Articulo 
   WHERE V.Mov IN ('Servicio','Cita Servicio')
     AND V.AnexoID IS NULL 

GO