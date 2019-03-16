/****** Object:  Table [dbo].[Country_Location]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Country_Location](
	[Country_Location_Id] [int] NOT NULL,
	[Country_Id] [int] NOT NULL,
	[Location_Id] [int] NOT NULL,
 CONSTRAINT [PK_Country_Location] PRIMARY KEY CLUSTERED 
(
	[Country_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Country_Location]  WITH CHECK ADD  CONSTRAINT [FK_Country_Location_Country] FOREIGN KEY([Country_Id])
REFERENCES [dbo].[Country] ([Id])
ALTER TABLE [dbo].[Country_Location] CHECK CONSTRAINT [FK_Country_Location_Country]
ALTER TABLE [dbo].[Country_Location]  WITH CHECK ADD  CONSTRAINT [FK_Country_Location_Location] FOREIGN KEY([Location_Id])
REFERENCES [dbo].[Location] ([Id])
ALTER TABLE [dbo].[Country_Location] CHECK CONSTRAINT [FK_Country_Location_Location]
