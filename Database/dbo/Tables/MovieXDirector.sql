CREATE TABLE [dbo].[MovieXDirector] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [MovieId]    INT             NOT NULL,
    [DirectorId] INT             NOT NULL,
    [Comments]   NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_MovieXDirector_Id] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [Fk_MovieXDirector_DirectorId_Director_DirectorId] FOREIGN KEY ([DirectorId]) REFERENCES [dbo].[Director] ([DirectorID]),
    CONSTRAINT [Fk_MovieXDirector_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieID])
);

