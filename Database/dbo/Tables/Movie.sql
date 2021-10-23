CREATE TABLE [dbo].[Movie] (
    [MovieId]       INT             NOT NULL,
    [Label]         NVARCHAR (128)  NOT NULL,
    [Title]         NVARCHAR (512)  NOT NULL,
    [OriginalTitle] NVARCHAR (512)  NULL,
    [ReleaseDate]   DATETIME        NULL,
    [Comments]      NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_Movie_MovieId] PRIMARY KEY CLUSTERED ([MovieId] ASC)
);

