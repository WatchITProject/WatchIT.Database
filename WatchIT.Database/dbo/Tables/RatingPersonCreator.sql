CREATE TABLE [dbo].[RatingPersonCreator]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[PersonCreatorId]	BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingPersonCreator PRIMARY KEY (Id),
	CONSTRAINT FK_RatingPersonCreator_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingPersonCreator_PersonCreator FOREIGN KEY (PersonCreatorId) REFERENCES PersonCreator(Id),
	CONSTRAINT CHK_RatingPersonCreator_Rating CHECK (Rating > 0 AND Rating <= 10)
)