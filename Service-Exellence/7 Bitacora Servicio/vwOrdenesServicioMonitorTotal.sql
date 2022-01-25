CREATE VIEW [dbo].[vwOrdenesServicioMonitorTotal] AS 
With Ordenes as(
	select id,consecutivo, Concluido 
	from vwOrdenesServicioMonitorDV2 --where sucursal = 1
)
select * from Ordenes 
--PIVOT (SUM(horas) for Consecutivo in([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20])) as p;
PIVOT (count(concluido) for Consecutivo in([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20], [21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40])) as p;
GO