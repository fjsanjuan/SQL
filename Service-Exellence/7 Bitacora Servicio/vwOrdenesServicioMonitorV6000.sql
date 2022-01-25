ALTER VIEW [dbo].[vwOrdenesServicioMonitor] AS 
	select       
		 o.empresa as Empresa,  
		 o.Sucursal as Sucursal,  
		 o.id as Id,   
		 o.MovID as NoOrden,
		 ISNULL(o.FechaOriginal,0) as FechaOriginal,   
		 convert(varchar(10),o.FechaEmision,126) + ' ' + convert(varchar(5), ISNULL(o.horarecepcion,'00:00:00'), 108)  as FechaRecepcion,    
		 convert(varchar(10),o.FechaEmision,126) as f1,  
		 convert(varchar(10),o.fecharequerida,126)  as f2,     
		 convert(varchar(5), o.horarecepcion, 108) as h1,  
		 convert(varchar(5), isnull( o.horarequerida, ''), 108)  as h2,  
		 cte.Nombre as Cliente,      
		 a.nombre as Asesor,      
		 RIGHT(dbo.fnCA_DepuraVin(vin.vin),6) AS VIN,  
		 artvin.descripcion1 as descripcion,  
		 convert(varchar(10),o.fecharequerida,126)  + ' ' + convert(varchar(5), isnull( o.horarequerida, ''), 108)   as FechaPromesa,  
		 o.horarequerida as HoraPromesa,  
		 convert(varchar(10),getdate(),126) as FechaActual,  
		 convert(char(5), getdate(), 108) as HoraActual,  
		 dbo.fnporcentajesbit(o.id, 1) as cantidad,  
		 dbo.fnporcentajesbit(o.id, 2)as realizadas  
		 , case when dbo.fnporcentajesbit(o.id, 3) = 1 then 'ok.png' else 'NA' end as tot  
		 ,dbo.fnporcentajesbit(o.id, 4)as completot  
		 ,case when dbo.fnporcentajesbit(o.id, 5) = 1 then 'error.png'
		  WHEN  dbo.fnporcentajesbit(o.id, 5) = 2 THEN 'ok.png' 
		  else 'NA' end as refacc  
		 ,o.situacion  
		 ,convert(varchar(10),o.situacionfecha,126) AS fechasituacion  
		 ,case when o.ServicioExpress  = 1 THEN 'ok.png' ELSE 'NA' END  AS ServicioExpress  
	from venta as o      
		--join ventad d on o.id = d.id   
		inner join Agente as a on o.Agente = a.Agente      
		inner join cte on o.Cliente =  cte.cliente      
		inner join vin on o.ServicioSerie = vin.vin        
		inner join art artvin on vin.articulo = artvin.articulo      
		--inner join art on o.ServicioArticulo = art.articulo      
	where o.Estatus = 'PENDIENTE'  AND o.Mov = 'Servicio' AND o.ServicioTipoOrden = 'Publico'
