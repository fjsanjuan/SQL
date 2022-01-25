CREATE VIEW [dbo].[vwOrdenesServicioMonitorDV2] AS 
	select     
		ROW_NUMBER ( ) over (partition by o.Empresa, o.Sucursal, o.id order by o.Empresa, o.Sucursal,o.id) AS Consecutivo,
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
		 d.estado as  Situacion,
		 case when d.Estado = 'Completada' then 1 else 0 end as Concluido
	from venta as o    
		join ventad d on o.id = d.id 
		inner join art on d.articulo = art.articulo  and tipo <> 'Normal' 
	where o.Estatus = 'PENDIENTE'  AND o.Mov = 'Servicio' AND o.Mov = 'Servicio' and d.cantidad > isnull(d.cantidadcancelada, 0)
GO