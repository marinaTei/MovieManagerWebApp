CREATE TABLE [dbo].[Actor] (
    [ActorID]  INT             NOT NULL,
    [PersonId] INT             NOT NULL,
    [Comments] NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_Actor_ActorId] PRIMARY KEY CLUSTERED ([ActorID] ASC),
    CONSTRAINT [Fk_Actor_PersonId_Person_PersonId] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonID])
);

