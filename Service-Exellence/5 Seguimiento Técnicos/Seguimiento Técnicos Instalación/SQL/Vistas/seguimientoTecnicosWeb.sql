CREATE VIEW [dbo].[seguimientoTecnicosWeb] AS 
SELECT
Venta.ID,
Venta.Empresa,
Venta.MovID,
Venta.Estatus,
Venta.Situacion,
Venta.FechaRequerida,
Venta.HoraRequerida,
Venta.ServicioArticulo,
Venta.ServicioSerie,
Venta.ServicioIdentificador,
Venta.ServicioPlacas,
Venta.ServicioNumero,
Venta.ServicioModelo,
Venta.Comentarios,
VentaD.Renglon,
VentaD.RenglonSub,
VentaD.RenglonID,
VentaD.SubCuenta,
VentaD.Articulo,
VentaD.Cantidad,
VentaD.Precio,
VentaD.DescuentoLinea,
VentaD.DescripcionExtra,
VentaD.Agente,
SeguimientoOperaciones.Estado,
VentaD.CCFechaIni,
VentaD.CCFechaFin,
VentaD.CCTiempoTab,
Art.Articulo as Articulo1,
Art.Descripcion1,
Art.Categoria,
Art.Tipo,
AgenteDetalle.Agente as Agente1,
AgenteDetalle.Nombre,
Venta.ServicioTipoOperacion
FROM Venta
JOIN VentaD ON Venta.ID=VentaD.ID AND VentaD.Cantidad > ISNULL(VentaD.CantidadCancelada, 0)
JOIN Art ON VentaD.Articulo=Art.Articulo
LEFT OUTER JOIN Agente AgenteDetalle ON VentaD.Agente=AgenteDetalle.Agente
LEFT JOIN SeguimientoOperaciones ON SeguimientoOperaciones.idVenta = VentaD.id AND SeguimientoOperaciones.RenglonId = VentaD.RenglonId

WHERE
	SeguimientoOperaciones.ID = (SELECT TOP  1  id  FROM SeguimientoOperaciones  WHERE IdVenta = VentaD.ID  AND Renglon = VentaD.Renglon  AND  RenglonId = VentaD.RenglonID ORDER BY Id DESC)
	

UNION ALL

	
SELECT  
Venta.ID,
Venta.Empresa,
Venta.MovID,
Venta.Estatus,
Venta.Situacion,
Venta.FechaRequerida,
Venta.HoraRequerida,
Venta.ServicioArticulo,
Venta.ServicioSerie,
Venta.ServicioIdentificador,
Venta.ServicioPlacas,
Venta.ServicioNumero,
Venta.ServicioModelo,
Venta.Comentarios,
VentaD.Renglon,
VentaD.RenglonSub,
VentaD.RenglonID,
VentaD.SubCuenta,
VentaD.Articulo,
VentaD.Cantidad,
VentaD.Precio,
VentaD.DescuentoLinea,
VentaD.DescripcionExtra,
VentaD.Agente,
SeguimientoOperaciones.Estado,
VentaD.CCFechaIni,
VentaD.CCFechaFin,
VentaD.CCTiempoTab,
Art.Articulo as Articulo1,
Art.Descripcion1,
Art.Categoria,
Art.Tipo,
AgenteDetalle.Agente as Agente1,
AgenteDetalle.Nombre,
Venta.ServicioTipoOperacion
FROM Venta
JOIN VentaD ON Venta.ID=VentaD.ID AND VentaD.Cantidad > ISNULL(VentaD.CantidadCancelada, 0)
JOIN Art ON VentaD.Articulo=Art.Articulo
LEFT OUTER JOIN Agente AgenteDetalle ON VentaD.Agente=AgenteDetalle.Agente
LEFT JOIN SeguimientoOperaciones ON SeguimientoOperaciones.idVenta = VentaD.id AND SeguimientoOperaciones.RenglonId = VentaD.RenglonId

WHERE
	SeguimientoOperaciones.id = NULL





