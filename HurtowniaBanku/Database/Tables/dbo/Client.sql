CREATE TABLE [dbo].[Client]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [FirstName] VARCHAR(50) NOT NULL, 
    [LastName] VARCHAR(50) NOT NULL, 
    [IsAnonimized] BIT NOT NULL, 
    [BasketId] INT NOT NULL, 
    [ClientTypeId] INT NOT NULL, 
    CONSTRAINT [FK_Client_Basket] FOREIGN KEY ([BasketId]) REFERENCES [Basket]([Id]),
    CONSTRAINT [FK_Client_ClientType] FOREIGN KEY ([ClientTypeId]) REFERENCES [ClientType]([Id])
)
