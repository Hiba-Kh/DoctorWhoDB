DELETE FROM Companion
      WHERE CompanionId NOT IN (SELECT CompanionId FROM EpisodeCompanion);