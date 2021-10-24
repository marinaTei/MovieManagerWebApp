CREATE TABLE [dbo].[MovieXExtraGenre] (
    [ID]           INT IDENTITY (1, 1) NOT NULL,
    [MovieId]      INT NOT NULL,
    [ExtraGenreId] INT NOT NULL,
    CONSTRAINT [Pk_MovieXExtraGenre_Id] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [Fk_MovieXExtraGenre_ExtraGenrId_ExtraGenre_ExtraGenreId] FOREIGN KEY ([ExtraGenreId]) REFERENCES [dbo].[ExtraGenre] ([ExtraGenreId]),
    CONSTRAINT [Fk_MovieXExtraGenre_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieID])
);

