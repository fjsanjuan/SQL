CREATE function dbo.fnporcentajesbit(@id as int, @tipo as int) returns int
as
begin
	declare @returns as int;
	if @tipo = 1
		select @returns = count(*) from vwOrdenesServicioMonitorD where id =@id
	else if @tipo = 2
		select @returns = count(*) from vwOrdenesServicioMonitorD where id = @id and isnull(situacion, 'no completada') = 'completada'
	else if @tipo = 3 
	begin
		if exists(select * from [vwOrdenesServicioMonitorDtot] where id = @id)
			select @returns = 1
		else
			select @returns = 0
	end
	else if @tipo = 4 
	begin
		select @returns = count(*)  from [vwOrdenesServicioMonitorDtot] where id = @id and isnull(situacion, 'no completada') = 'completada'
	end
	else if @tipo = 5
	begin
	    IF EXISTS(SELECT * FROM [vwOrdenesServicioMonitorR] where id = @id AND ISNULL(cantidadreservada, 0) > 0)
			SET @returns = 2
		ELSE if exists(select * from [vwOrdenesServicioMonitorR] where id = @id)
			select @returns = 1
		else
			select @returns = 0
	end
	return @returns;
end
GO