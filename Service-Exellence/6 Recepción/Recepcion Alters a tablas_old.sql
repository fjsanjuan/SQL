ALTER TABLE orden_servicio_inspeccion ADD existen_danios bit
ALTER TABLE orden_servicio_inspeccion ADD dan_costDerecho bit
ALTER TABLE orden_servicio_inspeccion ADD dan_parteDel bit
ALTER TABLE orden_servicio_inspeccion ADD dan_intAsAlf bit
ALTER TABLE orden_servicio_inspeccion ADD dan_costIzq bit
ALTER TABLE orden_servicio_inspeccion ADD dan_parteTras bit
ALTER TABLE orden_servicio_inspeccion ADD dan_cristFaros bit
ALTER TABLE orden_servicio_inspeccion ADD inf_sistEsc varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_amort varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_tuberias varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_transeje_transm varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_sistDir varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_chasisSucio varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD inf_golpesEspecif varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_ddBalata varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_ddDisco varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_ddNeumat varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_diBalata varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_diDisco varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_diNeumat varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tdBalata varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tdDisco varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tdNeumat varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tiBalata varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tiDisco varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_tiNeumat varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD sfrenos_refNeumat varchar(20)
ALTER TABLE orden_servicio_inspeccion ADD reqRev_inferior bit
ALTER TABLE orden_servicio_inspeccion ADD reqRev_sistFrenos bit

ALTER TABLE firma_electronica ADD firma_formatoInventario nvarchar(MAX);

ALTER TABLE presupuesto_detalle ADD comentario varchar(255);



ALTER TABLE orden_servicio_inspeccion ADD profecoFame varchar(100)

--verificar si aplica o no 
--ALTER TABLE sucursal ADD ruta_arch_ra varchar(100) null

-- es para los campos de luces del inventario de inspeccion ravisa
ALTER TABLE dbo.orden_servicio_inspeccion ALTER COLUMN luces_int varchar(55) NULL

-- es para guardar los datos en los campos de luces del tablero en ravisa (inicadores de falla activados

ALTER TABLE orden_servicio_inspeccion ADD luces_tablero varchar(100)