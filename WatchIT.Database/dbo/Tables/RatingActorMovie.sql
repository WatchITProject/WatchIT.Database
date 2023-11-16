CREATE TABLE [dbo].[RatingActorMovie]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[ActorMovieId]	BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingActorMovie PRIMARY KEY (Id),
	CONSTRAINT FK_RatingActorMovie_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingActorMovie_ActorMovie FOREIGN KEY (ActorMovieId) REFERENCES ActorMovie(Id),
	CONSTRAINT CHK_RatingActorMovie_Rating CHECK (Rating > 0 AND Rating <= 10)
)