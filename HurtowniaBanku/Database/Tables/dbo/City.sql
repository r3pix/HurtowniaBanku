CREATE TABLE [dbo].[City]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [CountryId] INT NOT NULL, 
    CONSTRAINT [FK_City_Country] FOREIGN KEY ([CountryId]) REFERENCES [Country]([Id])
)
