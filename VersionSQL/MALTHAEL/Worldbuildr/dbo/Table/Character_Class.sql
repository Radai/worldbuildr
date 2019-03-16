/****** Object:  Table [dbo].[Character_Class]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Character_Class](
	[Character_Class_Id] [int] NOT NULL,
	[Character_Id] [int] NOT NULL,
	[Class_Id] [int] NOT NULL,
	[Level] [int] NOT NULL
) ON [PRIMARY]

ALTER TABLE [dbo].[Character_Class]  WITH CHECK ADD  CONSTRAINT [FK_Character_Class_Character] FOREIGN KEY([Character_Id])
REFERENCES [dbo].[Character] ([Id])
ALTER TABLE [dbo].[Character_Class] CHECK CONSTRAINT [FK_Character_Class_Character]
ALTER TABLE [dbo].[Character_Class]  WITH CHECK ADD  CONSTRAINT [FK_Character_Class_Class] FOREIGN KEY([Class_Id])
REFERENCES [dbo].[Class] ([Id])
ALTER TABLE [dbo].[Character_Class] CHECK CONSTRAINT [FK_Character_Class_Class]
