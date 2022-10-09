CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Street] VARCHAR(50) NOT NULL, 
    [No] VARCHAR(10) NOT NULL, 
    [CityId] INT NOT NULL, 
    CONSTRAINT [FK_Address_City] FOREIGN KEY ([CityId]) REFERENCES [City]([Id])
)
