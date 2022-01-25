IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_VistaAgenteDisponibilidad') AND Type = 'V')
  DROP VIEW dbo.vwCA_VistaAgenteDisponibilidad
GO
CREATE VIEW dbo.vwCA_VistaAgenteDisponibilidad
AS
  SELECT A.Agente, A.Tipo,A.SucursalEmpresa,A.Estatus,A.Especialidad,A.Personal,A.Nombre,A.PersonalNombres,A.PersonalApellidoPaterno,A.PersonalApellidoMaterno, 
         J.*, Permiso = CASE WHEN P.ID IS NOT NULL THEN 'SI' ELSE 'NO' END, PermisoD = P.FechaD, PermisoA = P.FechaA  
    FROM vwCA_VistaAgentePersonal A
    LEFT OUTER JOIN CA_JornadaTiempoDia J ON J.Jornada = A.Jornada 
    LEFT OUTER JOIN vwCA_VistaPersonalPermisos P ON P.Agente = A.Agente AND (J.Fecha >= dbo.fnFechaSinHora( P.FechaD) AND J.Fecha <= dbo.fnFechaSinHora( P.FechaA ))
   WHERE NULLIF(A.Jornada,'') IS NOT NULL

GO