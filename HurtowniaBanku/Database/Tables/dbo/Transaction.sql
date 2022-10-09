CREATE TABLE [dbo].[Transaction]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] VARCHAR(MAX) NOT NULL, 
    [Amount] FLOAT NOT NULL, 
    [IsPreferential] BIT NOT NULL, 
    [SourceAccountId] INT NOT NULL,
    [DestinationAccountId] INT NOT NULL,
    [BankDepartmentId] INT NOT NULL,
    [CurrencyId] INT NOT NULL,
    [TimeframeId] INT NOT NULL,
    CONSTRAINT [FK_Client_S_Account] FOREIGN KEY ([SourceAccountId]) REFERENCES [Account]([Id]),
    CONSTRAINT [FK_Client_D_Account] FOREIGN KEY ([DestinationAccountId]) REFERENCES [Account]([Id]),
    CONSTRAINT [FK_Client_BankDepartment] FOREIGN KEY ([BankDepartmentId]) REFERENCES [BankDepartment]([Id]),
    CONSTRAINT [FK_Client_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [Currency]([Id]),
    CONSTRAINT [FK_Client_Timeframe] FOREIGN KEY ([TimeframeId]) REFERENCES [Timeframe]([Id])
)
