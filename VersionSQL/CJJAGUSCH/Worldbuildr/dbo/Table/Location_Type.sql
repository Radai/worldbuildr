/****** Object:  Table [dbo].[Location_Type]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Location_Type](
	[Name] [varchar](50) NOT NULL,
	[Location_Type_Id] [int] NOT NULL,
 CONSTRAINT [PK_Location_Type] PRIMARY KEY CLUSTERED 
(
	[Location_Type_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

