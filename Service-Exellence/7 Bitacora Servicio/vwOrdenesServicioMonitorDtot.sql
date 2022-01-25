CREATE VIEW [dbo].[vwOrdenesServicioMonitorDtot] as     
SELECT
	 o.empresa as Empresa,
	 o.Sucursal as Sucursal,
	 o.id as Id, 
	 d.Renglon,
	 o.MovID as NoOrden,
	 art.Articulo,
	 case when len(isnull(art.Descripcion1, '')) < len(isnull(d.descripcionextra, '')) then isnull(d.descripcionextra, 'Mano de Obra') else isnull(art.Descripcion1, 'Mano de Obra') end as Descripcion,
	 d.cantidad as horas,
	 d.CCFechaIni as FechaInicio,
	 d.CCFechaFin as FechaFin,
	 d.estado as  Situacion
from venta as o    
	join ventad d on o.id = d.id 
	inner join art on d.articulo = art.articulo  and tipo <> 'Normal'  and ISNULL(art.categoria ,'') = 'TOT'
where o.Estatus = 'PENDIENTE'  AND o.Mov = 'Servicio' and d.cantidad > isnull(d.cantidadcancelada, 0)
GO