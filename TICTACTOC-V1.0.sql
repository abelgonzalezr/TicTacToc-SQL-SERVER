--TIC TAC TOC
ALTER PROCEDURE TICTAC
@Opcion INT = NULL --1 iniciar tic tac toc, 2 continuar, 3 finalizar
,@fila INT = NULL-- 1 inserta fila 1, 2 inserta fila 2, 3 inserta fila 3 
,@Columna INT = NULL-- columna donde debe insertar
,@valor VARCHAR(1)= NULL
AS
IF @Opcion =1 
	BEGIN
		CREATE TABLE tictactoc  (fila INT, columna1 VARCHAR(1),columna2 VARCHAR(1),columna3 VARCHAR(1))
		INSERT INTO tictactoc (fila)VALUES(1)
		INSERT INTO tictactoc (fila)VALUES(2)
		INSERT INTO tictactoc (fila)VALUES(3)
	END

IF @Opcion=2
	BEGIN 
		IF @Columna=1
			BEGIN
				UPDATE tictactoc
				SET columna1=@valor
				WHERE fila =@fila
			END
		IF @Columna=2
			BEGIN
				UPDATE tictactoc
				SET columna2=@valor
				WHERE fila =@fila
			END
		IF @Columna=3
			BEGIN
				UPDATE tictactoc
				SET columna3=@valor
				WHERE fila =@fila
			END
    END

IF @Opcion=3
	BEGIN
		DROP TABLE tictactoc
	END

IF OBJECT_ID (N'dbo.tictactoc', N'U') IS NOT NULL  
	BEGIN
		SELECT * FROM tictactoc
	END
ELSE
	SELECT 'DEBE INICIAR EL TIC TAC TOC' 'Resultado'



EXEC TICTAC ,1,1,'x'