IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwCA_VistaAgentePersonal') AND Type = 'V')
  DROP VIEW dbo.VistaAgentePersonal
GO
CREATE VIEW dbo.vwCA_VistaAgentePersonal
AS
  SELECT Agente = A.Agente, A.Tipo, A.SucursalEmpresa,A.Estatus,A.Especialidad, Personal = A.Personal, A.Nombre, 
         A.PersonalNombres, A.PersonalApellidoPaterno, A.PersonalApellidoMaterno,
         Jornada = ISNULL(NULLIF(A.Jornada,''),P.Jornada) 
    FROM Agente A
    LEFT OUTER JOIN Personal P ON P.Personal = A.Personal AND A.Nomina = 1

GO