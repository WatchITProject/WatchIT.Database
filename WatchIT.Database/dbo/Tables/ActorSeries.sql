CREATE TABLE [dbo].[ActorSeries]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[SeriesId]	INT				NOT NULL,
	[PersonId]	INT				NOT NULL,
	[Role]		VARCHAR(200)	NOT NULL,
	CONSTRAINT PK_ActorSeries PRIMARY KEY (Id),
	CONSTRAINT FK_ActorSeries_Movie FOREIGN KEY (SeriesId) REFERENCES Series(Id),
	CONSTRAINT FK_ActorSeries_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)