IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.FormatoImpresionEncuesta') AND Type = 'V')
  DROP VIEW dbo.FormatoImpresionEncuesta
GO
CREATE VIEW [dbo].[FormatoImpresionEncuesta] AS 
SELECT E.IdCatEncuesta, E.Idventa, E.Fecha, E.Depto, E.Tipo, E.Titulo,
         EmpresaNombre = Empresa.Nombre,
         TituloFormato = CASE WHEN E.Depto = 'Ventas' AND E.Tipo = 'Encuesta' THEN 'Encuesta de Buzón de Ventas' 
                              WHEN E.Depto = 'Servicio' AND E.Tipo = 'Encuesta' THEN 'Encuesta de Buzón de Posventa'
                              ELSE E.Titulo END, 
         FacturaRefacc = V.MovID,
         Vehiculo = A.Descripcion1,
         Serie = V.ServicioSerie, 
         Modelo = VIN.Modelo,
         ClaveAgente = ag.Agente,
         NombreAgente = AG.Nombre, 
         ClaveCliente = C.Cliente,
         NombreCliente = C.Nombre, 
         Telefono = ISNULL(C.TelefonosLada,'') + '-' + ISNULL(C.Telefonos,''),
         Correo = C.eMail1,
         PieFormato = CASE WHEN E.Depto = 'Servicio' AND E.Tipo = 'Encuesta' THEN ''
                           ELSE '' END 
    FROM CCEncuestas E
    LEFT OUTER JOIN Venta V ON E.Idventa = V.ID 
    LEFT OUTER JOIN Empresa ON Empresa.Empresa = V.Empresa 
    LEFT OUTER JOIN VIN ON VIN.VIN = V.ServicioSerie 
    LEFT OUTER JOIN Art A ON A.Articulo = VIN.Articulo 
    LEFT OUTER JOIN Agente AG ON AG.Agente = V.Agente 
    LEFT OUTER JOIN Cte C ON C.Cliente = V.Cliente
GO