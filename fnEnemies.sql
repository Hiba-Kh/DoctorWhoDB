CREATE FUNCTION dbo.fnEnemies(@EpisodeID AS INT)
RETURNS TABLE AS 
	RETURN SELECT DISTINCT EN.EnemyName FROM Enemy EN
				JOIN EpisodeEnemy EE
				ON EN.EnemyId = EE.EnemyID
				JOIN Episode E
     			ON EE.EpisodeID = E.EpisodeId
				WHERE E.EpisodeId = @EpisodeID
