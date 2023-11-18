CREATE TABLE [dbo].[AccountRefreshToken]
(
	[Id]				UNIQUEIDENTIFIER	NOT NULL,
	[AccountId]			INT					NOT NULL,
	[ExpirationDate]	DATETIME			NOT NULL
	CONSTRAINT PK_AccountRefreshToken PRIMARY KEY (Id),
	CONSTRAINT FK_AccountRefreshToken_Account FOREIGN KEY (AccountId) REFERENCES Account(Id)
)
