CREATE TABLE [dbo].[Actor] (
    [ActorId]  INT             NOT NULL,
    [PersonId] INT             NOT NULL,
    [Comments] NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_Actor_ActorId] PRIMARY KEY CLUSTERED ([ActorId] ASC),
    CONSTRAINT [Fk_Actor_PersonId_Person_PersonId] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

