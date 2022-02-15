DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO
CREATE PROCEDURE spSummariseEpisodes
AS BEGIN
SELECT TOP(3) COUNT(CompanionID) AS [Companion Count], CompanionID FROM EpisodeCompanion 
GROUP BY CompanionID 
ORDER BY [Companion Count] DESC;

SELECT TOP(3) COUNT(EnemyID) AS [Enemies Count], EnemyID FROM EpisodeEnemy
GROUP BY EnemyID 
ORDER BY [Enemies Count] DESC;
END;
EXEC  spSummariseEpisodes;
