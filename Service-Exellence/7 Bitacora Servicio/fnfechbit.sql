CREATE FUNCTION dbo.fnfechbit(@f1 varchar(10),@f2 varchar(10),@h1 varchar(5), @h2 varchar(5)) returns varchar(1)
AS
BEGIN
	DECLARE @returns varchar(1);
	IF @f1 < @f2 OR @f1 > @f2
		SET @returns = 'S'
	ELSE
	BEGIN
		IF @h1 < @h2 OR @h1 > @h2
			SET @returns = 'S'
		ELSE
			SET @returns = 'N'
	END
	RETURN @returns;
END
GO