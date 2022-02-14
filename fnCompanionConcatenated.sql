CREATE FUNCTION dbo.fnCompanionConcatenated (@EpisodeID AS INT)
RETURNS VARCHAR(MAX) AS
BEGIN
DECLARE @Companions AS VARCHAR(MAX)
Select @Companions = SUBSTRING( 
( 
    select ',' + CompanionName AS 'data()'  from dbo.fnCompanion(@EpisodeID) FOR XML PATH('')
), 2 , 9999) 
RETURN @Companions	 
END

