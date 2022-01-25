IF EXISTS (SELECT * FROM SYSOBJECTS WHERE TYPE='V' AND NAME='IndicadoresCCompleta2015')
  DROP VIEW IndicadoresCCompleta2015
GO
create VIEW dbo.IndicadoresCCompleta2015        
AS          
  SELECT CCUsu=UPPER(UsuCC),                
       Fecha=Fecha,     
-->Base de Datos Prospección     
       B,      
       C,      
       D,      
       CeldaE,      
       F,      
       G,      
       H,      
       I,      
       J,      
        K,      
        L,      
        M,      
--<Base de Datos Prospección    
-->Tipificación Llamada Prospección    
        CeldaO,      
        Q,      
       R,      
       S,      
       T,      
       U,      
       V,      
       W,      
       X,      
       CeldaY,      
       Z,      
       AA,      
       AB,      
       AC,      
       AD,      
       AE,    
--<Tipificación Llamada Prospección    
-->Total Llamadas Realizadas      
       AG,      
       AH,      
       AI,      
       AJ,     
--<Total Llamadas Realizadas    
-->LeadIT Posventa    
       AL,      
       AM,      
       AN,     
       AO,     
       AP,     
--<LeadIT Posventa    
-->Acciones de Campo    
       AR,    
       ASA,      
       AT,      
--<Acciones de Campo    
-->Seguimiento pendientes (ej:25 puntos)    
       AV,      
       AW,      
       AX,    
--<Seguimiento pendientes (ej:25 puntos)      
-->Generación de Citas    
       AZ,      
       BA,      
       BB,      
       BC,     
       BD,    
       BE,    
--<Generación de Citas        
-->Seguimiento de Citas Diarias    
       BG,      
       BH,      
       BI,      
       BJ,      
       BK,      
       BL,      
       BM,      
       BN,      
       BO,      
       BP,      
       BQ,      
       BR,      
       BS,      
       BT,      
       BU,    
       BV,      
       BW,      
--<Seguimiento de Citas Diarias    
-->No Show (2014)     
       CeldaBY,      
       BZ,    
       CA,      
--<-->No Show (2014)    
-->Confirmación de Citas    
       CC,      
       CD,      
       CE,      
       CF,    
       CG,    
--<Confirmación de Citas     
-->Llamadas vehículo terminado      
       CI,      
       CJ,    
       CK,    
--<Llamadas vehículo terminado    
-->Encuestas Sistema de Medición Semanal Ventas y Posventa      
       CM,      
       CN,      
       CO,      
       CP,      
       CQ,    
       CR,    
       CS,     
--<Encuestas Sistema de Medición Semanal Ventas y Posventa     
-->Indicadores Economicos     
       CU = 0,--(SELECT dbo.fnFacturacionCitasEfectivasIndicadores('MO',UsuCC,Fecha)),    
       CV = 0,--(SELECT dbo.fnFacturacionCitasEfectivasIndicadores('Refacciones',UsuCC,Fecha)),    
--<Indicadores Economicos    
-->Indicadores    
       "DC"=ROUND( CASE WHEN M <>0 THEN (((M-AI)/M)*100) ELSE 0 END,2),       
       "DD"=ROUND( CASE WHEN AJ <>0 THEN ((AG/AJ)*100) ELSE 0 END,2) ,      
       "DE"=ROUND( CASE WHEN AJ <>0 THEN ((CQ/AJ)*100) ELSE 0 END,2),              
       "DF"=ROUND( CASE WHEN AG <>0 THEN ((AH/AG)*100) ELSE 0 END,2),         
       "DG"=ROUND( CASE WHEN AG <>0 THEN ((CeldaO/AG)*100) ELSE 0 END,2),                
       "DH"=ROUND( CASE WHEN AG <>0 THEN ((Q/AG)*100) ELSE 0 END,2),                
       "DI"=ROUND( CASE WHEN AG <>0 THEN ((R/AG)*100) ELSE 0 END,2),                
       "DJ"=ROUND( CASE WHEN AG <>0 THEN ((S/AG)*100) ELSE 0 END,2),                
       "DK"=ROUND( CASE WHEN AG <>0 THEN ((T/AG)*100) ELSE 0 END,2),                
       "DL"=ROUND( CASE WHEN AG <>0 THEN ((U/AG)*100) ELSE 0 END,2),                
       "DM"=ROUND( CASE WHEN AG <>0 THEN ((V/AG)*100) ELSE 0 END,2),                
       "DN"=ROUND( CASE WHEN AG <>0 THEN ((W/AG)*100) ELSE 0 END,2),                
       "DO"=ROUND( CASE WHEN AG <>0 THEN ((X/AG)*100) ELSE 0 END,2),                
       "DP"=ROUND( CASE WHEN AG <>0 THEN ((CeldaY/AG)*100) ELSE 0 END,2),             
       "DQ"=ROUND( CASE WHEN AG <>0 THEN ((Z/AG)*100) ELSE 0 END,2),                
       "DR"=ROUND( CASE WHEN AG <>0 THEN ((AA/AG)*100) ELSE 0 END,2),                
       "DS"=ROUND( CASE WHEN AG <>0 THEN ((AB/AG)*100) ELSE 0 END,2),                
       "DT"=ROUND( CASE WHEN AG <>0 THEN ((AC/AG)*100) ELSE 0 END,2),                
       "DU"=ROUND( CASE WHEN AG <>0 THEN((AD/AG)*100) ELSE 0 END,2),      
       "DV"=ROUND( CASE WHEN AG <>0 THEN((AE/AG)*100) ELSE 0 END,2),                        
       "DW"=ROUND( CASE WHEN BE <>0 THEN((BC/BE)*100) ELSE 0 END,2),       
       "DX"=ROUND( CASE WHEN BE <>0 THEN((BD/BE)*100) ELSE 0 END,2),      
       "DY"=ROUND( CASE WHEN (BG+BI+BK) <>0 THEN (((BM+BO+BQ)/(BG+BI+BK))*100) ELSE 0 END,2),      
       "DZ"=ROUND( CASE WHEN (BH+BJ+BL) <>0 THEN (((BN+BP+BR)/(BH+BJ+BL))*100) ELSE 0 END,2),                
       "EA"=ROUND( CASE WHEN (BG+BH+BI+BJ+BK+BL) <>0 THEN (((BM+BN+BO+BP+BQ+BR)/(BG+BH+BI+BJ+BK+BL))*100) ELSE 0 END,2),                
       "EB"=ROUND( CASE WHEN CC <>0 THEN((CE/CC)*100) ELSE 0 END,2),                
       "EC"=ROUND( CASE WHEN CC <>0 THEN((CF/CC)*100) ELSE 0 END,2),      
       "ED"=ROUND( CASE WHEN CC <>0 THEN((CG/CC)*100) ELSE 0 END,2),      
       "EE"=ROUND( CASE WHEN (BG+BH+BI+BJ+BK+BL) <>0 THEN ((CeldaBY/(BG+BH+BI+BJ+BK+BL))*100) ELSE 0 END,2),      
       "EF"=ROUND( CASE WHEN CeldaBY <>0 THEN((CA/CeldaBY)*100) ELSE 0 END,2),                
       "EG"=ROUND( CASE WHEN AH <>0 THEN((T/AH)*100) ELSE 0 END,2),            
       "EH"=ROUND( CASE WHEN AH <>0 THEN((S/AH)*100) ELSE 0 END,2),        
       --"EI"= (EF*DY) *********************SE HIZO EN EL REPORTE SDK***************************    
       "EJ"=ROUND( CASE WHEN M <>0 THEN((AH/M)*100) ELSE 0 END,2),   
       "EK"= ROUND( CASE WHEN AL <>0 THEN((AO/AL)*100) ELSE 0 END,2),                        
       "EL"=ROUND( CASE WHEN AM <>0 THEN((AP/AM)*100) ELSE 0 END,2),    
       "EM"=ROUND( CASE WHEN AR <>0 THEN((AT/AR)*100) ELSE 0 END,2),                
       "CeldaEN"=ROUND( CASE WHEN AV <>0 THEN((AX/AV)*100) ELSE 0 END,2),        
       "EO"=ROUND( CASE WHEN CM <>0 THEN((CO/CM)*100) ELSE 0 END,2),          
       "EP"=ROUND( CASE WHEN CP <>0 THEN((CR/CP)*100) ELSE 0 END,2),                
       "EQ"=ROUND( CASE WHEN CI <>0 THEN((CK/CI)*100) ELSE 0 END,2)               
--<Indicadores    
    FROM IndicadoresCCSumatorias22015 I WITH (NOLOCK)