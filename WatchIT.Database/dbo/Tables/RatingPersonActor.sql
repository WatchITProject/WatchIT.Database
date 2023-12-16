CREATE TABLE [dbo].[RatingPersonActor]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[PersonActorId]	BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingPersonActor PRIMARY KEY (Id),
	CONSTRAINT FK_RatingPersonActor_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingPersonActor_PersonActor FOREIGN KEY (PersonActorId) REFERENCES PersonActor(Id),
	CONSTRAINT CHK_RatingPersonActor_Rating CHECK (Rating > 0 AND Rating <= 10)
)