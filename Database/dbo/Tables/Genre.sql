CREATE TABLE [dbo].[Genre] (
    [GenreID]       INT            NOT NULL,
    [GenreName]     NVARCHAR (128) NOT NULL,
    [Label]         NVARCHAR (32)  NOT NULL,
    [ParentGenreId] INT            NULL,
    CONSTRAINT [Pk_Genre_GenreId] PRIMARY KEY CLUSTERED ([GenreID] ASC),
    CONSTRAINT [Fk_Genre_ParentGenreId_GenreId] FOREIGN KEY ([ParentGenreId]) REFERENCES [dbo].[Genre] ([GenreID])
);

