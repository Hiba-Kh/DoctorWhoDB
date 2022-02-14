CREATE FUNCTION dbo.fnCompanion (@EpisodeID AS INT)
RETURNS TABLE AS
	RETURN 
		SELECT C.CompanionName FROM Companion C
			JOIN EpisodeCompanion EC 
			ON C.CompanionId = EC.CompanionID
			JOIN Episode E
     		ON EC.EpisodeID = E.EpisodeId
			WHERE E.EpisodeId = @EpisodeID





