CREATE TABLE [dbo].[DirectorSeries]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[SeriesId]	INT				NOT NULL,
	[PersonId]	INT				NOT NULL,
	CONSTRAINT PK_DirectorSeries PRIMARY KEY (Id),
	CONSTRAINT FK_DirectorSeries_Movie FOREIGN KEY (SeriesId) REFERENCES Series(Id),
	CONSTRAINT FK_DirectorSeries_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)