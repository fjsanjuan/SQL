IF EXISTS (SELECT * FROM SYSOBJECTS WHERE TYPE='V' AND NAME='IndicadoresCCSumatorias22015')
  DROP VIEW IndicadoresCCSumatorias22015
GO
CREATE VIEW IndicadoresCCSumatorias22015
AS                 
  SELECT DISTINCT
	       I.*,
	       AJ = I.AG+I.CS,
	       BE = I.BC+I.BD,
	       BV = I.BS+I.BT+I.BU,
	       BW = I.BS+I.BT
    FROM IndicadoresCCSumatorias2015 I
GO
