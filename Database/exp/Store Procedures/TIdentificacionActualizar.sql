CREATE PROCEDURE [exp].[TIdentificacionActualizar]
	@IdTipoIdentificacion int= NULL,
	@Descripcion varchar(50)


AS BEGIN
SET NOCOUNT ON

  BEGIN TRANSACTION TRASA

    BEGIN TRY
	
	UPDATE EXP.TipoIdentificacion SET
	IdTipoIdentificacion= @IdTipoIdentificacion,
	 Descripcion=@Descripcion
	WHERE 
	       IdTipoIdentificacion=@IdTipoIdentificacion
	
	  COMMIT TRANSACTION TRASA 
	  SELECT 0 AS CodeError, '' AS MsgError

  END TRY

  BEGIN CATCH

	   SELECT 
			 ERROR_NUMBER() AS CodeError,
			 ERROR_MESSAGE() AS MsgError
   
	   ROLLBACK TRANSACTION TRASA

   END CATCH

 END
