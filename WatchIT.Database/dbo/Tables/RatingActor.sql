CREATE TABLE [dbo].[RatingActor]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[ActorId]		BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingActor PRIMARY KEY (Id),
	CONSTRAINT FK_RatingActor_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingActor_Actor FOREIGN KEY (ActorId) REFERENCES Actor(Id),
	CONSTRAINT CHK_RatingActor_Rating CHECK (Rating >= 0 AND Rating <= 10)
)