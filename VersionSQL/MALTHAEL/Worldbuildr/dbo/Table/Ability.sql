/****** Object:  Table [dbo].[Ability]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Ability](
	[Id] [int] NOT NULL,
	[Level] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Ability] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

