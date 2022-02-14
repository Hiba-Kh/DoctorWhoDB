CREATE VIEW viewEpisodes AS
SELECT  E.EpisodeId, E.Title AS [Episode Title], A.AuthorName AS [Author Name], D.DoctorName AS [Doctor Name], 
		dbo.fnCompanionConcatenated(E.EpisodeId) AS Companions,
		dbo.fnEnemiesConcatenated(E.EpisodeId) AS Enemies
		FROM  
		Episode E JOIN Doctor D
		ON E.DoctorID = D.DoctorID
		JOIN Author A
		ON E.AuthorID = A.AuthorID;
