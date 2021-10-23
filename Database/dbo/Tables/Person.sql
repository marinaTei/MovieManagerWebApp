CREATE TABLE [dbo].[Person] (
    [PersonId]  INT            NOT NULL,
    [Name]      NVARCHAR (128) NOT NULL,
    [Surname]   NVARCHAR (128) NOT NULL,
    [BirthDate] DATETIME       NULL,
    CONSTRAINT [Pk_Person_PersonId] PRIMARY KEY CLUSTERED ([PersonId] ASC)
);

