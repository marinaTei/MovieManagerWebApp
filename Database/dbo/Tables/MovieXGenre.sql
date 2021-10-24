CREATE TABLE [dbo].[MovieXGenre] (
    [ID]      INT IDENTITY (1, 1) NOT NULL,
    [MovieId] INT NOT NULL,
    [GenreId] INT NOT NULL,
    CONSTRAINT [Pk_MovieXGenre_Id] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [Fk_MovieXGenre_GenreId_Genre_GenreId] FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genre] ([GenreID]),
    CONSTRAINT [Fk_MovieXGenre_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieID])
);

