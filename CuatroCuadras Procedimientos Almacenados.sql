USE CuatroCuadras
GO

CREATE PROCEDURE SP_InsertarUsuario
	(   @Nickname NVARCHAR(35),
        @Nombre VARCHAR(40),
        @Apellidos VARCHAR(50),
        @Email VARCHAR(40),
        @Contraseña VARCHAR(20),
        @ID_Ciudad INT
    )
AS
Begin tran
INSERT INTO Usuario
    VALUES (
	   @Nickname,
	   @Nombre,
	   @Apellidos,
	   @Email,
       @Contraseña,
       @ID_Ciudad
		)
commit tran