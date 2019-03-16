/****** Object:  Table [dbo].[Group_Location]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Group_Location](
	[Group_Location_Id] [int] NOT NULL,
	[Group_Id] [int] NOT NULL,
	[Location_Id] [int] NOT NULL,
 CONSTRAINT [PK_Group_Location] PRIMARY KEY CLUSTERED 
(
	[Group_Location_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Group_Location]  WITH CHECK ADD  CONSTRAINT [FK_Group_Location_Group] FOREIGN KEY([Group_Id])
REFERENCES [dbo].[Group] ([Id])
ALTER TABLE [dbo].[Group_Location] CHECK CONSTRAINT [FK_Group_Location_Group]
ALTER TABLE [dbo].[Group_Location]  WITH CHECK ADD  CONSTRAINT [FK_Group_Location_Location] FOREIGN KEY([Group_Location_Id])
REFERENCES [dbo].[Location] ([Id])
ALTER TABLE [dbo].[Group_Location] CHECK CONSTRAINT [FK_Group_Location_Location]
