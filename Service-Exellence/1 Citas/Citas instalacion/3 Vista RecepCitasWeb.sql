IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.RecepCitasWeb') AND Type = 'V')
  DROP VIEW dbo.RecepCitasWeb
GO
CREATE VIEW RecepCitasWeb  
AS  
SELECT Venta.Empresa,  
       Venta.Sucursal,  
       Recepcion      = FechaEmision,   
       HoraRecepcion  = ISNULL(NULLIF(RTRIM(LTRIM(HoraRecepcion)),''),'00:00'),  
       Cita           = MovID,   
       ClaveCliente   = Venta.Cliente,   
       NombreCliente  = Cte.Nombre,   
       ClaveVehiculo  = Venta.ServicioArticulo,         
       Vehiculo       = ISNULL(Art.Descripcion1,''),  
       ColorVehiculo  = ISNULL(ISNULL(NULLIF(RTRIM(LTRIM(Venta.ServicioDescripcion)),''), NULLIF(RTRIM(LTRIM(VIN.ColorExteriorDescripcion)),'')),''),  
       PlacasVehiculo = ISNULL(ISNULL(NULLIF(RTRIM(LTRIM(ServicioPlacas)),''), NULLIF(RTRIM(LTRIM(VIN.Placas)),'')),''),  
       Kilometraje    = ISNULL(ISNULL(NULLIF(ServicioKms,0),NULLIF(VIN.Km,0)),0),  
       Servicio       = ISNULL(ISNULL(NULLIF(ServicioTipo,''),(SELECT TOP 1 DescripcionExtra FROM VentaD JOIN Art ON Art.Articulo = VentaD.Articulo         
                        WHERE ID = Venta.ID AND Art.Tipo = 'Servicio')),''),  
       Entrega        = ISNULL(FechaRequerida,''),  
       HoraEntrega    = ISNULL(HoraRequerida,''),  
       ClaveAgente    = Venta.Agente,   
       NombreAgente   = Agente.Nombre,     
       EstatusCita    = Venta.Estatus,  
       Fechayhora     = FechaEmision + ISNULL(NULLIF(RTRIM(LTRIM(HoraRecepcion)),''),'00:00'),  
       Venta.ID,
	   ISNULL(Venta.CFechaLlegada,0) as CFechaLlegada,
	   ISNULL(Venta.CFechaAtencion,0) as CFechaAtencion,
       NoShow = (SELECT COUNT(*) from MovBitacora where ID = Venta.ID AND Tipo ='No Show')
      FROM Venta WITH(NOLOCK)
      JOIN Cte WITH(NOLOCK)             ON Venta.Cliente          = Cte.Cliente        
      JOIN Art WITH(NOLOCK)             ON Venta.ServicioArticulo = Art.Articulo         
      JOIN Agente WITH(NOLOCK)          ON Venta.Agente           = Agente.Agente        
      LEFT OUTER JOIN VIN WITH(NOLOCK)  ON VIN.VIN                = Venta.ServicioSerie  
     WHERE Venta.Mov = 'Cita Servicio' AND Venta.Estatus IN ('CONFIRMAR','CONCLUIDO')
GO