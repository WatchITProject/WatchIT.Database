CREATE TABLE [dbo].[Director]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[MovieId]	INT				NOT NULL,
	[PersonId]	INT				NOT NULL,
	CONSTRAINT PK_Director PRIMARY KEY (Id),
	CONSTRAINT FK_Director_Movie FOREIGN KEY (MovieId) REFERENCES Movie(Id),
	CONSTRAINT FK_Director_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)