CREATE TABLE [dbo].[AccountRefreshToken]
(
	[Id]			UNIQUEIDENTIFIER	NOT NULL,
	[AccountId]		INT					NOT NULL,
	[Key]			VARCHAR(MAX)		NOT NULL,
	[Extendable]	BIT					NOT NULL	DEFAULT(0),
	CONSTRAINT PK_AccountRefreshToken PRIMARY KEY (Id),
	CONSTRAINT FK_AccountRefreshToken_Account FOREIGN KEY (AccountId) REFERENCES Account(Id)
)
