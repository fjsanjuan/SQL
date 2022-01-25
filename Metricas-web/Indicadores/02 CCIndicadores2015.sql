IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCIndicadores2015') AND Type = 'V')
  DROP VIEW dbo.CCIndicadores2015
GO
CREATE VIEW CCIndicadores2015  
AS  
  SELECT DISTINCT UsuCC = CA_CCProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CA_CCProspectosD.dtAContactar))    
    FROM CA_CCProspectosD  
    JOIN CA_CCProspectos ON CA_CCProspectosD.idProspeccion = CA_CCProspectos.idProspeccion  
   WHERE NULLIF(CA_CCProspectos.Usuario,'') IS NOT NULL AND CA_CCProspectosD.dtAContactar IS NOT NULL    
  UNION    
  SELECT DISTINCT UsuCC = CA_CCProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CA_CCProspectosD.dtRecepcion))    
    FROM CA_CCProspectosD          
    JOIN CA_CCProspectos ON CA_CCProspectosD.idProspeccion = CA_CCProspectos.idProspeccion          
   WHERE NULLIF(CA_CCProspectos.Usuario,'') IS NOT NULL AND CA_CCProspectosD.dtRecepcion IS NOT NULL    
   UNION       
  SELECT DISTINCT UsuCC = CA_CCHistProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CA_CCHistProspectosD.dtAContactar))     
    FROM CA_CCHistProspectosD  
    JOIN CA_CCHistProspectos ON CA_CCHistProspectosD.idProspeccionH = CA_CCHistProspectos.idProspeccionH  
   WHERE NULLIF(CA_CCHistProspectos.Usuario,'') IS NOT NULL AND CA_CCHistProspectosD.dtAContactar IS NOT NULL       
   UNION    
  SELECT DISTINCT UsuCC = CA_CCHistProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CA_CCHistProspectosD.dtRecepcion))    
    FROM CA_CCHistProspectosD          
    JOIN CA_CCHistProspectos ON CA_CCHistProspectosD.idProspeccionH = CA_CCHistProspectos.idProspeccionH          
   WHERE NULLIF(CA_CCHistProspectos.Usuario,'') IS NOT NULL AND CA_CCHistProspectosD.dtRecepcion IS NOT NULL   

GO
