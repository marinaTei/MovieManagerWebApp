CREATE TABLE [dbo].[ExtraGenre] (
    [ExtraGenreID]   INT            NOT NULL,
    [ExtraGenreName] NVARCHAR (128) NOT NULL,
    [Label]          NVARCHAR (32)  NOT NULL,
    CONSTRAINT [Pk_ExtraGenre_ExtraGenreId] PRIMARY KEY CLUSTERED ([ExtraGenreID] ASC)
);

