/****** Object:  Table [dbo].[Character_Group]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Character_Group](
	[Character_Group_Id] [int] NOT NULL,
	[Character_Id] [int] NOT NULL,
	[Group_Id] [int] NOT NULL,
	[Rank] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Character_Group] PRIMARY KEY CLUSTERED 
(
	[Character_Group_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Character_Group]  WITH CHECK ADD  CONSTRAINT [FK_Character_Group_Character] FOREIGN KEY([Character_Id])
REFERENCES [dbo].[Character] ([Id])
ALTER TABLE [dbo].[Character_Group] CHECK CONSTRAINT [FK_Character_Group_Character]
ALTER TABLE [dbo].[Character_Group]  WITH CHECK ADD  CONSTRAINT [FK_Character_Group_Group] FOREIGN KEY([Group_Id])
REFERENCES [dbo].[Group] ([Id])
ALTER TABLE [dbo].[Character_Group] CHECK CONSTRAINT [FK_Character_Group_Group]
