IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.vwIndicador_general') AND Type = 'V')
  DROP VIEW dbo.vwIndicador_general
GO
CREATE VIEW [dbo].[vwIndicador_general] 
AS 
SELECT 
vwIndicadorMovto.Agente, NombreAgente = A.Nombre,
'NumLlegadaRapida' = CASE WHEN Tllegada BETWEEN 0 AND 7 THEN COUNT(*) ELSE 0 END,
'TTotalLlegadaRapida' = CASE WHEN Tllegada BETWEEN 0 AND 7 THEN SUM(ISNULL(Tllegada,0)) ELSE 0 END,
'NumLlegadaModerada' = CASE WHEN Tllegada BETWEEN 8 AND 1 THEN COUNT(*) ELSE 0 END,
'TTotalLlegadaModerada' = CASE WHEN Tllegada BETWEEN 8 AND 1 THEN SUM(ISNULL(Tllegada,0)) ELSE 0 END,
'NumLlegadaLenta' = CASE WHEN Tllegada BETWEEN 16 AND 60 THEN COUNT(*) ELSE 0 END,
'TTotalLlegadaLenta' = CASE WHEN Tllegada BETWEEN 16 AND 60 THEN SUM(ISNULL(Tllegada,0)) ELSE 0 END,
'NumLlegadaOtras' = CASE WHEN Tllegada IS NULL OR Tllegada >60 THEN COUNT(*) ELSE 0 END,
'TTotalLlegadaOtras' = CASE WHEN Tllegada IS NULL OR Tllegada >60 THEN SUM(ISNULL(Tllegada,0)) ELSE 0 END,
'NumRecepcionRapida' = CASE WHEN TRecepcion BETWEEN 0 AND 15 THEN COUNT(*) ELSE 0 END,
'TTotalRecepcionRapida' = CASE WHEN TRecepcion BETWEEN 0 AND 15 THEN SUM(ISNULL(TRecepcion,0)) ELSE 0 END,
'NumRecepcionModerada' = CASE WHEN TRecepcion BETWEEN 16 AND 20  THEN COUNT(*) ELSE 0 END,
'TTotalRecepcionModerada' = CASE WHEN TRecepcion BETWEEN 16 AND 20  THEN SUM(ISNULL(TRecepcion,0)) ELSE 0 END,
'NumRecepcionLenta' = CASE WHEN TRecepcion BETWEEN 21 AND 60 THEN COUNT(*) ELSE 0 END,
'TTotalRecepcionLenta' = CASE WHEN TRecepcion BETWEEN 21 AND 60 THEN SUM(ISNULL(TRecepcion,0)) ELSE 0 END,
'NumRecepcionOtras' = CASE WHEN TRecepcion IS NULL OR  TRecepcion > 60 THEN COUNT(*) ELSE 0 END,
'TTotalRecepcionOtras' = CASE WHEN TRecepcion IS NULL OR  TRecepcion > 60 THEN SUM(ISNULL(TRecepcion,0)) ELSE 0 END,
'NumMdeORapida' = CASE WHEN TTaller BETWEEN 0 AND 30 THEN COUNT(*) ELSE 0 END,
'TTotalMdeORapida' = CASE WHEN TTaller BETWEEN 0 AND 30 THEN SUM(ISNULL(TTaller,0)) ELSE 0 END,
'NumMdeOModerada' = CASE WHEN TTaller BETWEEN 31 AND 60 THEN COUNT(*) ELSE 0 END,
'TTotalMdeOModerada' = CASE WHEN TTaller BETWEEN 31 AND 60 THEN SUM(ISNULL(TTaller,0)) ELSE 0 END,
'NumMdeOLenta' = CASE WHEN TTaller BETWEEN 61 AND 1440 THEN COUNT(*) ELSE 0 END,  -- 61 min a 24hras (1440 min)
'TTotalMdeOLenta' = CASE WHEN TTaller BETWEEN 61 AND 1440 THEN SUM(ISNULL(TTaller,0)) ELSE 0 END,
'NumMdeOOtras' = CASE WHEN TTaller IS NULL  OR TTaller > 1440 THEN COUNT(*) ELSE 0 END,
'TTotalMdeOOtras' = CASE WHEN TTaller IS NULL  OR TTaller > 1440 THEN SUM(ISNULL(TTaller,0)) ELSE 0 END,
'NumLavadoRapida' = CASE WHEN  TLavado BETWEEN 0 AND 15 THEN COUNT(*) ELSE 0 END,
'TTotalLavadoRapida' = CASE WHEN  TLavado BETWEEN 0 AND 15 THEN SUM(ISNULL(TLavado,0)) ELSE 0 END,
'NumLavadoModerada' = CASE WHEN TLavado BETWEEN 16 AND 20  THEN COUNT(*) ELSE 0 END,
'TTotalLavadoModerada' = CASE WHEN TLavado BETWEEN 16 AND 20  THEN SUM(ISNULL(TLavado,0)) ELSE 0 END,
'NumLavadoLenta' = CASE WHEN TLavado BETWEEN 21 AND 60 THEN COUNT(*) ELSE 0 END,
'TTotalLavadoLenta' = CASE WHEN TLavado BETWEEN 21 AND 60 THEN SUM(ISNULL(TLavado,0)) ELSE 0 END,
'NumLavadoOtras' = CASE WHEN TLavado IS NULL  OR TLavado > 60 THEN COUNT(*) ELSE 0 END,
'TTotalLavadoOtras' = CASE WHEN TLavado IS NULL  OR TLavado > 60 THEN SUM(ISNULL(TLavado,0)) ELSE 0 END,
'NumEntregaRapida' = CASE WHEN TEntrega BETWEEN 0 AND 7 THEN COUNT(*) ELSE 0 END,
'TTotalEntregaRapida' = CASE WHEN TEntrega BETWEEN 0 AND 7 THEN SUM(ISNULL(TEntrega,0)) ELSE 0 END,
'NumEntregaModerada' = CASE WHEN TEntrega BETWEEN 8 AND 15  THEN COUNT(*) ELSE 0 END,
'TTotalEntregaModerada' = CASE WHEN TEntrega BETWEEN 8 AND 15  THEN SUM(ISNULL(TEntrega,0)) ELSE 0 END,
'NumEntregaLenta' = CASE WHEN TEntrega BETWEEN 16 AND 60 THEN COUNT(*) ELSE 0 END,
'TTotalEntregaLenta' = CASE WHEN TEntrega BETWEEN 16 AND 60 THEN SUM(ISNULL(TEntrega,0)) ELSE 0 END,
'NumEntregaOtras' = CASE WHEN TEntrega IS NULL  OR TEntrega > 60 THEN COUNT(*) ELSE 0 END,
'TTotalEntregaOtras' = CASE WHEN TEntrega IS NULL  OR TEntrega > 60 THEN SUM(ISNULL(TEntrega,0)) ELSE 0 END,
'NumTotalRapida' = CASE WHEN TTotal BETWEEN 0 AND 120 THEN COUNT(*) ELSE 0 END, --120 min (2hras)
'TTotalTotalRapida' = CASE WHEN TTotal BETWEEN 0 AND 120 THEN SUM(ISNULL(TTotal,0)) ELSE 0 END,
'NumTotalModerada' = CASE WHEN TTotal BETWEEN 121 AND 180  THEN COUNT(*) ELSE 0 END,
'TTotalTotalModerada' = CASE WHEN TTotal BETWEEN 121 AND 180 THEN SUM(ISNULL(TTotal,0)) ELSE 0 END,
'NumTotalLenta' = CASE WHEN TTotal BETWEEN 181 AND 2880 THEN COUNT(*) ELSE 0 END,
'TTotalTotalLenta' = CASE WHEN TTotal BETWEEN 181 AND 2880 THEN SUM(ISNULL(TTotal,0)) ELSE 0 END,
'NumTotalOtras' = CASE WHEN TTotal IS NULL  OR TTotal > 2880 THEN COUNT(*) ELSE 0 END,
'TTotalTotalOtras' = CASE WHEN TTotal IS NULL  OR TTotal > 2880 THEN SUM(ISNULL(TTotal,0)) ELSE 0 END,
FechaEmision,
vwIndicadorMovto.Sucursal,
nombreSucursal = S.Nombre,
IDCITA
FROM vwIndicadorMovto 
INNER JOIN Agente A ON A.Agente = vwIndicadorMovto.Agente
INNER JOIN Sucursal S ON vwIndicadorMovto.Sucursal = S.Sucursal
GROUP BY IDOrden, vwIndicadorMovto.Agente, A.Nombre, S.Nombre, Tllegada, TRecepcion,TTaller,TLavado, TEntrega, TTotal, FechaEmision, vwIndicadorMovto.Sucursal,IDCITA
GO