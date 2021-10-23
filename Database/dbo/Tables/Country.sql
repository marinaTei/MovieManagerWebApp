CREATE TABLE [dbo].[Country] (
    [CountryId]   INT            NOT NULL,
    [CountryName] NVARCHAR (128) NOT NULL,
    [Label]       NVARCHAR (32)  NOT NULL,
    CONSTRAINT [Pk_Country_CountryId] PRIMARY KEY CLUSTERED ([CountryId] ASC)
);

