SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[config_archivo]
( 
	id_cnfg_arch [int] IDENTITY(1,1) NOT NULL,
	id_sucursal int NOT NULL UNIQUE,
	dirctorio_img_inspeccion varchar(100),
	dirctorio_img_multipts varchar(100),
	alias_vhost varchar(50),
	CONSTRAINT fk_configArch_suc FOREIGN KEY (id_sucursal) REFERENCES sucursal (id),
	CONSTRAINT AK_id_sucursal UNIQUE(id_sucursal), 
	PRIMARY KEY CLUSTERED 
(
	[id_cnfg_arch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
