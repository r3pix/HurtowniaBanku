CREATE PROCEDURE [dbo].[Anonimize]
AS
	UPDATE [dbo].[Client]
	SET FirstName = 'XXXXXX',
		LastName = 'XXXXXX',
		IsAnonimized = 1
	WHERE IsAnonimized = 0;
RETURN 0
