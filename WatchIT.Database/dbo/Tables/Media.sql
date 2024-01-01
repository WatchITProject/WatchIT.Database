CREATE TABLE [dbo].[Media]
(
	[Id]						BIGINT			NOT NULL	IDENTITY(1,1),
	[Title]						VARCHAR(400)	NOT NULL,
	[OriginalTitle]				VARCHAR(400)	NULL,
	[Description]				VARCHAR(MAX)	NULL,
	[ReleaseDate]				DATE			NULL,
	[Length]					SMALLINT		NULL,
	[PosterImage]				VARBINARY(MAX)	NULL,
	[PosterImageContentType]	VARCHAR(100)	NULL,
	CONSTRAINT PK_Media PRIMARY KEY (Id)
)
