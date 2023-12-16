﻿CREATE TABLE [dbo].[PersonActor]
(
	[Id]		BIGINT			NOT NULL	IDENTITY(1,1),
	[MediaId]	BIGINT			NOT NULL,
	[PersonId]	INT				NOT NULL,
	[Role]		VARCHAR(200)	NOT NULL,
	CONSTRAINT PK_PersonActor PRIMARY KEY (Id),
	CONSTRAINT FK_PersonActor_Media FOREIGN KEY (MediaId) REFERENCES Media(Id),
	CONSTRAINT FK_PersonActor_Person FOREIGN KEY (PersonId) REFERENCES Person(Id)
)
