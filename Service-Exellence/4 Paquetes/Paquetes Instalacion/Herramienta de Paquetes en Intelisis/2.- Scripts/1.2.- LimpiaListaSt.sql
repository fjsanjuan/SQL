CREATE PROCEDURE [dbo].[LimpiaListaSt]     
@Estacion               int         
AS      
BEGIN      
Delete from ListaSt where Estacion = @Estacion    
END    