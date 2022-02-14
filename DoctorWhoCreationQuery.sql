CREATE DATABASE DoctorWho;
CREATE TABLE Enemy(
	EnemyId INT PRIMARY KEY IDENTITY(1,1),
	EnemyName VARCHAR (40) NOT NULL,
	[Description] VARCHAR (40),
	);
CREATE TABLE EpisodeEnemy(
	EpisodeEnemyId INT PRIMARY KEY IDENTITY(1,1),
	EpisodeID INT,
	EnemyID INT,
	FOREIGN KEY (EnemyID) REFERENCES Enemy(EnemyID) ON DELETE CASCADE ON UPDATE CASCADE
	); 
	
CREATE TABLE Author(
	AuthorID INT PRIMARY KEY IDENTITY(1,1),
	AuthorName VARCHAR (40) NOT NULL,
	);

CREATE TABLE Episode( 
	EpisodeId INT PRIMARY KEY IDENTITY(1,1),
	SeriesNumber INT,
	EpisodeNumber INT,
	EpisodeType VARCHAR (40),
	Title VARCHAR (40),
	EpisodeData DATE,
	AuthorID INT,
	DoctorID INT,
	Notes VARCHAR (100),
	FOREIGN KEY (AuthorID) REFERENCES Author(AuthorID)
	);  

ALTER TABLE EpisodeEnemy
   ADD CONSTRAINT FK_EpisodeEnemy_Episode
   FOREIGN KEY (EpisodeID)
   REFERENCES Episode (EpisodeID)
   ON DELETE CASCADE
   ON UPDATE CASCADE;

CREATE TABLE EpisodeCompanion(
	EpisodeCompanionId INT PRIMARY KEY IDENTITY(1,1),
	EpisodeID INT,
	CompanionID INT,
	FOREIGN KEY (EpisodeID) REFERENCES Episode(EpisodeID) ON DELETE CASCADE ON UPDATE CASCADE
	);

CREATE TABLE Companion(
	CompanionId INT PRIMARY KEY IDENTITY(1,1),
	CompanionName VARCHAR (40) NOT NULL,
	WhoPlayed VARCHAR (40) NOT NULL,
	);

ALTER TABLE EpisodeCompanion
   ADD CONSTRAINT FK_EpisodeCompanion_Companion
   FOREIGN KEY (CompanionID)
   REFERENCES Companion (CompanionID)
   ON DELETE CASCADE
   ON UPDATE CASCADE;

CREATE TABLE Doctor(
	DoctorID INT PRIMARY KEY IDENTITY(1,1),
	DoctorNumber INT NOT NULL,
	DoctorName VARCHAR (40) NOT NULL,
	BirthDate DATE,
	FirstEpisodeDate Date,
	LastEpisodeDate Date,
	);

ALTER TABLE Episode
   ADD CONSTRAINT FK_Episode_Doctor
   FOREIGN KEY (DoctorID)
   REFERENCES Doctor (DoctorID)
   ON DELETE CASCADE
   ON UPDATE CASCADE;
