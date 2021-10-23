CREATE TABLE [dbo].[Director] (
    [DirectorId] INT             NOT NULL,
    [PersonId]   INT             NOT NULL,
    [Comments]   NVARCHAR (2048) NULL,
    CONSTRAINT [Pk_Director_DirectorId] PRIMARY KEY CLUSTERED ([DirectorId] ASC),
    CONSTRAINT [Fk_Director_PersonId_Person_PersonId] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
);

