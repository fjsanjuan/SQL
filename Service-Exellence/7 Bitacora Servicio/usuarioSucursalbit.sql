CREATE FUNCTION dbo.usuarioSucursalbit(@usuario as varchar(50)) returns @usuariosuc TABLE 
(
    -- columns returned by the function
    sucursal int null,
    nombre varchar(50) NULL
)
AS
BEGIN
	IF exists(SELECT * FROM Usuario  as u WHERE u.Usuario = @usuario and u.AccesarOtrasSucursalesEnLinea = 1)
	BEGIN
		INSERT INTO @usuariosuc
		SELECT sucursal, nombre FROM sucursal WHERE nombre like '%taller%';
	END
	ELSE
	BEGIN
		INSERT INTO @usuariosuc
		SELECT
		a.Sucursal,
		s.nombre
		FROM Usuario  as u 
		left join UsuarioSucursalAcceso as a on u.usuario = a.usuario
		left join sucursal				as s on a.sucursal = s.sucursal
		WHERE u.Usuario = @usuario and s.nombre like '%taller%';
	END
	RETURN
END
GO