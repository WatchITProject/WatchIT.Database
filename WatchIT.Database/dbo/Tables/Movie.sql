CREATE TABLE [dbo].[Movie]
(
	[Id]				INT				NOT NULL	IDENTITY(1,1),
	[Title]				VARCHAR(256)	NOT NULL,
	[OriginalTitle]		VARCHAR(256)	NULL,
	[Description]		VARCHAR(MAX)	NULL,
	[ReleaseDate]		DATE			NOT NULL,
	[Length]			SMALLINT		NOT NULL,
	CONSTRAINT PK_Movie PRIMARY KEY (Id),
	CONSTRAINT CHK_Movie_Length CHECK ([Length] > 0)
)
