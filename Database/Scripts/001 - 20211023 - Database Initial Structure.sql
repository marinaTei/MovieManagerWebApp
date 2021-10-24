
----------- Database Initial Structure

IF OBJECT_ID('Movie') IS NULL
BEGIN
	CREATE TABLE Movie(
		MovieID INT NOT NULL,
		Label NVARCHAR (128) NOT NULL,
		Title NVARCHAR (512) NOT NULL,
		OriginalTitle NVARCHAR (512) NULL,
		ReleaseDate DATETIME NULL,
		Comments NVARCHAR (2048) NULL,
	
		CONSTRAINT Pk_Movie_MovieId PRIMARY KEY (MovieID)
	) 
END
GO

IF OBJECT_ID('Person') IS NULL
BEGIN
	CREATE TABLE Person (
		PersonID INT NOT NULL,
		Name NVARCHAR(128) NOT NULL,
		Surname NVARCHAR(128) NOT NULL,
		BirthDate DATETIME NULL,
	
		CONSTRAINT Pk_Person_PersonId PRIMARY KEY (PersonID)
	) 
END
GO

IF OBJECT_ID('Director') IS NULL
BEGIN
	CREATE TABLE Director (
		DirectorID INT NOT NULL,
		PersonId INT NOT NULL,
		Comments NVARCHAR(2048) NULL
	
		CONSTRAINT Pk_Director_DirectorId PRIMARY KEY (DirectorID),
		CONSTRAINT Fk_Director_PersonId_Person_PersonId FOREIGN KEY (PersonId) REFERENCES Person(PersonID)
	) 
END
GO

IF OBJECT_ID('Actor') IS NULL
BEGIN
	CREATE TABLE Actor (
		ActorID INT NOT NULL,
		PersonId INT NOT NULL,
		Comments NVARCHAR(2048) NULL
	
		CONSTRAINT Pk_Actor_ActorId PRIMARY KEY (ActorID),
		CONSTRAINT Fk_Actor_PersonId_Person_PersonId FOREIGN KEY (PersonId) REFERENCES Person(PersonID)
	) 
END
GO

IF OBJECT_ID('Country') IS NULL
BEGIN
	CREATE TABLE Country (
		CountryID INT NOT NULL,
		CountryName NVARCHAR(128) NOT NULL,
		Label NVARCHAR(32) NOT NULL,
	
		CONSTRAINT Pk_Country_CountryId PRIMARY KEY (CountryID),
	) 
END
GO

IF OBJECT_ID('Genre') IS NULL
BEGIN
	CREATE TABLE Genre (
		GenreID INT NOT NULL,
		GenreName NVARCHAR(128) NOT NULL,
		Label NVARCHAR(32) NOT NULL,
		ParentGenreId INT NULL,
		
		CONSTRAINT Pk_Genre_GenreId PRIMARY KEY (GenreID),
		CONSTRAINT Fk_Genre_ParentGenreId_GenreId FOREIGN KEY (ParentGenreId) REFERENCES Genre(GenreID)
	) 
END
GO

IF OBJECT_ID('ExtraGenre') IS NULL
BEGIN
	CREATE TABLE ExtraGenre (
		ExtraGenreID INT NOT NULL,
		ExtraGenreName NVARCHAR(128) NOT NULL,
		Label NVARCHAR(32) NOT NULL,
		
		CONSTRAINT Pk_ExtraGenre_ExtraGenreId PRIMARY KEY (ExtraGenreID),
	) 
END
GO

IF OBJECT_ID('MovieXDirector') IS NULL
BEGIN
	CREATE TABLE MovieXDirector (
		ID INT NOT NULL IDENTITY(1, 1),
		MovieId INT NOT NULL,
		DirectorId INT NOT NULL,
		Comments NVARCHAR(2048) NULL,

		CONSTRAINT Pk_MovieXDirector_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_MovieXDirector_MovieId_Movie_MovieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
		CONSTRAINT Fk_MovieXDirector_DirectorId_Director_DirectorId FOREIGN KEY (DirectorId) REFERENCES Director(DirectorID)
	) 
END
GO

IF OBJECT_ID('MovieXActor') IS NULL
BEGIN
	CREATE TABLE MovieXActor (
		ID INT NOT NULL IDENTITY(1, 1),
		MovieId INT NOT NULL,
		ActorId INT NOT NULL,
		Comments NVARCHAR(2048) NULL,

		CONSTRAINT Pk_MovieXActor_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_MovieXActor_MovieId_Movie_MovieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
		CONSTRAINT Fk_MovieXActor_ActorId_Actor_ActorId FOREIGN KEY (ActorId) REFERENCES Actor(ActorID)
	) 
END
GO

IF OBJECT_ID('MovieXCountry') IS NULL
BEGIN
	CREATE TABLE MovieXCountry (
		ID INT NOT NULL IDENTITY(1, 1),
		MovieId INT NOT NULL,
		CountryId INT NOT NULL,

		CONSTRAINT Pk_MovieXCountry_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_MovieXCountry_MovieId_Movie_MovieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
		CONSTRAINT Fk_MovieXCountry_CountryId_Country_CountryId FOREIGN KEY (CountryId) REFERENCES Country(CountryID)
	) 
END
GO

IF OBJECT_ID('DirectorXCountry') IS NULL
BEGIN
	CREATE TABLE DirectorXCountry (
		ID INT NOT NULL IDENTITY(1, 1),
		DirectorId INT NOT NULL,
		CountryId INT NOT NULL,

		CONSTRAINT Pk_DirectorXCountry_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_DirectorXCountry_DirectorId_Director_DirectorId FOREIGN KEY (DirectorId) REFERENCES Director(DirectorID),
		CONSTRAINT Fk_DirectorXCountry_CountryId_Country_CountryId FOREIGN KEY (CountryId) REFERENCES Country(CountryID)
	) 
END
GO

IF OBJECT_ID('MovieXGenre') IS NULL
BEGIN
	CREATE TABLE MovieXGenre (
		ID INT NOT NULL IDENTITY(1, 1),
		MovieId INT NOT NULL,
		GenreId INT NOT NULL,

		CONSTRAINT Pk_MovieXGenre_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_MovieXGenre_MovieId_Movie_MovieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
		CONSTRAINT Fk_MovieXGenre_GenreId_Genre_GenreId FOREIGN KEY (GenreId) REFERENCES Genre(GenreID)
	) 
END
GO

IF OBJECT_ID('MovieXExtraGenre') IS NULL
BEGIN
	CREATE TABLE MovieXExtraGenre (
		ID INT NOT NULL IDENTITY(1, 1),
		MovieId INT NOT NULL,
		ExtraGenreId INT NOT NULL,

		CONSTRAINT Pk_MovieXExtraGenre_Id PRIMARY KEY (ID),
		CONSTRAINT Fk_MovieXExtraGenre_MovieId_Movie_MovieId FOREIGN KEY (MovieId) REFERENCES Movie(MovieID),
		CONSTRAINT Fk_MovieXExtraGenre_ExtraGenrId_ExtraGenre_ExtraGenreId FOREIGN KEY (ExtraGenreID) 
			REFERENCES ExtraGenre(ExtraGenreID)
	) 
END
GO
