CREATE PROCEDURE [exp].[TIdentificacionObtener]
      @IdTipoIdentificacion int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.IdTipoIdentificacion,
     E.Descripcion   
    FROM EXP.TipoIdentificacion E
    WHERE
    (@IdTipoIdentificacion IS NULL OR IdTipoIdentificacion=@IdTipoIdentificacion)

END
