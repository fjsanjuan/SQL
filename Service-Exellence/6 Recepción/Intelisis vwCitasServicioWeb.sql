CREATE VIEW dbo.vwCitasServicioWeb AS SELECT DISTINCT
dbo.Venta.Sucursal,
dbo.Venta.FechaEmision AS FechaCita,
dbo.Venta.HoraRecepcion AS HoraCita,
dbo.Venta.ID AS IdCita,
dbo.Venta.MovID AS NoCita,
dbo.Venta.Agente AS Asesor,
dbo.Venta.CFechaLlegada,
dbo.Venta.CFechaAtencion,
dbo.Cte.Nombre,
dbo.Cte.PersonalNombres AS NombreCliente,
dbo.Cte.PersonalApellidoPaterno AS Ap_PatCliente,
dbo.Cte.PersonalApellidoMaterno AS Ap_MatCliente,
ISNULL( dbo.Cte.TelefonosLada, '' ) + ISNULL( dbo.Cte.Telefonos, '' ) AS Telefono,
ISNULL( dbo.Venta.ServicioSerie, '' ) AS VIN,
ISNULL( artvin.Articulo, ISNULL( artvin.Articulo, '' ) ) + '-' + ISNULL( artvin.Descripcion1, ISNULL( artvin.Descripcion1, '' ) ) AS VehiculoDescripcion,
ISNULL( VIN.Modelo, ISNULL( dbo.Venta.ServicioModelo, '' ) ) AS Modelo,
ISNULL( dbo.Venta.ServicioPlacas, '' ) AS Placas,
dbo.Venta.FechaRequerida AS FechaPromesa,
dbo.Venta.HoraRequerida AS HoraPromesa,
ISNULL( dbo.VIN.ColorExteriorDescripcion, '' ) AS Color 
FROM
  dbo.Venta
  INNER JOIN dbo.Cte ON dbo.Venta.Cliente = dbo.Cte.Cliente
  LEFT OUTER JOIN dbo.VIN ON dbo.Venta.ServicioSerie = dbo.VIN.VIN
  LEFT OUTER JOIN dbo.Art AS artvin ON dbo.VIN.Articulo = artvin.Articulo
  LEFT OUTER JOIN dbo.Art ON dbo.Venta.ServicioArticulo = artvin.Articulo 
WHERE
  ( dbo.Venta.Mov IN ( 'cita servicio' ) ) 
  AND ( dbo.Venta.Estatus = 'CONFIRMAR' )