﻿CREATE TABLE [dbo].[ActorMovie]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[MovieId]	INT				NOT NULL,
	[PersonId]	INT				NOT NULL,
	[Role]		VARCHAR(200)	NOT NULL,
	CONSTRAINT PK_ActorMovie PRIMARY KEY (Id),
	CONSTRAINT FK_ActorMovie_Movie FOREIGN KEY (MovieId) REFERENCES Movie(Id),
	CONSTRAINT FK_ActorMovie_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)
