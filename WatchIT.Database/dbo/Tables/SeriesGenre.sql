CREATE TABLE [dbo].[SeriesGenre]
(
	[Id]		BIGINT		NOT NULL	IDENTITY(1,1),
	[SeriesId]	INT			NOT NULL,
	[GenreId]	INT			NOT NULL,
	CONSTRAINT PK_SeriesGenre PRIMARY KEY (Id),
	CONSTRAINT FK_SeriesGenre_Movie FOREIGN KEY (SeriesId) REFERENCES Series(Id),
	CONSTRAINT FK_SeriesGenre_Genre FOREIGN KEY (GenreId) REFERENCES Genre(Id)
)
