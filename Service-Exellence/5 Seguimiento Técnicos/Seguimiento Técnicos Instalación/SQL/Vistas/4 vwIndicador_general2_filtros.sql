IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwIndicador_general2_filtros') AND Type = 'V')
  DROP VIEW dbo.vwIndicador_general2_filtros
GO
CREATE VIEW [dbo].[vwIndicador_general2_filtros] 
AS
	SELECT OrdenC = 1, OrdenE = 1, Agente, NombreAgente,Concepto = 'Llegada', Estatus = 'Rapida',Num  = Sum(NumLlegadaRapida), 
		TiempoTotal = SUM(TTotalLlegadaRapida),FechaEmision, Sucursal,
		concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLlegadaRapida !=0 THEN 1 ELSE 0 END),
		sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLlegadaRapida !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT OrdenC = 1,  OrdenE = 2, Agente, NombreAgente, Concepto = 'Llegada', Estatus = 'Moderada', Num  = Sum(NumLlegadaModerada), TiempoTotal = SUM(TTotalLlegadaModerada), FechaEmision, Sucursal, concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLlegadaModerada !=0 THEN 1 ELSE 0 END), sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLlegadaModerada != 0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT 
	OrdenC = 1,  OrdenE = 3, Agente, NombreAgente,
	Concepto = 'Llegada', Estatus = 'Lenta',
	Num  = Sum(NumLlegadaLenta),
	TiempoTotal = SUM(TTotalLlegadaLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLlegadaLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLlegadaLenta !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT 
	OrdenC = 1,  OrdenE = 4, Agente, NombreAgente,
	Concepto = 'Llegada', Estatus = 'Otras',
	Num  = Sum(NumLlegadaOtras),
	TiempoTotal = SUM(TTotalLlegadaOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLlegadaOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLlegadaOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 2, OrdenE = 1, Agente, NombreAgente,
	Concepto = 'Recepcion', Estatus = 'Rapida',
	Num  = Sum(NumRecepcionRapida),
	TiempoTotal = SUM(TTotalRecepcionRapida),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumRecepcionRapida !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumRecepcionRapida != 0 THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 2, OrdenE = 2, Agente, NombreAgente,
	Concepto = 'Recepcion', Estatus = 'Moderada',
	Num  = Sum(NumRecepcionModerada),
	TiempoTotal = SUM(TTotalRecepcionModerada),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumRecepcionModerada !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumRecepcionModerada !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 2, OrdenE = 3, Agente, NombreAgente,
	Concepto = 'Recepcion', Estatus = 'Lenta',
	Num  = Sum(NumRecepcionLenta),
	TiempoTotal = SUM(TTotalRecepcionLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumRecepcionLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumRecepcionLenta != 0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 2, OrdenE = 4, Agente, NombreAgente,
	Concepto = 'Recepcion', Estatus = 'Otras',
	Num  = Sum(NumRecepcionOtras),
	TiempoTotal = SUM(TTotalRecepcionOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumRecepcionOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumRecepcionOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 3, OrdenE = 1, Agente, NombreAgente,
	Concepto = 'MdeO', Estatus = 'Rapida',
	Num  =  Sum(NumMdeORapida),
	TiempoTotal = SUM(TTotalMdeORapida),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumMdeORapida !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumMdeORapida !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 3, OrdenE = 2, Agente, NombreAgente,
	Concepto = 'MdeO', Estatus = 'Moderada',
	Num  =  Sum(NumMdeOModerada),
	TiempoTotal = SUM(TTotalMdeOModerada),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumMdeOModerada !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumMdeOModerada !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 3, OrdenE = 3, Agente, NombreAgente,
	Concepto = 'MdeO', Estatus = 'Lenta',
	Num  =  SUM(NumMdeOLenta),
	TiempoTotal = SUM(TTotalMdeOLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumMdeOLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumMdeOLenta !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 3,OrdenE = 4, Agente, NombreAgente,
	Concepto = 'MdeO', Estatus = 'Otras',
	Num  =  SUM(NumMdeOOtras),
	TiempoTotal = SUM(TTotalMdeOOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumMdeOOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumMdeOOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 4, OrdenE = 1, Agente, NombreAgente,
	 Concepto = 'Lavado', Estatus = 'Rapida',
	Num  =  Sum(NumLavadoRapida), 
	TiempoTotal = SUM(TTotalLavadoRapida),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLavadoRapida !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLavadoRapida !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 4, OrdenE = 2,  Agente, NombreAgente,
	 Concepto = 'Lavado', Estatus = 'Moderada',
	Num  = Sum(NumLavadoModerada),
	TiempoTotal = SUM(TTotalLavadoModerada),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLavadoModerada !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLavadoModerada != 0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 4, OrdenE = 3, Agente, NombreAgente,
	Concepto = 'Lavado', Estatus = 'Lenta',
	Num  = SUM(NumLavadoLenta),
	TiempoTotal = SUM(TTotalLavadoLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLavadoLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLavadoLenta !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 4, OrdenE = 4, Agente, NombreAgente,
	Concepto = 'Lavado', Estatus = 'Otras',
	Num  = SUM(NumLavadoOtras),
	TiempoTotal = SUM(TTotalLavadoOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumLavadoOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumLavadoOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 5, OrdenE = 1, Agente, NombreAgente,
	Concepto = 'Entrega', Estatus = 'Rapida',
	Num  = Sum(NumEntregaRapida),
	TiempoTotal = SUM(TTotalEntregaRapida),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumEntregaRapida !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumEntregaRapida !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 5, OrdenE = 2, Agente, NombreAgente,
	Concepto = 'Entrega', Estatus = 'Moderada',
	Num  = Sum(NumEntregaModerada),
	TiempoTotal = SUM(TTotalEntregaModerada),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumEntregaModerada !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumEntregaModerada != 0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 5, OrdenE = 3, Agente, NombreAgente,
	Concepto = 'Entrega', Estatus = 'Lenta',
	Num  = SUM(NumEntregaLenta),
	TiempoTotal = SUM(TTotalEntregaLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumEntregaLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumEntregaLenta !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 5, OrdenE = 4, Agente, NombreAgente,
	 Concepto = 'Entrega', Estatus = 'Otras',
	Num  = SUM(NumEntregaOtras),
	TiempoTotal = SUM(TTotalEntregaOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumEntregaOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumEntregaOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION 
	SELECT  OrdenC = 6, OrdenE = 1, Agente, NombreAgente,
	Concepto = 'Total', Estatus = 'Rapida',
	Num  = Sum(NumTotalRapida), 
	TiempoTotal = SUM(TTotalTotalRapida),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumTotalRapida !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumTotalRapida !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 6,  OrdenE = 2, Agente, NombreAgente,
	 Concepto = 'Total', Estatus = 'Moderada',
	Num  = Sum(NumTotalModerada),
	TiempoTotal = SUM(TTotalTotalModerada),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumTotalModerada !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumTotalModerada !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 6, OrdenE = 3, Agente, NombreAgente,
	Concepto = 'Total', Estatus = 'Lenta',
	Num  = SUM(NumTotalLenta),
	TiempoTotal = SUM(TTotalTotalLenta),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumTotalLenta !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumTotalLenta !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
UNION
	SELECT  OrdenC = 6, OrdenE = 4, Agente, NombreAgente,
	 Concepto = 'Total', Estatus = 'Otras',
	Num  = SUM(NumTotalOtras),
	TiempoTotal = SUM(TTotalTotalOtras),
	FechaEmision, Sucursal,
	concita = SUM(case when ISNULL(IDCita,0) != 0 AND NumTotalOtras !=0 THEN 1 ELSE 0 END),
	sincita = SUM(case when ISNULL(IDCita,0) = 0 AND NumTotalOtras !=0  THEN 1 ELSE 0 END)
	FROM vwIndicador_general
	GROUP BY Agente,  NombreAgente, FechaEmision, Sucursal
GO