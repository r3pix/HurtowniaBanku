CREATE TABLE [dbo].[Account]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [No] VARCHAR(50) NOT NULL, 
    [ClientId] INT NOT NULL, 
    [AccountTypeId] INT NOT NULL, 
    CONSTRAINT [FK_Account_Client] FOREIGN KEY ([ClientId]) REFERENCES [Client]([Id]),
    CONSTRAINT [FK_Account_AccountType] FOREIGN KEY ([AccountTypeId]) REFERENCES [AccountType]([Id])
)
