CREATE TABLE [dbo].[MovieXActor] (
    [Id]       INT             IDENTITY (1, 1) NOT NULL,
    [MovieId]  INT             NOT NULL,
    [ActorId]  INT             NOT NULL,
    [Comments] NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_MovieXActor_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_MovieXActor_ActorId_Actor_ActorId] FOREIGN KEY ([ActorId]) REFERENCES [dbo].[Actor] ([ActorId]),
    CONSTRAINT [Fk_MovieXActor_MovieId_Movie_MovieId] FOREIGN KEY ([MovieId]) REFERENCES [dbo].[Movie] ([MovieId])
);

