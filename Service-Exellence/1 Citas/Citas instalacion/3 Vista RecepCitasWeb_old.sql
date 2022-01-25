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
       Vehiculo       = Art.Descripcion1,  
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
       Venta.ID  
      FROM Venta        
      JOIN Cte            ON Venta.Cliente          = Cte.Cliente        
      JOIN Art            ON Venta.ServicioArticulo = Art.Articulo         
      JOIN Agente         ON Venta.Agente           = Agente.Agente        
      LEFT OUTER JOIN VIN ON VIN.VIN                = Venta.ServicioSerie  
     WHERE Venta.Mov = 'Cita Servicio' AND Venta.Estatus IN ('CONFIRMAR','CONCLUIDO')  
