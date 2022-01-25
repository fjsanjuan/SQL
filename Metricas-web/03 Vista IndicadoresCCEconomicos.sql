IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.IndicadoresCCEconomicos') AND Type = 'V')
  DROP VIEW dbo.IndicadoresCCEconomicos
GO
CREATE VIEW dbo.IndicadoresCCEconomicos      
AS        
  SELECT CCUsu=UPPER(UsuCC),              
       Fecha=Fecha,
-->Indicadores Economicos   
       CU = (SELECT dbo.fnFacturacionCitasEfectivasIndicadores('MO',UsuCC,Fecha)),  
       CV = (SELECT dbo.fnFacturacionCitasEfectivasIndicadores('Refacciones',UsuCC,Fecha))
--<Indicadores Economicos  
    FROM IndicadoresCCSumatorias22015 I               

GO