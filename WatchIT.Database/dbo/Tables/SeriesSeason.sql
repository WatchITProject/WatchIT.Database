CREATE TABLE [dbo].[SeriesSeason]
(
	[Id]			BIGINT			NOT NULL	IDENTITY(1,1),
	[SeriesId]		INT				NOT NULL,
	[Number]		SMALLINT		NULL,
	[Name]			VARCHAR(255)	NULL,
	CONSTRAINT PK_SeriesSeason PRIMARY KEY (Id),
	CONSTRAINT FK_SeriesSeason_Series FOREIGN KEY (SeriesId) REFERENCES Series(Id)
)
