/*=============================================
-- Author: Dev1
-- Create date: 2017-02-02
-- Description: Generate a string for Randomized Hash string.
-- Scripts:

print dbo.ufnGetRandomHash('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', 16)
=============================================*/
CREATE FUNCTION [dbo].[ufnGetRandomHash] 
(
	@seed VARCHAR(64),
	@let_cnt INT
)
RETURNS VARCHAR(64)
AS 
BEGIN

	DECLARE 
		@i INT,
		@ret VARCHAR(16),
		@rsd FLOAT;
	SET @i = 0;

	WHILE( @i < @let_cnt )
	BEGIN
		SELECT @rsd = GetRAND FROM VW_RAND;
		SET @ret = concat(@ret, substring(@seed, cast((@rsd * len(@seed) + 1) AS INT), 1));
		SET @i = @i + 1;
	END  

	RETURN @ret;

END

GO
