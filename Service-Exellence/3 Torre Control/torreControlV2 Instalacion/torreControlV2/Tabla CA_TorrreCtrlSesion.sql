IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.CA_TorrreCtrlSesion') AND Type = 'U')
  DROP TABLE dbo.CA_TorrreCtrlSesion
GO
CREATE TABLE [dbo].[CA_TorrreCtrlSesion] (
[session_id] varchar(255) COLLATE Modern_Spanish_CI_AS NOT NULL ,
[ip_address] varchar(255) COLLATE Modern_Spanish_CI_AS NULL ,
[user_agent] varchar(255) COLLATE Modern_Spanish_CI_AS NULL ,
[last_activity] bigint NULL ,
[user_data] ntext COLLATE Modern_Spanish_CI_AS NULL ,
CONSTRAINT [PK__CA_Torrre__69B13FDC141780DD] PRIMARY KEY ([session_id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO