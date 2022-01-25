IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.EncuestaFacturas') AND Type = 'V')
  DROP VIEW dbo.EncuestaFacturas
GO
CREATE VIEW [dbo].[EncuestaFacturas] AS 
SELECT V.ID, V.Mov, V.MovID, V.Cliente, C.Nombre,   
         Estatus = (CASE WHEN V.Mov = 'Servicio' THEN 'CONCLUIDO' ELSE V.Estatus END),   
         V.FechaEmision,  
         Depto = CASE WHEN V.Mov IN ('FEL Flotilla','FEL Unidad','FEL Usados') THEN 'Ventas' ELSE 'Servicio' END,
         Telefono = ISNULL(C.TelefonosLada,'') + '-' + ISNULL(C.Telefonos,''),
         Correo = C.eMail1,
         Serie = V.ServicioSerie,
         EmpresaNombre = (SELECT Nombre FROM Empresa WHERE Empresa = V.Empresa),
         TituloFormato = CASE WHEN V.Mov IN ('FEL Flotilla','FEL Unidad','FEL Usados') THEN 'Encuesta de Buzón de Ventas' 
                              WHEN V.Mov NOT IN ('FEL Flotilla','FEL Unidad','FEL Usados') THEN 'Encuesta de Buzón de Posventa'
                              ELSE 'Encuesta' END,
         NombreAgente = (SELECT Nombre FROM Agente WHERE Agente = V.Agente),
         Vehiculo = (SELECT Descripcion1 FROM Art WHERE Articulo = V.ServicioArticulo)
    FROM Venta V  
    LEFT OUTER JOIN Cte C ON V.Cliente = C.Cliente
   WHERE V.Mov IN ('FEL Unidad','FEL Usados','FEL Flotilla')--('FEL Garantía','FEL Servicio')  
      OR (V.Mov = 'Servicio' AND AnexoID IS NULL AND ISNULL(V.Situacion,'Orden Cerrada') = 'Orden Cerrada')
GO