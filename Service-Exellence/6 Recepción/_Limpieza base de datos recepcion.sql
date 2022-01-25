TRUNCATE TABLE archivo
TRUNCATE TABLE bitacora_lavado
TRUNCATE TABLE firma_electronica
TRUNCATE TABLE orden_servicio_desglose
TRUNCATE TABLE orden_servicio_inspeccion
truncate table orden_servicio -- Resetear Current Identity Value
TRUNCATE TABLE presupuestos
TRUNCATE TABLE presupuesto_detalle


DBCC CHECKIDENT ('[orden_servicio]', RESEED, 0);
GO