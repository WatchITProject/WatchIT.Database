﻿CREATE TABLE [dbo].[MovieGenre]
(
	[Id]		BIGINT		NOT NULL	IDENTITY(1,1),
	[MovieId]	INT			NOT NULL,
	[GenreId]	INT			NOT NULL,
	CONSTRAINT PK_MovieGenre PRIMARY KEY (Id),
	CONSTRAINT FK_MovieGenre_Movie FOREIGN KEY (MovieId) REFERENCES Movie(Id),
	CONSTRAINT FK_MovieGenre_Genre FOREIGN KEY (GenreId) REFERENCES Genre(Id)
)
