/* =============================================
-- Autor: Francisco  San Juan
-- Creación: 06/10/2021
-- Descripción:  funcion para obtener el ultimo estado de una operacion en una orden de servicio
-- =============================================*/

CREATE FUNCTION fnCA_estadoOpServicio ( @idVenta int, @renglon int , @renglonId int ) 
RETURNS VARCHAR ( 40 ) 
AS BEGIN
	DECLARE
		@RES VARCHAR ( 40 ) 
 
			Select top 1  @RES= Estado from SeguimientoOperaciones 
			where idVenta =@idVenta AND Renglon = @renglon  AND  RenglonId = @renglonID
			
			ORDER BY id Desc

	RETURN @RES 
END



--select dbo.fnCA_estadoOpServicio(376619)