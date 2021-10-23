CREATE TABLE [dbo].[DirectorXCountry] (
    [Id]         INT IDENTITY (1, 1) NOT NULL,
    [DirectorId] INT NOT NULL,
    [CountryId]  INT NOT NULL,
    CONSTRAINT [Pk_DirectorXCountry_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [Fk_DirectorXCountry_CountryId_Country_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Country] ([CountryId]),
    CONSTRAINT [Fk_DirectorXCountry_DirectorId_Director_DirectorId] FOREIGN KEY ([DirectorId]) REFERENCES [dbo].[Director] ([DirectorId])
);

