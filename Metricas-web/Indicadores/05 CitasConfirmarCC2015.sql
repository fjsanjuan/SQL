IF EXISTS (SELECT * FROM SYSOBJECTS WHERE TYPE='V' AND NAME='CitasConfirmarCC2015')
  DROP VIEW CitasConfirmarCC2015
GO  
CREATE VIEW CitasConfirmarCC2015            
AS        
  SELECT 
		  IdProspeccion,
		  IdEvento,
		  Tipo,
		  Subtipo,
		  dtRecepcion,
		  dtAContactar,
		  Usuario,
		  NumEvento 
  		
  FROM (SELECT DISTINCT C.IdProspeccion,D.IdEvento,C.Tipo,D.Subtipo,d.dtRecepcion,D.dtAContactar,C.Usuario,  
       RANK() OVER(PARTITION BY D.IdProspeccion ORDER BY D.IdEvento) AS NumEvento   
        FROM CA_CCProspectos C  
        JOIN CA_CCProspectosD D ON D.IdProspeccion=C.IdProspeccion  
        WHERE D.Subtipo ='Cita Servicio Confirmación' AND C.Tipo = 'Servicio' ) AS TablaNumerada  
  WHERE NumEvento = 1  
  
GO