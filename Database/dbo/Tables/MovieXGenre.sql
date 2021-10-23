CREATE TABLE [dbo].[MovieXGenre] (
    [Id]      INT IDENTITY (1, 1) NOT NULL,
    [MovieId] INT NOT NULL,
    [GenreId] INT NOT NULL,
    CONSTRAINT [Pk_MovieXGenre_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_MovieXGenre_GenreId_Genre_GenreId] FOREIGN KEY ([GenreId]) REFERENCES [dbo].[Genre] ([GenreId]),
    CONSTRAINT [Fk_MovieXGenre_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieId])
);

