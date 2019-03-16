/****** Object:  Table [dbo].[Character_Equipment]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Character_Equipment](
	[Character_Equipment_Id] [int] NOT NULL,
	[Character_Id] [int] NOT NULL,
	[Equipment_Slot_Id] [int] NOT NULL,
	[Item_Id] [int] NOT NULL,
 CONSTRAINT [PK_Character_Equipment] PRIMARY KEY CLUSTERED 
(
	[Character_Equipment_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Character_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Character_Equipment_Character] FOREIGN KEY([Character_Id])
REFERENCES [dbo].[Character] ([Id])
ALTER TABLE [dbo].[Character_Equipment] CHECK CONSTRAINT [FK_Character_Equipment_Character]
ALTER TABLE [dbo].[Character_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Character_Equipment_Equipment_Slot] FOREIGN KEY([Character_Equipment_Id])
REFERENCES [dbo].[Equipment_Slot] ([Id])
ALTER TABLE [dbo].[Character_Equipment] CHECK CONSTRAINT [FK_Character_Equipment_Equipment_Slot]
ALTER TABLE [dbo].[Character_Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Character_Equipment_Item] FOREIGN KEY([Equipment_Slot_Id])
REFERENCES [dbo].[Item] ([Id])
ALTER TABLE [dbo].[Character_Equipment] CHECK CONSTRAINT [FK_Character_Equipment_Item]
