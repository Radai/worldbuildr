/****** Object:  Table [dbo].[Character_Item]    Committed by VersionSQL https://www.versionsql.com ******/

SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
CREATE TABLE [dbo].[Character_Item](
	[PC_Item_Id] [int] NOT NULL,
	[PC_Id] [int] NOT NULL,
	[Item_Id] [int] NOT NULL,
 CONSTRAINT [PK_Character_Item] PRIMARY KEY CLUSTERED 
(
	[PC_Item_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Character_Item]  WITH CHECK ADD  CONSTRAINT [FK_Character_Item_Character] FOREIGN KEY([PC_Id])
REFERENCES [dbo].[Character] ([Id])
ALTER TABLE [dbo].[Character_Item] CHECK CONSTRAINT [FK_Character_Item_Character]
ALTER TABLE [dbo].[Character_Item]  WITH CHECK ADD  CONSTRAINT [FK_Character_Item_Item] FOREIGN KEY([Item_Id])
REFERENCES [dbo].[Item] ([Id])
ALTER TABLE [dbo].[Character_Item] CHECK CONSTRAINT [FK_Character_Item_Item]
