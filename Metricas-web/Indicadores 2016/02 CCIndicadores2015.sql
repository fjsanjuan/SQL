IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CCIndicadores2015') AND Type = 'V')
  DROP VIEW dbo.CCIndicadores2015
GO
CREATE VIEW CCIndicadores2015  
AS  
  SELECT DISTINCT UsuCC = CCProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CCProspectosD.dtAContactar))    
    FROM CCProspectosD  
    JOIN CCProspectos ON CCProspectosD.idProspeccion = CCProspectos.idProspeccion  
   WHERE NULLIF(CCProspectos.Usuario,'') IS NOT NULL AND CCProspectosD.dtAContactar IS NOT NULL    
  UNION    
  SELECT DISTINCT UsuCC = CCProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CCProspectosD.dtRecepcion))    
    FROM CCProspectosD          
    JOIN CCProspectos ON CCProspectosD.idProspeccion = CCProspectos.idProspeccion          
   WHERE NULLIF(CCProspectos.Usuario,'') IS NOT NULL AND CCProspectosD.dtRecepcion IS NOT NULL    
   UNION       
  SELECT DISTINCT UsuCC = CCHistProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CCHistProspectosD.dtAContactar))     
    FROM CCHistProspectosD  
    JOIN CCHistProspectos ON CCHistProspectosD.idProspeccionH = CCHistProspectos.idProspeccionH  
   WHERE NULLIF(CCHistProspectos.Usuario,'') IS NOT NULL AND CCHistProspectosD.dtAContactar IS NOT NULL       
   UNION    
  SELECT DISTINCT UsuCC = CCHistProspectos.Usuario, Fecha = (dbo.fnFechaSinHora(CCHistProspectosD.dtRecepcion))    
    FROM CCHistProspectosD          
    JOIN CCHistProspectos ON CCHistProspectosD.idProspeccionH = CCHistProspectos.idProspeccionH          
   WHERE NULLIF(CCHistProspectos.Usuario,'') IS NOT NULL AND CCHistProspectosD.dtRecepcion IS NOT NULL   

GO
