CREATE FUNCTION dbo.fnEnemiesConcatenated (@EpisodeID AS INT)
RETURNS VARCHAR(MAX) AS
BEGIN
DECLARE @Companions AS VARCHAR(MAX)
Select @Companions = SUBSTRING( 
( 
    select ',' + EnemyName AS 'data()'  from dbo.fnEnemies(@EpisodeID) FOR XML PATH('')
), 2 , 9999) 
RETURN @Companions	 
END
