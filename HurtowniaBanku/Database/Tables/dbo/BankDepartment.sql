CREATE TABLE [dbo].[BankDepartment]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [AddressId] INT NOT NULL, 
    [BankInstanceId] INT NOT NULL, 
    CONSTRAINT [FK_BankDepartment_Address] FOREIGN KEY ([AddressId]) REFERENCES [Address]([Id]), 
    CONSTRAINT [FK_BankDepartment_Instance] FOREIGN KEY ([BankInstanceId]) REFERENCES [BankInstance]([Id])
)
