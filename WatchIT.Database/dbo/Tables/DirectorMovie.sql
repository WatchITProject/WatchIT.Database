CREATE TABLE [dbo].[DirectorMovie]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[MovieId]	INT				NOT NULL,
	[PersonId]	INT				NOT NULL,
	CONSTRAINT PK_DirectorMovie PRIMARY KEY (Id),
	CONSTRAINT FK_DirectorMovie_Movie FOREIGN KEY (MovieId) REFERENCES Movie(Id),
	CONSTRAINT FK_DirectorMovie_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)