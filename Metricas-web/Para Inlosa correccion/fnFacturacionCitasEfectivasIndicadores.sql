CREATE FUNCTION fnFacturacionCitasEfectivasIndicadores(    
    @Categoria    varchar (15),    
    @User    varchar (10),    
    @FechaA         datetime    )    
RETURNS MONEY        
        
AS        
BEGIN        
  DECLARE @Citas TABLE      
  (      
    IDCita              int NULL,      
    IdOrden             int NULL,      
    IdFactura           int NULL,      
    IdNota              int NULL,      
    CancelacionId       int NULL,      
    ImpManoObra         money NULL,      
    ImpRefacciones      money NULL  ,    
    UsuarioCC           varchar (10) NULL    
    )      
      
  DECLARE     
  @Resultado MONEY    
        
  INSERT INTO @Citas      
  SELECT Vc.Id, IdOrden = Vs.Id, IdFactura = VF.Id, IdNota = NULL, CancelacionId=VF.CancelacionId,               
         ImpManoObra = NULL,      
         ImpRefacciones = NULL ,    
         UsuarioCC = ISNULL(NULLIF((SELECT TOP(1) Usuario FROM CCVistaAdminHist WHERE CitaId = Vc.Id AND Resultado = 'Cliente requiere Cita'),''),(SELECT Usuario FROM Venta WHERE ID=Vc.Id))           
    FROM Venta VF      
    LEFT OUTER JOIN MovFlujo ms ON ms.DId = VF.Id AND ms.DModulo = 'VTAS' AND ms.OModulo = 'VTAS' AND MS.OMov = 'Servicio'      
    LEFT OUTER JOIN Venta VS ON VS.Id = ms.OId       
    RIGHT OUTER JOIN MovFlujo MC ON MC.DId = VS.Id AND MC.DModulo = 'VTAS' AND MC.OModulo = 'VTAS' AND MC.OMov = 'Cita Servicio'      
    LEFT OUTER JOIN Venta VC ON VC.Id = MC.OId       
    LEFT OUTER JOIN Cte C ON C.Cliente = VC.Cliente      
    LEFT OUTER JOIN Art A ON A.Articulo = VC.ServicioArticulo      
   WHERE VF.FechaConclusion = @FechaA      
     AND VF.Estatus = 'CONCLUIDO'      
     AND VF.Mov IN ('FEL Garantía', 'FEL Seguro', 'FEL Servicio','eFact Serv Garantia','eFact Serv Publico')                          
        
  INSERT INTO @Citas      
  SELECT Vc.Id, IdOrden = Vs.Id, IdFactura = VF.Id, IdNota = VCan.Id, CancelacionId=VF.CancelacionId,      
         ImpManoObra = NULL,      
         ImpRefacciones = NULL,    
         UsuarioCC = ISNULL(NULLIF((SELECT TOP(1) Usuario FROM CCVistaAdminHist WHERE CitaId = Vc.Id AND Resultado = 'Cliente requiere Cita'),''),(SELECT Usuario FROM Venta WHERE ID=Vc.Id))    
  FROM Venta VCan      
    LEFT JOIN Venta VF ON VF.CancelacionId = VCan.Id      
    LEFT OUTER JOIN MovFlujo ms ON ms.DId = VF.Id AND ms.DModulo = 'VTAS' AND ms.OModulo = 'VTAS' AND MS.OMov = 'Servicio'      
    LEFT OUTER JOIN Venta VS ON VS.Id = ms.OId       
    RIGHT OUTER JOIN MovFlujo MC ON MC.DId = VS.Id AND MC.DModulo = 'VTAS' AND MC.OModulo = 'VTAS' AND MC.OMov = 'Cita Servicio'      
    LEFT OUTER JOIN Venta VC ON VC.Id = MC.OId       
    LEFT OUTER JOIN Cte C ON C.Cliente = VC.Cliente      
    LEFT OUTER JOIN Art A ON A.Articulo = VC.ServicioArticulo      
   WHERE VCan.Id IN (SELECT DISTINCT(CancelacionId) FROM @Citas WHERE NULLIF(CancelacionId,'') IS NOT NULL)      
     AND VF.Mov IN ('FEL Garantía', 'FEL Seguro', 'FEL Servicio','eFact Serv Garantia','eFact Serv Publico')      
    
  UPDATE @Citas      
     SET ImpManoObra = ISNULL((SELECT SUM((ISNULL(Precio,0)*ISNULL(Cantidad,0))-ISNULL(DescuentoImporte,0))       
                                 FROM Venta Fact       
                                 JOIN VentaD D ON Fact.Id = D.Id      
                                 JOIN Art A ON A.Articulo = D.Articulo      
                                WHERE A.Tipo = 'Servicio'      
                                  AND Fact.Id = C.IdFactura),0),      
         ImpRefacciones = ISNULL((SELECT SUM((ISNULL(Precio,0)*ISNULL(Cantidad,0))-ISNULL(DescuentoImporte,0))       
                                    FROM Venta Fact       
                                    JOIN VentaD D ON Fact.Id = D.Id      
                                    JOIN Art A ON A.Articulo = D.Articulo      
                                   WHERE A.Tipo = 'Normal'      
                                     AND Fact.Id = C.IdFactura),0)    
    FROM @Citas C      
   WHERE C.IdOrden IS NOT NULL      
     
        
IF (@Categoria = 'MO')        
  SELECT @Resultado = (SELECT 'MO' = SUM(CASE WHEN IdNota IS NOT NULL THEN ImpManoObra*-1 ELSE ImpManoObra END)               
          FROM @Citas      
    where UsuarioCC = @User )    
    
ELSE IF (@Categoria = 'Refacciones')        
    SELECT @Resultado = (SELECT 'Refacciones' = SUM(CASE WHEN IdNota IS NOT NULL THEN ImpRefacciones*-1 ELSE ImpRefacciones END)    
          FROM @Citas      
    where UsuarioCC = @User )    
      
  RETURN  ISNULL(@Resultado,0.0)    
END