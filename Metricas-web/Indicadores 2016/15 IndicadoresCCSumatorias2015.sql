IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.IndicadoresCCSumatorias2015') AND Type = 'V')
  DROP VIEW dbo.IndicadoresCCSumatorias2015
GO
CREATE VIEW IndicadoresCCSumatorias2015    
AS                  
     SELECT DISTINCT    
        I.*,    
        L  = I.B+I.C+I.D+I.CeldaE+I.F+I.G+I.H+I.I+I.J+I.K,    
        AG = I.Q+I.R+I.S+I.T+I.U+I.V+I.W+I.X+I.CeldaY+I.Z+I.AA+I.AB+I.AC+I.AD+I.AE,    
        AH = I.S+I.T+I.U+I.V+I.W+I.X+I.CeldaY,    
        AI = I.CeldaO+I.AB+I.AC,    
        BC = I.S+I.AT+I.AX+I.AP,    
        BD = I.AO+I.BA+I.BB+I.AZ,    
        BS = I.BM+I.BN,    
        BT = I.BO+I.BP,    
        BU = I.BQ+I.BR,    
        CeldaBY = (I.BG+I.BH+I.BI+I.BJ+I.BK+I.BL)-(I.BM+I.BN+I.BO+I.BP+I.BQ+I.BR),    
        CS = I.AN + I.ASA + I.AW + I.BZ + I.CD + I.CJ + I.CQ + I.CN  
    FROM IndicadoresCC2015 I                  