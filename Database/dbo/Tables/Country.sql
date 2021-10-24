CREATE TABLE [dbo].[Country] (
    [CountryID]   INT            NOT NULL,
    [CountryName] NVARCHAR (128) NOT NULL,
    [Label]       NVARCHAR (32)  NOT NULL,
    CONSTRAINT [Pk_Country_CountryId] PRIMARY KEY CLUSTERED ([CountryID] ASC)
);

