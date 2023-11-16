CREATE TABLE [dbo].[RatingActorSeries]
(
	[Id]			BIGINT		NOT NULL	IDENTITY(1,1),
	[ActorSeriesId]	BIGINT		NOT NULL,
	[AccountId]		INT			NOT NULL,
	[Rating]		TINYINT		NOT NULL,		
	CONSTRAINT PK_RatingActorSeries PRIMARY KEY (Id),
	CONSTRAINT FK_RatingActorSeries_Account FOREIGN KEY (AccountId) REFERENCES Account(Id),
	CONSTRAINT FK_RatingActorSeries_ActorSeries FOREIGN KEY (ActorSeriesId) REFERENCES ActorSeries(Id),
	CONSTRAINT CHK_RatingActorSeries_Rating CHECK (Rating > 0 AND Rating <= 10)
)