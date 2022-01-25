IF EXISTS (SELECT * FROM SYSOBJECTS WHERE TYPE='V' AND NAME='CitasConfirmarCCHist2015')
DROP VIEW CitasConfirmarCCHist2015
GO          
CREATE VIEW CitasConfirmarCCHist2015            
AS        
SELECT 
		IdProspeccionH,
		IdEvento,
		Tipo,
		Subtipo,
		dtRecepcion,
		dtAContactar,
		Usuario,
		NumEvento  
		
FROM (SELECT DISTINCT C.IdProspeccionH,D.IdEvento,C.Tipo,D.Subtipo,d.dtRecepcion,D.dtAContactar,C.Usuario,  
     RANK() OVER(PARTITION BY D.IdProspeccionH ORDER BY D.IdEvento) AS NumEvento   
      FROM CCHistProspectos C  
      JOIN CCHistProspectosD D ON D.IdProspeccionH=C.IdProspeccionH  
      WHERE D.Subtipo ='Cita Servicio Confirmación' AND C.Tipo = 'Servicio') AS TablaNumerada  
WHERE NumEvento = 1
    
GO