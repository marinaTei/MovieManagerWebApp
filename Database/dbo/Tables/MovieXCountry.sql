CREATE TABLE [dbo].[MovieXCountry] (
    [ID]        INT IDENTITY (1, 1) NOT NULL,
    [MovieId]   INT NOT NULL,
    [CountryId] INT NOT NULL,
    CONSTRAINT [Pk_MovieXCountry_Id] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [Fk_MovieXCountry_CountryId_Country_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryID]),
    CONSTRAINT [Fk_MovieXCountry_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieID])
);

